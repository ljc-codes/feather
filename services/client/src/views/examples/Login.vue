<template>
  <div class="wrapper">
    <div
      class="section page-header header-filter"
      :style="headerStyle"
    >
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-33 md-small-size-66 md-xsmall-size-100 md-medium-size-40 mx-auto"
          >
            <login-card header-color="info">
              <h4
                slot="title"
                class="card-title"
              >
                Login
              </h4>
              <md-button
                slot="buttons"
                href="javascript:void(0)"
                class="md-just-icon md-simple md-white"
              >
                <i class="fab fa-google" />
              </md-button>
              <md-button
                slot="buttons"
                href="javascript:void(0)"
                class="md-just-icon md-simple md-white"
              >
                <i class="fab fa-linkedin" />
              </md-button>
              <md-button
                slot="buttons"
                href="javascript:void(0)"
                class="md-just-icon md-simple md-white"
              >
                <i class="fab fa-facebook" />
              </md-button>
              <p
                slot="description"
                class="description"
              >
                Or Be Classical
              </p>
              <md-field
                slot="inputs"
                class="md-form-group"
              >
                <md-icon>email</md-icon>
                <label>Email...</label>
                <md-input
                  v-model="email"
                  type="email"
                />
              </md-field>
              <md-field
                slot="inputs"
                class="md-form-group"
              >
                <md-icon>lock_outline</md-icon>
                <label>Password...</label>
                <md-input v-model="password" />
              </md-field>
              <md-button
                slot="footer"
                class=" md-info md-lg"
              >
                login
              </md-button>
              <br>
            </login-card>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { LoginCard } from "@/components";
import Mixins from "@/plugins/basicMixins";

export default {
  components: {
    LoginCard
  },
  mixins: [Mixins.HeaderImage],
  bodyClass: "login-page",
  data() {
    return {
      image: require("@/assets/img/background.jpg"),
      firstname: null,
      email: null,
      password: null
    };
  }
};
</script>

<style lang="css"></style>
