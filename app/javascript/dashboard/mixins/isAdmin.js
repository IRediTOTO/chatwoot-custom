import { mapGetters } from 'vuex';

export default {
  computed: {
    ...mapGetters({
      currentUserRole: 'getCurrentRole',
      currentUser: 'getCurrentUser',
    }),
    isAdmin() {
      return this.currentUserRole === 'administrator';
    },
    isSuperAdmin() {
      return this.currentUser.type === 'SuperAdmin';
    },
  },
};
