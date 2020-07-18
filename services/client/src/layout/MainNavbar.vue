<template>
  <md-toolbar
    id="toolbar"
    md-elevation="0"
    class="md-fixed"
    :class="{
      [`md-${type}`]: !navbarTransparent,
      [extraNavClasses]: navbarTransparent,
      'md-transparent': navbarTransparent
    }"
    :color-on-scroll="colorOnScroll"
  >
    <div class="md-toolbar-row md-collapse-lateral">
      
      <div class="md-toolbar-section-start" >
      <a href="#/landing-page"> 
        <h3 class="md-title">
          {{ brand }}
        </h3>
      </a>
      </div>
      <div class="md-toolbar-section-end">
        <md-button
          class="md-just-icon md-simple md-toolbar-toggle"
          :class="{ toggled: toggledClass }"
          @click="toggleNavbarMobile()"
        >
          <span class="icon-bar" />
          <span class="icon-bar" />
          <span class="icon-bar" />
        </md-button>

        <div class="md-collapse">
          <div class="md-collapse-wrapper">
            <mobile-menu nav-mobile-section="false">
              <!-- Here you can add your items from the section-start of your toolbar -->
            </mobile-menu>
            <md-list>
            
              <li class="md-list-item">
                <a
                  href="javascript:void(0)"
                  class="md-list-item-router md-list-item-container md-button-clean dropdown"
                >
                  <div class="md-list-item-content">
                    <drop-down direction="down">
                      <md-button
                        slot="title"
                        class="md-button md-button-link md-white md-simple dropdown-toggle"
                        data-toggle="dropdown"
                      >
                        <i class="material-icons"></i>
                        <p>Services</p>
                      </md-button>
                      <ul class="dropdown-menu dropdown-with-icons">
                        <li
                          v-for="li in services_links"
                          :key="li.name"
                        >
                          <a :href="'#/' + li.href">
                            <i class="material-icons">{{ li.icon }}</i>
                            {{ li.name }}
                          </a>
                        </li>
                      </ul>
                    </drop-down>
                  </div>
                </a>
              </li>

              <li class="md-list-item">
                <a
                  href="javascript:void(0)"
                  class="md-list-item-router md-list-item-container md-button-clean dropdown"
                >
                  <div class="md-list-item-content">
                    <drop-down direction="down">
                      <md-button
                        slot="title"
                        class="md-button md-button-link md-white md-simple dropdown-toggle"
                        data-toggle="dropdown"
                      >
                        <i class="material-icons"></i>
                        <p>Research</p>
                      </md-button>
                      <ul class="dropdown-menu dropdown-with-icons">
                        <li
                          v-for="li in research_links"
                          :key="li.name"
                        >
                          <a :href="'#/' + li.href">
                            <i class="material-icons">{{ li.icon }}</i>
                            {{ li.name }}
                          </a>
                        </li>
                      </ul>
                    </drop-down>
                  </div>
                </a>
              </li>

              <li class="md-list-item">
                <a
                  href="javascript:void(0)"
                  class="md-list-item-router md-list-item-container md-button-clean"
                >
                  <div class="md-list-item-content">
                      <md-button
                        slot="title"
                        class="md-button md-button-link md-white md-simple"
                      >
                        <i class="material-icons">community</i>
                        <p>Team</p>
                      </md-button>
                  </div>
                </a>
              </li>

              <li class="md-list-item">
                <a
                  href="javascript:void(0)"
                  class="md-list-item-router md-list-item-container md-button-clean"
                >
                  <div class="md-list-item-content">
                      <md-button
                        slot="title"
                        class="md-button md-button-link md-white md-simple"
                      >
                        <i class="material-icons"></i>
                        <p>Contact</p>
                      </md-button>
                  </div>
                </a>
              </li>

              <li class="md-list-item">
                <a
                  href="javascript:void(0)"
                  class="md-list-item-router md-list-item-container md-button-clean"
                >
                  <div class="md-list-item-content">
                      <md-button
                        slot="title"
                        class="md-button md-button-link md-white md-simple"
                      >
                        <i class="material-icons"></i>
                        <p>Blog</p>
                      </md-button>
                  </div>
                </a>
              </li>

              <li class="md-list-item">
                  <!-- This is a hidden spacer 
                       see scoped style at eoc 
                  -->
                  <spacer>...</spacer>
              </li>

            </md-list>
          </div>
        </div>
      </div>
    </div>
    
  </md-toolbar>
  
