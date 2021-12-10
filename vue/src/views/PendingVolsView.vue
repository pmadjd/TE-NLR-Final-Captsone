<template>
  <div>
    <update-vol-status></update-vol-status>
  </div>
</template>

<script>
import UpdateVolStatus from "../components/UpdateVolStatus.vue";
export default {
  name: "pending-vols-page",
  components: {
    UpdateVolStatus,
  },
};
</script>

<style>
</style>
