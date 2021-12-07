<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home&nbsp;|&nbsp;</router-link>
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Volunteer Login</router-link>
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div>
</template>

<style>
#app{
font-family: Asap;
background-color: cornflowerblue;
}
</style>
