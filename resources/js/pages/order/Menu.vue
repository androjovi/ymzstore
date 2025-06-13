<script setup>
import { Head, Link } from '@inertiajs/vue3';
import { GitBranch } from 'lucide-vue-next';
</script>
<template>
    <Head title="Menu">
    </Head>
    <nav class="navbar bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="/">MyStore</a>
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
  <div id="carouselExampleIndicators" class="carousel slide" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div v-for="(image, index) in images" :class="['carousel-item', { active: index === 0 }]" :key="index">
      <img style="width:1440px; height:440px;object-fit: fill;" :src="image" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<nav class="nav mt-5">
    <a class="btn btn-outline-info" @click="showData('menu')">Menu</a>
    &nbsp;
  <a class="btn btn-outline-success" @click="showBranch()">List Cabang</a>
</nav>
<hr>
<div class="list-group" v-if="dstocks.show">
    <div v-for="(stocks, categoryName) in groupedStocks" :key="categoryName">
      <h4>{{ categoryName }}</h4> <div class="list-group mb-4">
        <a v-for="(stock, index) in stocks" :key="stock.id" href="#" class="list-group-item list-group-item-action" aria-current="true" @click="orderingCart(stock)">
          <div class="d-flex">
            <img :src="stock.stock_thumbnail" alt="Produk" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
            <div class="flex-grow-1 d-flex flex-column justify-content-between">
              <div>
                <h5 class="mb-1">{{ stock.stock_name }}</h5>
              </div>
              <div class="text-muted fw-bold">Rp {{ num2hum(stock.price) }}</div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
<hr>
<div class="list-group" v-if="dbranchs.show">
  <a v-for="(branch, index) in dbranchs.data" href="#" class="list-group-item list-group-item-action" aria-current="true">
    <div class="d-flex">
      <img :src="branch.stock_thumbnail" alt="Produk" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
      <div class="flex-grow-1 d-flex flex-column justify-content-between">
        <h6 class="">{{ branch.branch_name }}</h6>
        <div class="text-muted">{{ branch.branch_address }}</div>
        <div class="text-muted">{{ branch.branch_phone }}</div>
        <div class="text-muted">{{ branch.branch_type }}</div>
      </div>
    </div>
  </a>
</div>
</div>

<div class="modal" id="exampleModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Selamat datang, Pilih cabang terdekat kamu dulu</h5>
        <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
      </div>
      <div class="modal-body">
        <div class="container-fluid">
          <a v-for="(branch, index) in dbranchs.data" href="#" class="list-group-item list-group-item-action mb-2" aria-current="true" @click="showMenu(branch)">
            <div class="d-flex">
              <img :src="branch.branch_thumbnail" alt="Cabang alt" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
              <div class="flex-grow-1 d-flex flex-column justify-content-between">
                <h6 class="fw-bold">{{ branch.branch_name }} <small class="fw-light" style="font-size: 10px">1.8km</small></h6>
                <div class="text-muted small"><i class="pi pi-map-marker"></i> {{ branch.branch_address }}</div>
                <div class="text-muted small"><i class="pi pi-phone"></i> {{ branch.branch_phone }}</div>
                <div class="text-muted small">{{ branch.branch_type }}</div>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="offcanvas offcanvas-bottom h-75" tabindex="-1" id="offcanvasBottom" aria-labelledby="offcanvasBottomLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasBottomLabel">Tambah Keranjang</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body small">
    <div class="container">
      <div v-for="(cart, index) in dcarts.data" class="card mb-3">
        <div class="row no-gutters">
            <div class="col-auto">
                <img style="width: 120px; height: 120px; object-fit: cover;" :src="cart.stock_thumbnail" class="img-fluid" alt="">
            </div>
            <div class="col">
                <div class="card-block px-2">
                    <h4 class="card-title">{{ cart.stock_name }}</h4>
                    <p class="card-text">{{ cart.stock_description_cut }}</p>
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
    <div class="d-flex justify-content-between align-items-center">
      <div class="text-muted">Total: Rp {{ num2hum(dcarts.data.reduce((total, item) => total + (item.price * item.quantity), 0)) }}</div>
      <button class="btn btn-danger btn-sm" @click="clearLocalStorage">Hapus Keranjang</button>
      <button class="btn btn-primary btn-sm" @click="uniqueOffcanvas.hide(); goToPayment();">Selesai</button>
    </div>
    </div>
  </div>
</div>

</template>
<script>
import { Modal, Offcanvas } from "bootstrap"
import uniqid from 'uniqid';
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
              '/storage/images/promogambar1.png',
              '/storage/images/promogambar2.png',
              '/storage/images/promogambar3.png'
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
                    this.saveItemLocalStorage('branch', JSON.stringify(branch));
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
            console.log(this.dcarts.data);
            this.dcarts.data = a;
        },
        loadFromLocalStorage() {
            const stocks = localStorage.getItem('cart')||[];
            return stocks
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
        saveItemLocalStorage(key, value) {
          localStorage.setItem(key, value);
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
                this.deleteFromLocalStorage(index);
            }
        },
        goToPayment() {
            if (this.dcarts.data.length === 0) {
                alert('Keranjang masih kosong, silakan pilih menu terlebih dahulu');
                return;
            }
            this.$inertia.get('/cart', { }, {
                onSuccess: () => {
                }
            });
        },
        num2hum(num) {
            num = parseFloat(num) || 0
            return num.toLocaleString('en-US', { maximumFractionDigits: 2 })
        },
        showBranch() {
            this.uniqueModal.show();
        },
        showOrderCart(){
            if (this.dcarts.data.length === 0) {
                alert('Keranjang masih kosong, silakan pilih menu terlebih dahulu');
                return;
            }
            this.uniqueOffcanvas = new Offcanvas(document.getElementById("offcanvasBottom"));
            this.uniqueOffcanvas.show();
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
      this.uniqueModal = new Modal(document.getElementById("exampleModal"),{ keyboard: false });
      this.uniqueModal.show();
      if (this.loadFromLocalStorage().length > 0) {
        this.dcarts.data = JSON.parse(this.loadFromLocalStorage());
      }
    }
}
</script>