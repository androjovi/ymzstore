<script setup>
import { Head, Link } from '@inertiajs/vue3';
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

<nav class="nav mt-5">
  <a class="nav-link active" aria-current="page" href="#">Menu</a>
  <a class="nav-link" href="#">Cabang</a>
  <a class="nav-link" href="#">Promo</a>
</nav>
<hr>
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action" aria-current="true">
    <div class="d-flex">
      <img src="https://placehold.co/600x400?text=Hello+World+1" alt="Produk" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
      <div class="flex-grow-1 d-flex flex-column justify-content-between">
        <div>
          <h5 class="mb-1">Judul Produk</h5>
        </div>
        <div class="text-muted fw-bold">Rp 150.000</div>
      </div>
    </div>
  </a>
  <a href="#" class="list-group-item list-group-item-action" aria-current="true">
    <div class="d-flex">
      <img src="https://placehold.co/600x400?text=Hello+World+1" alt="Produk" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
      <div class="flex-grow-1 d-flex flex-column justify-content-between">
        <div>
          <h5 class="mb-1">Judul Produk</h5>
        </div>
        <div class="text-muted fw-bold">Rp 150.000</div>
      </div>
    </div>
  </a>
  <a href="#" class="list-group-item list-group-item-action" aria-current="true">
    <div class="d-flex">
      <img src="https://placehold.co/600x400?text=Hello+World+1" alt="Produk" class="rounded me-3" style="width: 80px; height: 80px; object-fit: cover;">
      <div class="flex-grow-1 d-flex flex-column justify-content-between">
        <div>
          <h5 class="mb-1">Judul Produk</h5>
        </div>
        <div class="text-muted fw-bold">Rp 150.000</div>
      </div>
    </div>
  </a>
</div>

</div>
</template>
<script>
export default {
    name: 'Menu',
    data() {
        return {
            searchQuery: '',
            images: [
              'https://placehold.co/1440x470?text=Hello+World+1',
              'https://placehold.co/1440x470?text=Hello+World+2',
              'https://placehold.co/1440x470?text=Hello+World+3'
            ]
        };
    },
    methods: {
        notify() {
            // Logic for notification click
            alert('Notification clicked!');
        }
    }
}
</script>