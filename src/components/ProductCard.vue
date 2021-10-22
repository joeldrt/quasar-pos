<template>
  <div class="product-card-wrapper col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <q-card
      bordered
      class="shadow-box shadow-2 product-card"
      :class="selected ? 'selected' : ''"
    >
      <q-card-section horizontal>
        <q-img class="col-5" :src="`products/${product?.picture}`" />
        <q-card-section class="product-detail">
          {{ product?.description }}
        </q-card-section>
      </q-card-section>
      <q-card-actions vertical align="right">
        <div class="row no-wrap">
          <i class="fas fa-info-circle q-mr-sm"></i>
          <div class="text-bold">Disponible {{ product?.stock }} unidades</div>
        </div>
      </q-card-actions>
    </q-card>
  </div>
</template>

<script lang="ts">
export default {
  name: 'ProductCard',
  props: {
    selected: Boolean,
    product: Object,
  },
  setup() {
    return {};
  },
};
</script>

<style lang="scss" scoped>
.product-card-wrapper {
  padding: 15px;
}
.product-card {
  padding: 10px;
  cursor: pointer;
  color: black;
}
.product-detail {
  min-height: 150px;
}
.selected {
  background-color: $color1;
  color: white;
}
</style>
