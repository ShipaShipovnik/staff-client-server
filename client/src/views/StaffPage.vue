<script>
import axios from "axios";

export default {
    data() {
        return {
            staff: [],
        };
    },
    methods: {
        async getStaff() {
            const path = "http://127.0.0.1:8000/staff";
            console.log("Sending request to:", path);
            try {
                const response = await axios.get(path);
                console.log("Response received:", response.data);
                this.staff = response.data;
            } catch (error) {
                console.error("Error fetching jobs:", error);
            }
        },
    },
    created() {
        this.getStaff();
    },
};
</script>

<template>
    <div class="container">
        <h1>Сотрудники</h1>
        <table>
            <thead>
                <tr>
                    <td> id </td>
                    <td> ФИО </td>
                    <td> возраст </td>
                    <td> телефон </td>
                    <td> почта </td>
                    <td> отдел </td>
                    <td> должность </td>
                </tr>
            </thead>
            <tbody>
                <tr v-for="item in staff" :key="item.staff_id">
                    <td> {{ item.staff_id }} </td>
                    <td> {{ item.fullname }} </td>
                    <td> {{ item.age }} </td>
                    <td> {{ item.phone }} </td>
                    <td> {{ item.email }} </td>
                    <td> {{ item.dept_name }} </td>
                    <td> {{ item.job_name }} </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<style>

</style>