<script setup lang="ts">
import Starling from "../assets/svg/starling.svg";
import CreatePost from "./CreatePost.vue";
</script>

<template>
  <v-layout>
    <v-navigation-drawer theme="dark" :permanent="true" :width="318">
      <v-list>
        <v-list-item v-ripple="false" rounded="pill" href="/">
          <Starling class="w-10 pl-10" />
        </v-list-item>
        <v-list-item
          v-ripple="false"
          class="px-10"
          rounded="pill"
          href="/"
          prepend-icon="mdi-home"
          title="Home"
        ></v-list-item>
      </v-list>
      <CreatePost class="text-center absolute inset-x-0 bottom-10" />
    </v-navigation-drawer>
  </v-layout>
</template>

<style lang="sass">
.v-list-nav
    border-width: 50px
</style>
