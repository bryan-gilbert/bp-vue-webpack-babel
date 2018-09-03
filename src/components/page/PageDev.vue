<template>
  <div :class="$options.name">
    <app-hero>
      <template slot="headline">
        Dev
      </template>
    </app-hero>
<money-converter>

</money-converter>

  </div>
</template>

<script>
import MoneyConverter from '../currencyConverter/MoneyConverter.vue';
import AppHero from '../app/AppHero.vue';

export default {
  name: `PageDev`,
  components: {
    AppHero,
		MoneyConverter
  },
};
</script>

<style lang="scss" scoped>
.PageDev {
  $section-spacing: 3em;

  &__contentList {
    margin-top: $section-spacing;
  }
}
</style>
