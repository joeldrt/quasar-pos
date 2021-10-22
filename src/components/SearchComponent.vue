<template>
  <div class="search-component">
    <q-input filled dense v-model="text" label="Buscar productos">
      <template v-slot:prepend>
        <i class="fas fa-search search-icon"></i>
      </template>
    </q-input>
    <q-btn class="search-button" flat> Buscar </q-btn>
  </div>
</template>

<script>
import { ref, defineComponent } from 'vue';

export default defineComponent({
  name: 'SearchComponent',
  setup() {
    const text = ref('');

    return {
      text,
    };
  },
});
</script>

<style lang="scss" scoped>
.search-component {
  display: flex;
  margin: 0 15px 15px 0;
}

.search-icon {
  color: $blue;
}
.search-button {
  background: $blue;
  color: white;
}
</style>