</template>

<script>
let resizeTimeout;
function resizeThrottler(actualResizeHandler) {
  // ignore resize events as long as an actualResizeHandler execution is in the queue
  if (!resizeTimeout) {
    resizeTimeout = setTimeout(() => {
      resizeTimeout = null;
      actualResizeHandler();

      // The actualResizeHandler will execute at a rate of 15fps
    }, 66);
  }
}

import MobileMenu from "@/layout/MobileMenu";
export default {
  components: {
    MobileMenu
  },
  props: {
    type: {
      type: String,
      default: "white",
      validator(value) {
        return [
          "white",
          "default",
          "primary",
          "danger",
          "success",
          "warning",
          "info",
          "dark"
        ].includes(value);
      }
    },
    colorOnScroll: {
      type: Number,
      default: 0
    },
    navbarTransparent: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
      docs_link:
        "https://demos.creative-tim.com/vue-material-kit-pro/documentation/",
      extraNavClasses: "",
      toggledClass: false,
      brand: "Theta Equity Partners",
      linksSections: [
        { name: "headers", icon: "dns" },
        { name: "features", icon: "build" },
        { name: "blogs", icon: "list" },
        { name: "teams", icon: "people" },
        { name: "projects", icon: "assignment" },
        { name: "pricing", icon: "monetization_on" },
        { name: "testimonials", icon: "chat" },
        { name: "contacts", icon: "call" }
      ],
      services_links: [ 
        { name: "Private Equity / Venture Capital", href: "about-us", icon: "account_balance" },
        { name: "Corporations", href: "blog-post", icon: "art_track" },
        { name: "Public Equities", href: "blog-posts", icon: "view_quilt" },
      ],
      research_links: [ 
        { name: "C3 - Customer Cohort Chart", href: "about-us", icon: "account_balance" },
        { name: "Farfetch Q2 2019 Update", href: "blog-post", icon: "art_track" },
        { name: "Slack DPO Valuation", href: "blog-posts", icon: "view_quilt" },
        { name: "Revolve IPO", href: "blog-posts", icon: "view_quilt" },
        { name: "Lyft IPO Valuation", href: "blog-posts", icon: "view_quilt" },
      ],
    };
  },
  computed: {
    showDownload() {
      const excludedRoutes = ["index"];
      return excludedRoutes.every(r => r !== this.$route.name);
    }
  },
  mounted() {
    document.addEventListener("scroll", this.scrollListener);
  },
  beforeDestroy() {
    document.removeEventListener("scroll", this.scrollListener);
  },
  methods: {
    bodyClick() {
      let bodyClick = document.getElementById("bodyClick");

      if (bodyClick === null) {
        let body = document.querySelector("body");
        let elem = document.createElement("div");
        elem.setAttribute("id", "bodyClick");
        body.appendChild(elem);

        let bodyClick = document.getElementById("bodyClick");
        bodyClick.addEventListener("click", this.toggleNavbarMobile);
      } else {
        bodyClick.remove();
      }
    },
    toggleNavbarMobile() {
      this.NavbarStore.showNavbar = !this.NavbarStore.showNavbar;
      this.toggledClass = !this.toggledClass;
      this.bodyClick();
    },
    handleScroll() {
      let scrollValue =
        document.body.scrollTop || document.documentElement.scrollTop;
      let navbarColor = document.getElementById("toolbar");
      this.currentScrollValue = scrollValue;
      if (this.colorOnScroll > 0 && scrollValue > this.colorOnScroll) {
        this.extraNavClasses = `md-${this.type}`;
        navbarColor.classList.remove("md-transparent");
      } else {
        if (this.extraNavClasses) {
          this.extraNavClasses = "";
          navbarColor.classList.add("md-transparent");
        }
      }
    },
    scrollListener() {
      resizeThrottler(this.handleScroll);
    }
  }
};
</script>

<style scoped>

spacer {
  visibility: hidden;
}
</style>