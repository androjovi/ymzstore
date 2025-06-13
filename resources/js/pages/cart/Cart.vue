<script setup>
import { Head, Link } from '@inertiajs/vue3';
import { GitBranch } from 'lucide-vue-next';
</script>
<template>
    <Head title="Menu"></Head>
    <nav class="navbar bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="/">Nge•Teh</a>
        <form class="d-flex" role="search">
          <button @click="showOrderCart()" type="button" class="btn btn-sm btn-outline-secondary position-relative">
            <i class="pi pi-shopping-cart" style="font-size: 1.5rem"></i>
            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                {{ dcarts.data.length }}
                <span class="visually-hidden">unread messages</span>
            </span>
            </button>&nbsp;
          <input class="form-control me-2" style="padding: 0px;" type="search" placeholder="Search" aria-label="Search"/>
        </form>
      </div>
    </nav>
    <div class="container">
        <div class="row no-gutters mt-3">
            <div class="col-6">
                <button class="btn border border-danger"><i class="pi pi-shopping-bag"></i> {{ detailCart.branch.branch_type }}</button>
            </div>
            <div class="col-6 text-end">
                <button class="btn border border-white">Change <i class="pi pi-chevron-down"></i></button>
            </div>
            <div class="col-12 mt-3">
                <small>Customize your order at the counter</small>
            </div>
        </div>
        <hr>
        <div class="row no-gutters">
            <div class="col-6">
                Phone Number
            </div>
            <div class="col-6 text-end">
                <a href="">or Sign in</a>
            </div>
            <div class="col-12">
                <i class="pi pi-phone"></i> 08123456789
            </div>
        </div>
        <hr>
        <div class="row no-gutters">
            <div class="col-12">
                <h3>Cabang</h3>
                <h6>{{ detailCart.branch.branch_name }}</h6>
            </div>
        </div>
        <hr style="border-top: dotted 2px;" />
        <div v-for="(cart, index) in dcarts.data" class="card mb-3">
            <div class="row no-gutters">
              <div class="col-auto">
                <img style="width: 120px; height: 120px; object-fit: cover;" :src="cart.stock_thumbnail" class="img-fluid" alt="">
              </div>
              <div class="col">
                <div class="card-block">
                  <h6 class="card-title">{{ cart.stock_name }}</h6>
                  <p class="card-text">Rp {{ num2hum(cart.price_qty) }}</p>
                  <div class="input-group w-auto justify-content-end align-items-center">
                    <input @click="decrement(index)" type="button" value="-" class="button-minus border rounded-circle  icon-shape icon-sm mx-1 ">
                    <input type="number" step="1" :max="cart.stock_quantity" v-model.number="cart.quantity" name="quantity" class="quantity-field border-0 text-center w-25">
                    <input @click="increment(index)" type="button" value="+" class="button-plus border rounded-circle icon-shape icon-sm ">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="d-flex justify-content-between align-items-center">
            <!-- <div class="text-muted">Total: Rp {{ dcarts.data.reduce((total, item) => total + (item.price * item.quantity), 0) }}</div>
            <button class="btn btn-primary" @click="uniqueOffcanvas.hide(); goToPayment();">Selesai</button> -->
          </div>
          <div class="row no-gutters">
            <div class="col-12">
                <textarea class="form-control" v-model="detailCart.notes" rows="3" placeholder="Tambahkan catatan untuk toko"></textarea>
            </div>
        </div>
      <hr>
      <div class="row no-gutters">
        <div class="col-6">
            <p>Product Quantity</p>
        </div>
        <div class="col-6 text-end">
            <p>{{ detailCart.qty }} Items</p>
        </div>
        <div class="col-6">
            <p>Total Taxes</p>
        </div>
        <div class="col-6 text-end">
            <p>Rp {{ num2hum(detailCart.taxes) }}</p>
        </div>
        <div class="col-6">
            <p>Point Earned</p>
        </div>
        <div class="col-6 text-end">
            <p>+{{ detailCart.point }}</p>
        </div>
        <hr style="border-top: dotted 2px;">
        <div class="col-6">
            <p>Total Bill</p>
        </div>
        <div class="col-6 text-end">
            <p>Rp {{ num2hum(detailCart.total) }}</p>
        </div>
    </div>

    <button class="btn btn-primary w-100 mb-2" @click="goToPayment()">Buy & Pickup</button>
    </div>
    <div class="modal" id="metodePembayaran" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Choose Payment Method</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="container-fluid">
                <div class="row no-gutter">
                    <div class="col-6">
                        <button type="button" class="btn btn-outline-info w-100" @click="detailCart.payBy = 'qris';hideModal(); goToPayment();">QRIS</button>
                    </div>
                    <div class="col-6">
                        <button type="button" class="btn btn-outline-info w-100" @click="detailCart.payBy = 'cash';hideModal(); goToPayment();">CASH</button>
                    </div>
                </div>
            </div>
          </div>
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
        stocks: Object,
        branchs: Object,
    },
    data() {
        return {
            searchQuery: '',
            images: [
              'https://placehold.co/1440x470?text=Hello+World+1',
              'https://placehold.co/1440x470?text=Hello+World+2',
              'https://placehold.co/1440x470?text=Hello+World+3'
            ],
            dstocks: {
                show: true,
                data: []
            },
            dbranchs: {
                show: false,
                data: this.branchs
            },
            uniqueModal: null,
            uniqueOffcanvas: null,
            dcarts: {
                show: false,
                data: []
            },
            detailCart: {
                qty: 0,
                taxes: 0,
                point: 0,
                total: 0,
                notes: '',
                branch: JSON.parse(this.loadFromLocalStorageByKey('branch') || []),
                payBy: null
            }
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
        showMenu(branch) {
          console.log(branch);
            this.$inertia.get('/get-stock/' + branch.id, { }, {
              replace: true,
              preserveState: true,
              preserveScroll: true,
              only: ['data'],
              onSuccess: (data) => {
                    data = data.props.data;
                    this.dstocks.data = data;
                    this.dstocks.show = true;
                    alert("Terimakasih telah memilih, silakan pilih menu yang anda inginkan");
                    this.uniqueModal.hide();
              }
            });

        },
        orderingCart(stock){
          this.uniqueOffcanvas = new Offcanvas(document.getElementById("offcanvasBottom"));
          this.uniqueOffcanvas.show();
          this.save2LocalStorage(stock);
        },
        save2LocalStorage(stock) {
            let readStocks = this.loadFromLocalStorage();
            let a = [];
            if (readStocks.length > 0) {
                a = JSON.parse(readStocks);
            }
            const existingStockIndex = a.findIndex(item => item.id === stock.id);
            if (existingStockIndex !== -1) {
              if (a[existingStockIndex].quantity >= a[existingStockIndex].stock_quantity) {
                this.dcarts.data = a;
                alert('Stok tidak mencukupi, silakan kurangi jumlah pesanan');
                return;
              }
                // a[existingStockIndex].quantity += stock.quantity;
                // localStorage.setItem('cart', JSON.stringify(a));
                // return this.dcarts.data = a;
              return
            }
            a.push(stock);
            localStorage.setItem('cart', JSON.stringify(a));
            this.dcarts.data = a;
        },
        loadFromLocalStorage() {
            const stocks = localStorage.getItem('cart')||[];
            this.dcarts.data = JSON.parse(stocks);
            return stocks
        },
        loadFromLocalStorageByKey(key) {
            const data = localStorage.getItem(key)||[];
            return data
        },
        deleteFromLocalStorage(index) {
            let readStocks = this.loadFromLocalStorage();
            let a = [];
            if (readStocks.length > 0) {
                a = JSON.parse(readStocks);
            }
            a.splice(index, 1);
            localStorage.setItem('cart', JSON.stringify(a));
            this.dcarts.data = a;
        },
        clearLocalStorage() {
            localStorage.removeItem('cart');
            this.dcarts.data = [];
        },
        increment(index){
            if (this.dcarts.data[index].quantity < this.dcarts.data[index].stock_quantity) {
                this.dcarts.data[index].quantity++;
                this.dcarts.data[index].price_qty = this.dcarts.data[index].price * this.dcarts.data[index].quantity;
            }
        },
        decrement(index){
            if (this.dcarts.data[index].quantity > 1) {
                this.dcarts.data[index].quantity--;
                this.dcarts.data[index].price_qty = this.dcarts.data[index].price * this.dcarts.data[index].quantity;
            } else {
                if (this.dcarts.data.length === 1) {
                    alert('Keranjang tidak boleh kosong');
                    return;
                }
                this.deleteFromLocalStorage(index);
            }
        },
        goToPayment() {
            if (this.detailCart.payBy === null) {
                this.uniqueModal = new Modal(document.getElementById("metodePembayaran"),{ keyboard: false });
                this.uniqueModal.show();
                return;
            }

            if (this.dcarts.data.length === 0) {
                alert('Keranjang masih kosong, silakan pilih menu terlebih dahulu');
                return;
            }
            this.$inertia.post('/order', { carts: this.dcarts.data, detail: this.detailCart }, {
                onSuccess: () => {
                    this.clearLocalStorage()
                }
            });
        },
        getDetailCart() {
            this.detailCart.qty = this.dcarts.data.reduce((total, item) => total + item.quantity, 0);
            this.detailCart.taxes = this.dcarts.data.reduce((total, item) => total + (item.price * item.quantity * 0.001), 0);
            this.detailCart.point = this.dcarts.data.reduce((total, item) => total + (item.quantity * 10), 0);
            this.detailCart.total = this.dcarts.data.reduce((total, item) => total + (item.price_qty), 0);
            localStorage.setItem('cart', JSON.stringify(this.dcarts.data));
        },
        hideModal() {
            if (this.uniqueModal) {
                this.uniqueModal.hide();
            }
        },
        num2hum(num) {
            num = parseFloat(num) || 0
            return num.toLocaleString('en-US', { maximumFractionDigits: 2 })
        }
    },
    computed: {
      groupedStocks() {
        if (!this.dstocks.data || this.dstocks.data.length === 0) {
          return {}
        }

        const groups = {}
        this.dstocks.data.forEach(stock => {
          const category = stock.category_name || 'Lain-lain'
          if (!groups[category]) {
            groups[category] = []
          }
          groups[category].push(stock)
        })
        return groups
      },
    },
    mounted() {
        this.loadFromLocalStorage()
        this.getDetailCart();
        console.log(this.appName)
    },
    watch: {
        dcarts: {
            handler() {
                this.getDetailCart();
            },
            deep: true
        }
    }
}
</script>