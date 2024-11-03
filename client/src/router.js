import { createRouter,createWebHashHistory } from "vue-router";
import DeptPage from "./views/DeptPage.vue"
import JobPage from "./views/JobPage.vue"
import StaffPage from "./views/StaffPage.vue"

export default createRouter({
    history:createWebHashHistory(),
    routes: [
        {path:'/staff', component:StaffPage, alias:'/'},
        {path:'/job', component:JobPage},
        {path:'/dept', component:DeptPage},
    ]
})