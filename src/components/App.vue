<template>
  <div :class="$options.name">
    <layout-default>
      <router-view/>
    </layout-default>
  </div>
</template>

<script>
import LayoutDefault from './layout/LayoutDefault.vue';

export default {
  name: `App`,
  components: {
    LayoutDefault,
  },
};
</script>


<style lang="scss">
//@import '~normalize.css';
//@import '~reset-css/_reset.scss';
//@import '~purecss/build/pure.css';
* {
  box-sizing: border-box;
}

html body {
  // https://medium.com/@vojtechjurasek/how-we-decided-to-use-system-fonts-87683b9b23ba
  // Use system fonts for speed
  // BlinkMacSystemFont is Apple's iOS font
  // Segoe UI is Windows
  // Roboto is android
  // default to other system fonts
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
}
</style>
