import { RouteRecordRaw, createRouter, createWebHistory } from 'vue-router'
import HelloWorld from './components/HelloWorld.vue'

const routes: RouteRecordRaw[] = [
    {
        path: '/hello',
        name: 'hello',
        component: HelloWorld
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router
