import "./style.css";
import App from "./App.vue";
import router from "./router";
import { createApp } from "vue";
import "@/styles/main.scss";
import { createVuetify } from "vuetify";
import * as components from "vuetify/components";
import * as directives from "vuetify/directives";

const vuetify = createVuetify({
  components,
  directives,
});

createApp(App).use(router).use(vuetify).mount("#app");
