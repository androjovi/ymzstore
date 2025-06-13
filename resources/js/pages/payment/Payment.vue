<script setup>
import { Head, Link } from '@inertiajs/vue3';
import { GitBranch } from 'lucide-vue-next';
</script>
<template>
    <Head title="Menu"></Head>
    <nav class="navbar bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand">MyStore</a>
        <form class="d-flex" role="search">
            <input class="form-control me-2" style="padding: 0px;" type="search" placeholder="Search" aria-label="Search"/>
          <!-- <button class="btn btn-outline-success" type="submit">Search</button> -->
        </form>
      </div>
    </nav>
    <div class="container" v-if="view === 'qris'">
        <div class="row no-gutters mt-3">
            <div class="col-12">
                <p class="text-center">Please make payment before <b>{{ formattedTime }}</b></p>
            </div>
        </div>
        <div class="row no-gutters mt-3">
            <div class="col-12" align="center">
                <img class="img-fluid " width="300" :src="'data:image/png;base64,' + detailPayment.barcode">
            </div>
            <div class="col-12 mt-4" align="center">
                <p>Total Payment: <b>Rp {{ num2hum(detailPayment.totalPayment) }}</b> </p>
                <p>Order Code<br><b>{{ detailPayment.paymentCode }}</b></p>
                <p>Orders will not be processed until you pay this QR Code</p>
            </div>
            <div class="col-12 mt-4" align="center">
                <button class="btn btn-primary" @click="view = 'qris'; confirmPayment()">Check Status Payment</button>
            </div>
        </div>
    </div>

    <div class="container" v-if="view === 'cash'">
        <div class="row no-gutters mt-3">
            <div class="col-12">
                <p class="text-center">Please make payment before <b>{{ formattedTime }}</b></p>
            </div>
        </div>
        <div class="row no-gutters mt-3">
            <div class="col-12" align="center">
                <img class="img-fluid " width="300" :src="'data:image/png;base64,' + detailPayment.barcode">
            </div>
            <div class="col-12 mt-4" align="center">
                <p>Total Payment: <b>Rp {{ num2hum(detailPayment.totalPayment) }}</b> </p>
                <p>Order Code<br><b>{{ detailPayment.paymentCode }}</b></p>
                <p>Orders will not be processed until you show the this QR Code to the cashier<br>Payment can only be made at the cashier</p>
            </div>
            <div class="col-12 mt-4" align="center">
                <button class="btn btn-primary" @click="view = 'cash'; confirmPayment()">Check Status Payment</button>
            </div>
        </div>
    </div>
    <div class="container" v-if="view === 'done'">
        <div class="row no-gutters mt-3">
            <div class="col-12">
                <h3 class="text-center">Done payment</h3>
            </div>
        </div>
        <div class="row no-gutters mt-3">
            <div class="col-12" align="center">
                <img class="img-fluid" width=150 src="https://cdn2.iconfinder.com/data/icons/greenline/512/check-512.png">
            </div>
            <div class="col-12 mt-4" align="center">
                <p>Order Code<br><b>{{ detailPayment.paymentCode }}</b></p>
                <p>Show order code to the cashier</p>
            </div>
            <div class="col-12 mt-4" align="center">
                <button class="btn btn-primary" @click="downloadPaymentConfirmation()">Print</button>
                &nbsp;
                <Link class="btn btn-success" href="/">Order Again</Link>
            </div>
        </div>
    </div>
  </template>
<script>
import { Modal, Offcanvas } from "bootstrap"
import axios from "axios";
export default {
    name: 'Menu',
    props: {
        data: Object,
    },
    data() {
        return {
            searchQuery: '',
            images: [
              'https://placehold.co/1440x470?text=Hello+World+1',
              'https://placehold.co/1440x470?text=Hello+World+2',
              'https://placehold.co/1440x470?text=Hello+World+3'
            ],
            uniqueModal: null,
            uniqueOffcanvas: null,
            detailPayment: {
                invoice: this.data.invoice || '',
                paymentCode: this.data.payment_code || '',
                totalPayment: this.data.total_payment || 0,
                payBy: this.data.payBy || '',
                expired: this.data.expired || '',
                barcode: this.data.barcode || ''
            },
            view: this.data.payBy,
            duration: 20 * 60,
            remainingSeconds: 20 * 60,
            formattedTime: '00:20:00',
        };
    },
    methods: {
        notify() {
            alert('Notification clicked!');
        },
        showData(type) {
            if (type === 'menu') {
                this.dstocks.show = false;
                this.dbranchs.show = false;
            } else if (type === 'branch') {
              this.dstocks.show = false;
              this.dbranchs.show = true;
            }
        },
        confirmPayment() {
            this.$inertia.post('/payment-confirmation', { detailPayment: this.detailPayment }, {
                onSuccess: () => {
                    this.view = 'done';
                }
            });
        },
        num2hum(num) {
            num = parseFloat(num) || 0
            return num.toLocaleString('en-US', { maximumFractionDigits: 2 })
        },
        async downloadPaymentConfirmation() {
            const response = await axios.post(
                route('payment.pdf'),
                { detailPayment: this.detailPayment },
                { responseType: 'blob' }
            )

            // Buat file blob dan trigger download
            const url = window.URL.createObjectURL(new Blob([response.data]))
            const link = document.createElement('a')
            link.href = url
            link.setAttribute('download', `Invoice-${this.detailPayment.invoice}.pdf`)
            document.body.appendChild(link)
            link.click()
            // window.open(route('payment.pdf'), '_blank');
        },
        formatTime(totalSeconds) {
            console.log(totalSeconds)
            const hours = Math.floor(totalSeconds / 3600).toString().padStart(2, '0')
            const minutes = Math.floor((totalSeconds % 3600) / 60).toString().padStart(2, '0')
            const seconds = Math.floor(totalSeconds % 60).toString().padStart(2, '0')
            return `${hours}:${minutes}:${seconds}`
        }
    },
    mounted() {
        if (this.detailPayment.payBy == 'cash'){
            this.remainingSeconds = 120 * 60
            this.formattedTime = '01:60:60'
        }
        let interval = setInterval(() => {
            if (this.remainingSeconds > 0) {
                this.remainingSeconds--
                this.formattedTime = this.formatTime(this.remainingSeconds)
            } else {

            }
        }, 1000)
    }
}
</script>