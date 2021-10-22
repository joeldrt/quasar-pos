<template>
  <div class="header-profile">
    <div class="row justify-end items-center">
      <div class="column">
        <div class="text-h5 text-bold text-right">Hola, {{ name }}</div>
        <div class="text-body1 text-right">
          Tu venta del día es de ${{ amount.toFixed(2) }}
        </div>
      </div>
      <div class="column justify-center items-center">
        <q-avatar size="51px" class="avatar">
          <img src="icons/avatar-profile.svg" />
        </q-avatar>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'HeaderProfile',
  setup() {
    const name = 'Sam Sepiel';
    const amount = 390;

    return {
      name,
      amount,
    };
  },
});
</script>

<style scoped lang="scss">
.header-profile {
  margin-top: 33px;
}

.avatar {
  margin: 21px;
}
</style>
