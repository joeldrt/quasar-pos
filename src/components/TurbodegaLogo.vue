<template>
  <q-item>
    <div class="row justify-center items-center turbodega-logo">
      <img src="turbodega-logo.svg" />
    </div>
  </q-item>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
export default defineComponent({
  name: 'TurbodegaLogo',
  setup() {
    return {};
  },
});
</script>

<style lang="scss" scoped>
.turbodega-logo {
  margin: 27px;
}
</style>
