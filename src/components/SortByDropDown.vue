<template>
  <q-btn-dropdown label="Ordenar por" class="filter-button" flat>
    <q-list>
      <q-item clickable v-close-popup>
        <q-item-section>
          <q-item-label>Menor a mayor precio</q-item-label>
        </q-item-section>
      </q-item>

      <q-item clickable v-close-popup>
        <q-item-section>
          <q-item-label>Mayor a menor precio</q-item-label>
        </q-item-section>
      </q-item>
    </q-list>
  </q-btn-dropdown>
</template>

<script>
export default {
  name: 'SortByDropDown',
  setup() {
    return {};
  },
};
</script>

<style lang="scss" scoped>
.filter-button {
  margin-right: 15px;
}
</style>
