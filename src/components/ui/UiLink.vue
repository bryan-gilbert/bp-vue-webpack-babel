<template>
  <router-link :to="to" class="classObject" :class="$options.name">
    <slot/>
  </router-link>
</template>

<script>
export default {
  name: `UiLink`,
  props: {
    to: {
      type: Object,
    },
  },
	computed: {
		classObject: function () {
			return {
				"is-link": true
			}
		}
	},
};
</script>

<style lang="scss" scoped>
</style>
