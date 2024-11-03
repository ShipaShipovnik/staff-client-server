<script>
import axios from "axios";

export default {
  data() {
    return {
      depts: [],
    };
  },
  methods: {
    async getDepts() {
      const path = "http://127.0.0.1:8000/department";
      console.log("Sending request to:", path);
      try {
        const response = await axios.get(path);
        console.log("Response received:", response.data);
        this.depts = response.data;
      } catch (error) {
        console.error("Error fetching depts:", error);
      }
    },
  },
  created() {
    this.getDepts();
  },
};
</script>

<template>
  <div class="container">
    <h1>Отделы</h1>
    <table>
      <thead>
        <tr>
          <td> id </td>
          <td> Название отдела </td>
        </tr>
      </thead>
      <tbody>
        <tr v-for="dept in depts" :key="dept.dept_id">
          <td> {{ dept.dept_id }} </td>
          <td> {{ dept.dept_name }} </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<style scoped></style>