<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>
      <router-link v-bind:to="{name: 'aboutUs'}"> | About Us</router-link>
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''"
        > | Volunteer Login</router-link
      >
      <router-link v-bind:to="{ name: 'addPet' }" v-if="$store.state.token !=''"> | Add Pet</router-link>
      <router-link v-bind:to="{ name: 'directory' }" v-if="$store.state.token !=''"> | Directory</router-link>
      <router-link v-bind:to="{ name: 'pendingVols' }" v-if="$store.state.user.authorities && $store.state.user.authorities[0].name==='ROLE_ADMIN'"> | View Applications</router-link>
       <router-link
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
        > | Logout</router-link
      >
    </div>
    <router-view />
      <footer>
        Copyright &copy; 2021 Green Animal Shelter. All Rights Reserved.
      </footer>
  </div>
</template>

<style>
#app {
  font-family: Asap;
  background-color:  rgb(191, 218, 243);
}
a {
  text-decoration: none;
  color: #7e6037;
  font-size: 20px;
}
footer {
  color: #7e6037;
  text-align: center;
}
</style>
