import { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '', component: () => import('pages/Index.vue') },
      { path: '/inventory', component: () => import('pages/Inventory.vue') },
      { path: '/buy', component: () => import('pages/Buy.vue') },
      { path: '/reports', component: () => import('pages/Reports.vue') },
      { path: '/sales', component: () => import('pages/Sales.vue') },
    ],
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/Error404.vue'),
  },
];

export default routes;
