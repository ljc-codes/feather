import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    current_user : null,
    is_logged_in : false,
  },
  mutations: {
    logout(state){
      state.current_user = null
      state.is_logged_in = false
    }
  },
  actions: {
    async callLogOut({ commit }){
      commit("logout")
      await Vue.prototype.$auth.logout()
      location.reload(true)
    },
    async callLogIn({ commit, dispatch}) {
      localStorage.setItem(
        "apollo-token",
        await Vue.prototype.$auth.getAccessToken()
      )
    }
  },
  modules: {}
});
