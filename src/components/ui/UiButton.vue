<template>
  <!-- clicking <router-link :to="..."> is the equivalent of calling router.push(...). -->
  <!-- the :is attribute can change what the button will be. If the 'to' property is set then
  make the button into a Vue router-link component https://router.vuejs.org/api/
  otherwise leave the button as a button.  The :to attribute is used by the router-link, if it's there.
  -->
  <button
    :is="to ? `router-link` : `button`"
    :to="to"
    v-on:click="buttonClicked"
          class="classObject"
    :class="$options.name">
    <slot/>
  </button>
</template>

<script>
export default {
  name: `UiButton`,
  props: {
    to: {
      type: Object,
    },
  },
	computed: {
		classObject: function () {
			return {
				"is-link": this.to !== undefined
			}
		},
		methods: {
			buttonClicked: function () {
				this.$emit('buttonClicked');
			}
		}
	};
</script>

<style lang="scss" scoped>
	@import '../../scss/settings/color';

	.UiButton {

	}
</style>
