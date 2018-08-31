<template>
  <div :class="$options.name">
    <app-hero>
      <template slot="headline">
        Dev
      </template>

      <p>
        This page can be used to experiment with Vue
      </p>
    </app-hero>


  </div>
</template>

<script>
import AppContentList from '../app/AppContentList.vue';
import AppContentListItem from '../app/AppContentListItem.vue';
import AppHero from '../app/AppHero.vue';

export default {
  name: `PageDev`,
  components: {
    AppContentList,
    AppContentListItem,
    AppHero,
  },
};
</script>

<style lang="scss" scoped>
.PageDev {
  $section-spacing: 3em;
  color: red;

  &__contentList {
    margin-top: $section-spacing;
  }
}
</style>
