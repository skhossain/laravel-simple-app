<script setup lang="ts">
import { Head, Link } from '@inertiajs/vue3';
</script>

<template>
    <head title="Welcome to TasteBite" />
    <div class="bg-white text-gray-800">

  <!-- Navbar -->
  <header class="bg-white shadow-md">
    <div class="container mx-auto px-4 py-4 flex justify-between items-center">
      <h1 class="text-2xl font-bold text-red-600">TasteBite</h1>
      <nav class="space-x-6 hidden md:block">
        <a href="#" class="text-gray-600 hover:text-red-500">Home</a>
        <a href="#" class="text-gray-600 hover:text-red-500">Reviews</a>
        <a href="#" class="text-gray-600 hover:text-red-500">Top Picks</a>
        <a href="#" class="text-gray-600 hover:text-red-500">Contact</a>
      </nav>
    </div>
  </header>

  <!-- Hero Section -->
  <section class="bg-red-50 py-16">
    <div class="container mx-auto px-4 text-center">
      <h2 class="text-4xl font-bold mb-4">Find The Best Food Around You</h2>
      <p class="text-lg text-gray-600 mb-6">Read real reviews, discover hidden gems, and share your own delicious experiences.</p>
      <a href="#" class="inline-block bg-red-500 text-white px-6 py-3 rounded-lg shadow hover:bg-red-600 transition">Start Exploring</a>
    </div>
  </section>

  <!-- Featured Reviews -->
  <section class="py-16">
    <div class="container mx-auto px-4">
      <h3 class="text-3xl font-semibold text-center mb-10">Featured Reviews</h3>
      <div class="grid md:grid-cols-3 gap-8">
        
        <!-- Card 1 -->
        <div class="bg-white shadow-lg rounded-xl overflow-hidden">
          <img src="/images/burger.jpg" alt="Burger" class="w-full h-48 object-cover" />
          <div class="p-4">
            <h4 class="text-xl font-semibold mb-2">Juicy BBQ Burger</h4>
            <p class="text-gray-600 text-sm mb-4">"Perfectly grilled with a smoky kick. The sauce is mind-blowing!"</p>
            <span class="text-yellow-500 font-bold">★★★★★</span>
          </div>
        </div>

        <!-- Card 2 -->
        <div class="bg-white shadow-lg rounded-xl overflow-hidden">
          <img src="/images/sushi.jpg" alt="Sushi" class="w-full h-48 object-cover" />
          <div class="p-4">
            <h4 class="text-xl font-semibold mb-2">Fresh Salmon Sushi</h4>
            <p class="text-gray-600 text-sm mb-4">"Melt-in-your-mouth freshness. A must-try for sushi lovers."</p>
            <span class="text-yellow-500 font-bold">★★★★☆</span>
          </div>
        </div>

        <!-- Card 3 -->
        <div class="bg-white shadow-lg rounded-xl overflow-hidden">
          <img src="/images/pizza.jpg" alt="Pizza" class="w-full h-48 object-cover" />
          <div class="p-4">
            <h4 class="text-xl font-semibold mb-2">Wood-Fired Margherita</h4>
            <p class="text-gray-600 text-sm mb-4">"Crispy crust with fresh basil and mozzarella. Classic done right!"</p>
            <span class="text-yellow-500 font-bold">★★★★★</span>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-gray-800 text-white py-6 mt-10">
    <div class="container mx-auto px-4 flex flex-col md:flex-row justify-between items-center">
      <p>&copy; 2025 TasteBite. All rights reserved.</p>
      <div class="space-x-4 mt-4 md:mt-0">
        <a href="#" class="hover:underline">Privacy Policy</a>
        <a href="#" class="hover:underline">Terms</a>
      </div>
    </div>
  </footer>
</div>
</template>
