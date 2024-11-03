<script>
import axios from "axios";

export default {
  data() {
    return {
      jobs: [],
    };
  },
  methods: {
    async getJobs() {
      const path = "http://127.0.0.1:8000/job";
      console.log("Sending request to:", path);
      try {
        const response = await axios.get(path);
        console.log("Response received:", response.data);
        this.jobs = response.data;
      } catch (error) {
        console.error("Error fetching jobs:", error);
      }
    },
  },
  created() {
    this.getJobs();
  },
};
</script>

<template>
  <div class="container">
    <h1>Должности</h1>
    <table>
      <thead>
        <tr>
          <td> id </td>
          <td> Название должности </td>
        </tr>
      </thead>
      <tbody>
        <tr v-for="job in jobs" :key="job.job_id">
          <td> {{ job.job_id }} </td>
          <td> {{ job.job_name }} </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<style scoped>
</style>