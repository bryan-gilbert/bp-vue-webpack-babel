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
    :class="$options.name">
    <slot/>
  </button>
</template>

<script>
export default {
  name: `DevButton`,
  props: {
    to: {
      type: Object,
    },
  },
  data : function() {
  	return {
  		counter: 0
   }
  },
	methods: {
		buttonClicked: function () {
			// `this` inside methods points to the Vue instance
        this.counter++;
        console.log("emitEvent");
        this.$emit('buttonClicked','someData');
		}
	}
};
</script>

<style lang="scss" scoped>
@import '../../scss/settings/color';

.DevButton {
  display: inline-block;
  padding: 0.5em 0.75em;
  border: none;
  border-radius: 0.25em;
  background-color: $color-primary;
  text-decoration: none;
  cursor: pointer;
  transition: background-color 0.2s;

  &,
  &:visited {
    color: #fff;
  }

  &:focus,
  &:hover {
    background-color: lighten($color-primary, 10%);
  }
}
</style>
