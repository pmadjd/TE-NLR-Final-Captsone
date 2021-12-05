<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <router-link :to="{ name: 'register' }">Need an account?</router-link>
      <button type="submit">Sign in</button>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<!--can we put this script here? or does it need to go in a componenet?-->
<style>
.text-center {
  padding: 20px 20px;
  margin: 0 auto;
  max-width: 600px;
  font-family:Verdana, Geneva, Tahoma, sans-serif;
  box-sizing: border-box;
  width: auto;
  position: relative;
  clear: both;
  background: #95C2FD;
  background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0.15, #BEE2FF), color-stop(1, #95C2FD));
  background-image: -webkit-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: -moz-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: -ms-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: -o-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: linear-gradient(to top, #BEE2FF 15%, #95C2FD 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#95C2FD', endColorstr='#BEE2FF');
  border: solid 1px rgba(0,0,0,0.5);
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  -webkit-box-shadow: inset 0 8px 5px rgba(255,255,255,0.65), 0 1px 2px rgba(0,0,0,0.2);
  -moz-box-shadow: inset 0 8px 5px rgba(255,255,255,0.65), 0 1px 2px rgba(0,0,0,0.2);
  box-shadow: inset 0 8px 5px rgba(255,255,255,0.65), 0 1px 2px rgba(0,0,0,0.2);
  margin-bottom: 20px;
  padding: 6px 20px;
  color: #000;
  text-shadow: 0 1px 1px rgba(255,255,255,0.8);
  word-wrap: break-word;
}
</style>