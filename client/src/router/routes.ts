import { RouteRecordRaw } from "vue-router"
import Home from "@/views/Home.vue"

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    component: Home,
  },
  {
    path: '/departments',
    component: () => import('@/views/Departments.vue'),
  },
  {
    path: '/jobs',
    component: () => import('@/views/Jobs.vue'),
  },
  {
    path: '/staff',
    component: () => import('@/views/Staff.vue'),
  },
]

export default routes