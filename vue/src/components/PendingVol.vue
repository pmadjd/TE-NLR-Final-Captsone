<template>
  <div class="pending-list">
    <table>
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Phone Number</th>
          <th>Email Address</th>
          <th>Pending</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in pendingUsers" v-bind:key="user.id">
          <td>{{ user.firstName }}</td>
          <td>{{ user.lastName }}</td>
          <td>{{ user.phone }}</td>
          <td>{{ user.email }}</td>
          <td><button v-on:click= "onUpdate(user.id)">Update</button></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import userService from "@/services/UserService.js";

export default {
  name: "pending-users-list",
  data() {
    return {
      pendingUsers: [
        {
          firstName: "",
          lastName: "",
          phone: "",
          email: "",
        },
      ],
    };
  },
  created() {
    userService.getPendingUsers().then((response) => {
      this.pendingUsers = response.data;
    });
  },
  methods: {
    onUpdate(id) {
      this.$router.push({name: 'editUser', params: {id: id}})
    }

  }
};
</script>

<style>
</style>