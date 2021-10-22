<template>
  <q-item :class="selected ? 'selected' : 'normal'">
    <div
      class="row inline justify-between items-center no-wrap menu-button"
      @click="handleClick"
    >
      <img :src="icon" class="button-icon" />
      <div class="text-h5 text-bold text-label">{{ label }}</div>
      <div class="trailing-icon text-right">
        <i class="fas fa-chevron-down" v-if="trailingIcon"></i>
      </div>
    </div>
  </q-item>
</template>

<script lang="ts">
import { useRouter } from 'vue-router';
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'DrawerMenuButton',
  props: {
    icon: String,
    label: String,
    link: String,
    trailingIcon: Boolean,
    selected: Boolean,
  },
  setup(props) {
    const router = useRouter();

    const handleClick = async () => {
      console.log('Redirect to: ', props.link);
      await router.push(props.link ? props.link : '/');
    };

    return {
      handleClick,
    };
  },
});
</script>

<style lang="scss" scoped>
.normal {
  cursor: pointer;
  background-color: $blue;
  border-top: 1px $blue solid;
  border-bottom: 1px $blue solid;
}

.selected {
  cursor: pointer;
  background-color: $dark-blue;
  border-top: 1px white solid;
  border-bottom: 1px white solid;
}

.menu-button {
  min-height: 81px;
}

.button-icon {
  width: 35px;
}

.trailing-icon {
  width: 27px;
  color: white;
}

.text-label {
  width: 205px;
  color: white;
  margin-left: 1.5rem;
}
</style>
