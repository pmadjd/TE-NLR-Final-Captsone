<template>
  <div class="user-list">
    <table>
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Phone Number</th>
          <th>Email Address</th>
        </tr>
      </thead>
      <tbody>
        <!-- will need to replace filteredList when user controller is implemented -->
        <tr
          v-for="user in filteredList"
          v-bind:key="user.id"
          :class="{ disabled: user.status === 'Disabled' }"
        >
          <!-- user listing goes here -->
          <td>{{ user.firstname }}</td>
          <td>{{ user.lastname }}</td>
          <td>{{ user.phonenum }}</td>
          <td>{{ user.email }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {};
</script>

<style>
</style>