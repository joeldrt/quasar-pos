<template>
  <q-layout view="lHh Lpr lFf">
    <q-header class="header" bordered>
      <q-toolbar>
        <q-btn
          class="header__menu-button"
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        />
        <q-space />
        <HeaderProfile />
      </q-toolbar>
    </q-header>

    <q-drawer
      :width="329"
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      class="drawer"
    >
      <q-list>
        <TurbodegaLogo />
        <DrawerMenuButton
          :key="index"
          v-for="(button, index) in drawerItems"
          :icon="button.icon"
          :label="button.label"
          :link="button.link"
          :trailingIcon="button.trailingIcon"
          :selected="path === button.link"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script lang="ts">
import HeaderProfile from 'components/HeaderProfile.vue';
import TurbodegaLogo from 'components/TurbodegaLogo.vue';
import DrawerMenuButton from 'components/DrawerMenuButton.vue';
import { useRoute } from 'vue-router';
import { defineComponent, ref, computed } from 'vue';

const drawerItems = [
  {
    icon: 'icons/sales.svg',
    label: 'Registro de ventas',
    link: '/sales',
    trailingIcon: true,
  },
  {
    icon: 'icons/reports.svg',
    label: 'Reporte de mi negocio',
    link: '/reports',
    trailingIcon: true,
  },
  {
    icon: 'icons/purchasing.svg',
    label: '¡Quiero comprar!',
    link: '/buy',
    trailingIcon: false,
  },
  {
    icon: 'icons/inventory.svg',
    label: 'Mis productos',
    link: '/inventory',
    trailingIcon: true,
  },
];

export default defineComponent({
  name: 'MainLayout',

  components: {
    HeaderProfile,
    TurbodegaLogo,
    DrawerMenuButton,
  },

  setup() {
    const route = useRoute();
    const leftDrawerOpen = ref(false);
    const path = computed(() => route.path);

    return {
      drawerItems,
      leftDrawerOpen,
      path,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>

<style lang="scss">
.header {
  background-color: white;
  color: black;
}

.drawer {
  background-color: $blue;
}
</style>
