<script lang="ts">
import api from "@/http";
import { defineComponent } from "vue";
import Posts from "./Posts.vue";

export default defineComponent({
  data() {
    return {
      dialog: false,
      body: "",
    };
  },
  methods: {
    required(v: string | undefined) {
      return !!v || "Field is required";
    },
    async createPost(body: string) {
      await api.post("/posts", body);
      this.dialog = false;
      Posts.loadPosts();
    },
  },
});
</script>

<template>
  <div class="text-center absolute inset-x-0 bottom-10">
    <v-btn @click="dialog = true" color="primary">
      Post
      <v-dialog v-model="dialog" width="600">
        <v-card>
          <v-textarea
            :rules="[required(body)]"
            v-model="body"
            label="What is happening?!"
          ></v-textarea>
          <v-btn color="primary" block @click="createPost(body)">
            Post
          </v-btn>
        </v-card>
      </v-dialog>
    </v-btn>
  </div>
</template>
