<script lang="ts">
import { defineComponent } from "vue";
import api from "../http.ts";

interface Post {
  title: string;
  body: string;
}

export default defineComponent({
  data() {
    return {
      posts: [] as Post[],
    };
  },

  methods: {
    async loadPosts() {
      const response = await api.get("/posts");
      this.posts = response.data as Post[];
    },
  },
  async mounted() {
    await this.loadPosts();
  },
});
</script>

<template>
  <div v-for="post in posts">
    <v-card
      class="card"
      :text="post.body"
      :rounded="0"
      :min-width="500"
      :border="10"
      theme="dark"
    >
    </v-card>
  </div>
</template>

<style lang="sass">
.class
    border-bottom: 3px solid
</style>
