<template>
  <q-btn-dropdown label="Categoría" class="filter-button" flat>
    <q-list>
      <q-item clickable v-close-popup>
        <q-item-section>
          <q-item-label>A -> Z</q-item-label>
        </q-item-section>
      </q-item>

      <q-item clickable v-close-popup>
        <q-item-section>
          <q-item-label>Z -> A</q-item-label>
        </q-item-section>
      </q-item>
    </q-list>
  </q-btn-dropdown>
</template>

<script>
export default {
  name: 'CategoryDropDown',
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
