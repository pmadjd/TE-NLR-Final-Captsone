<template>
  <form v-on:submit.prevent>
    <div class="field">
      <label for="firstName">First Name </label>
      <input name="First Name" type="text" v-model="user.firstName" />
    </div>
    <div class="field">
      <label for="lastName">Last Name </label>
      <input name="Last Name" type="text" v-model="user.lastName" />
    </div>
    <div class="field">
      <label for="phoneNumber">Phone Number </label>
      <input name="Phone Number" type="text" v-model="user.phone" />
    </div>
    <div class="field">
      <label for="email">Email </label>
      <input name="Email" type="text" v-model="user.email" />
    </div>
    <div class="field">
      <button v-on:click="approve">Approve</button>
      <button v-on:click="decline">Decline</button>
    </div>
  </form>
</template>

<script>
import userService from "@/services/UserService";

export default {
  name: "update-user-status",
  data() {
    return {
      user: {
        firstName: "",
        lastName: "",
        phone: "",
        email: "",
        isApproved: false,
        isRejected: false,
      },
    };
  },
  created() {
    userService.getUserById(this.$route.params.id).then((response) => {
        this.user = response.data;
    });
  },
  methods: {
    approve() {
      userService
        .approvePending(this.user)
        .then((response) => {
          if (response.status === 200) {
            this.$router.push({ name: "pendingVols" });
            //or route to homepage??
          }
        })
        .catch((error) => {
          if (error.response) {
            this.errorMsg =
              "Error updating user. Response was: " + error.response.statusText;
          } else if (error.request) {
            this.errorMsg = "Error updating user. Server could not be reached.";
          } else {
            this.errorMsg = "Error updating user. Could not create request";
          }
        });
    },
    decline() {
      userService
        .rejectPending(this.user)
        .then((response) => {
          if (response.status === 200) {
            this.$router.push({ name: "pendingVols" });
            //or route to homepage??
          }
        })
        .catch((error) => {
          //if it fails then we should set the error message
          if (error.response) {
            this.errorMsg =
              "Error updating user. Response was: " + error.response.statusText;
          } else if (error.request) {
            this.errorMsg = "Error updating user. Server could not be reached.";
          } else {
            this.errorMsg = "Error updating user. Could not create request";
          }
        });
    },
  },
};
</script>

<style>
</style>