<template>
  <q-page padding>
    <div class="page-content">
      <div class="row products-grid">
        <ProductCard
          v-for="product in products"
          :key="`card-${product.id}`"
          :product="product"
          @click="selectCard(product.id)"
          :selected="selectedCard === product.id"
        />
      </div>
    </div>
    <q-page-sticky position="top" expand>
      <div class="column page-navbar">
        <div class="page-title">Mis productos</div>
        <div class="row justify-between items-center tool-bar">
          <SearchComponent />
          <div class="row justify-end">
            <div class="row no-wrap">
              <CategoryDropDown />
              <SortByDropDown />
            </div>
            <q-btn class="add-product-button" flat>Crear producto +</q-btn>
          </div>
        </div>
      </div>
    </q-page-sticky>
  </q-page>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';
import SearchComponent from 'components/SearchComponent.vue';
import CategoryDropDown from 'components/CategoryDropDown.vue';
import SortByDropDown from 'components/SortByDropDown.vue';
import ProductCard from 'components/ProductCard.vue';

export default defineComponent({
  name: 'InventoryPage',

  components: {
    SearchComponent,
    CategoryDropDown,
    SortByDropDown,
    ProductCard,
  },

  setup() {
    const selectedCard = ref(-1);
    const selectCard = (n: number) => {
      console.log('selecting card:', n);
      selectedCard.value = n;
    };

    const products = [
      {
        id: 1000435,
        description: 'Pan blanco Bimbo Grande',
        costo: 31.0,
        stock: 12,
        picture: '1000435.jpeg',
      },
      {
        id: 1010376,
        description: 'Six pack Pacifico',
        costo: 98.0,
        stock: 3,
        picture: '1010376.png',
      },
    ];

    return {
      products,
      selectedCard,
      selectCard,
    };
  },
});
</script>

<style lang="scss" scoped>
.tool-bar {
  margin-top: 30px;
}
.add-product-button {
  background: $blue;
  color: white;
}
.products-grid {
  margin-top: 30px;
}
.page-content {
  padding-top: 150px;
  @media (max-width: 751px) {
    padding-top: 240px;
  }
  @media (min-width: 752px) {
    padding-top: 210px;
  }
  @media (min-width: 1314px) {
    padding-top: 150px;
  }
}
.page-navbar {
  background-color: white;
  width: 100%;
  padding: 24px;
}
</style>
