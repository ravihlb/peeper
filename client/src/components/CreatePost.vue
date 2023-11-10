<script lang="ts">
import api from "@/http";
import { defineComponent } from "vue";
import Posts from "./Posts.vue";

interface Post {
  title: string;
  body: string;
}

export default defineComponent({
  data() {
    return {
      dialog: false,
      isValid: false,
      post: {
        title: "",
        body: "",
      },
      rules: [
        (value: string | undefined) => {
          if (value) return true;

          return "Field is required";
        },
      ],
    };
  },
  methods: {
    async submit(post: Post) {
      return new Promise((resolve) => {
        if (!(post.title && post.body)) {
          return resolve("Invalid input");
        }

        api.post("/posts", post).then(() => {
          resolve(true);
          Posts.loadPosts();
          this.dialog = false;
        });
      });
    },
  },
});
</script>

<template>
  <div>
    <v-btn @click="dialog = true" color="primary">
      Post
      <v-form @submit.prevent v-model="isValid">
        <v-dialog v-model="dialog" width="600">
          <v-card>
            <v-text-field
              :rules="rules"
              required
              v-model="post.title"
              placeholder="Give me a title"
            ></v-text-field>
            <br />
            <v-textarea
              density="compact"
              :no-resize="true"
              :rules="rules"
              required
              v-model="post.body"
              placeholder="What is happening?!"
            ></v-textarea>
            <v-btn
              :class="{ 'disable-events': !isValid }"
              class="rounded-3xl place-self-end mb-3 mr-3"
              type="submit"
              color="primary"
              :width="60"
            >
              Post
            </v-btn>
          </v-card>
        </v-dialog>
      </v-form>
    </v-btn>
  </div>
</template>

<style lang="sass">
.disable-events
    pointer-events: none
    opacity: 70%
</style>
