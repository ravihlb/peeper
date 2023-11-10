<script setup lang="ts">
import Starling from "../assets/svg/starling.svg";
import CreatePost from "./CreatePost.vue";
</script>

<template>
  <v-layout>
    <v-navigation-drawer theme="dark" :permanent="true" :width="318">
      <v-list-nav>
        <v-list-item v-ripple="false" rounded="pill" href="/">
          <div class="flex place-content-center">
            <Starling class="w-10" />
          </div>
        </v-list-item>
        <v-list-item
          v-ripple="false"
          class="px-10"
          rounded="pill"
          href="/"
          prepend-icon="mdi-home"
          title="Home"
        ></v-list-item>
      </v-list-nav>
      <CreatePost />
    </v-navigation-drawer>
  </v-layout>
</template>

<style lang="sass">
.v-list-nav
    border-width: 50px
</style>
