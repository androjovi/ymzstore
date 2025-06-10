<script setup>
import { Head, Link } from '@inertiajs/vue3';
import { GitBranch } from 'lucide-vue-next';
</script>
<template>
    <Head title="Menu">
    </Head>
    <nav class="navbar bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand">MyStore</a>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
          <button class="btn btn-outline-success" type="submit">Search</button>
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
      <img :src="image" class="d-block w-100" alt="...">
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

<!-- <nav class="nav mt-5">
  <a class="nav-link active" @click="showData('menu')">Menu</a>
  <a class="nav-link" @click="showData('branch')">Cabang</a>
  <a class="nav-link" href="#">Promo</a>
</nav> -->
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
              <div class="text-muted fw-bold">Rp {{ stock.price }}</div>
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
          <a v-for="(branch, index) in dbranchs.data" href="#" class="list-group-item list-group-item-action" aria-current="true" @click="showMenu(branch)">
            <div class="d-flex">
              <img :src="branch.branch_thumbnail" alt="Cabang alt" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
              <div class="flex-grow-1 d-flex flex-column justify-content-between">
                <h6 class="fw-bold">{{ branch.branch_name }} <small class="fw-light" style="font-size: 10px">400km</small></h6>
                <div class="text-muted"><i class="pi pi-map-marker"></i> {{ branch.branch_address }}</div>
                <div class="text-muted"><i class="pi pi-phone"></i> {{ branch.branch_phone }}</div>
                <div class="text-muted small">{{ branch.branch_type }}</div>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

</template>
<script>
import { Modal } from "bootstrap"
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
            uniqueModal: null
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
          alert("Anda memilih " + stock.stock_name + " dengan harga Rp " + stock.price);
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
    }
}
</script>