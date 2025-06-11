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
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
          <button class="btn btn-outline-success" type="submit">Search</button>
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
                branch: JSON.parse(this.loadFromLocalStorageByKey('branch') || [])

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
            this.uniqueOffcanvas.hide();
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
            if (this.dcarts.data.length === 0) {
                alert('Keranjang masih kosong, silakan pilih menu terlebih dahulu');
                return;
            }
            this.$inertia.post('/order', { carts: this.dcarts.data, detail: this.detailCart }, {
                onSuccess: () => {

                }
            });
        },
        getDetailCart() {
            this.detailCart.qty = this.dcarts.data.reduce((total, item) => total + item.quantity, 0);
            this.detailCart.taxes = this.dcarts.data.reduce((total, item) => total + (item.price * item.quantity * 0.001), 0);
            this.detailCart.point = this.dcarts.data.reduce((total, item) => total + (item.quantity * 10), 0);
            this.detailCart.total = this.dcarts.data.reduce((total, item) => total + (item.price_qty), 0);
            localStorage.setItem('cart', JSON.stringify(this.dcarts.data));
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
        // this.loadFromLocalStorage()
        // this.getDetailCart();
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