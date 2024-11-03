<template>
  <div class="navbar">
    <div class="container">
      <nav>
        <router-link to="/job">
          <p>Должности</p>
        </router-link>
        <router-link to="/dept">
          <p>Отделы</p>
        </router-link>
        <router-link to="/staff">
          <p>Работники</p>
        </router-link>
      </nav>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.navbar {
  margin-top: 20px;
  width: 100%;
  background-color: rgb(63, 94, 160);
}

nav {
  display: flex;
  height: 60px;
  align-items: center;
  justify-content: left;
}

p{
  text-transform: uppercase;
  color: white;
  margin-right:20px ;
  transition: 0.5s;
}

p:hover{
  text-decoration: underline;
  font-weight: 600;
}
</style>