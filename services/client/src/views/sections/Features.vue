<template>
  <div class="wrapper">
    <!-- Features 1 -->
    <div class="section section-features-1">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-66 md-small-size-100 mx-auto text-center"
          >
            <h2 >
              We serve...
            </h2>
          </div>
        </div>
        <div class="md-layout">
          <div class="md-layout-item md-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-success">
                    <md-icon>verified_user</md-icon>
                  </div>
                  <h4>
                    Valuation
                  </h4>
                  <p>
                    Gain a competitive edge in bidding by better understanding target's unit economics, more accurately estimating its value, and identifying levers to improve value of revenue streams
                  </p>
                  <p>
                    Improve valuations of current portfolio companies by regularly assessing and improving customer value.
                  </p>
                  <p>
                    Maximize return on investment when exiting a company by identifying sources of company value ignored by traditional valuation methods.
                  </p>
                </div>
              </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-success">
                    <md-icon>verified_user</md-icon>
                  </div>
                  <h4>
                    Valuation
                  </h4>
                  <p>
                    Better understand health of your customer base and customers’ relationship to overall company valuation</p>
                  <p>
                    Get more favorable investment / M&A terms by having a data-driven view of your firm's value which incorporates sources of value ignored by other valuation methods
                  </p>
                  <p>
                    Showcase full company value to outside investors by strategically disclosing key customer metrics directly linked to company valuation
                  </p>
                </div>
              </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-success">
                    <md-icon>verified_user</md-icon>
                  </div>
                  <h4>
                    Valuation
                  </h4>
                  <p>
                    Better estimate investments’ value and gain deeper insights into unit economics using publicly available data (SEC filings, presentations, etc.) </p>
                  <p>
                    Always have an up-to-date forward-looking view of portfolio investments
                  </p>
                  <p>
                    We incorporate predictions of customer behavior directly into the company valuation, leading to better accuracy and deeper insights
                  </p>
                  
                </div>
              </div>
        </div>
      </div>
    </div>
    <!-- end Features 1 -->

    <!-- Features 2 -->
    <div class="section section-features-1 pt-0">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-66 md-small-size-100 mx-auto text-center"
          >
            <h2 class="title">
              Why our product is the best
            </h2>
            <h5 class="description">
              This is the paragraph where you can write more details about your
              product. Keep you user engaged by providing meaningful
              information.
            </h5>
          </div>
        </div>
        <div class="md-layout">
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              info-horizontal
              icon-color="info"
              icon="group_work"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Collaborate
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
                <a href="javascript:void(0)">Find more...</a>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              info-horizontal
              icon-color="danger"
              icon="airplay"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Airplay
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
                <a href="javascript:void(0)">Find more...</a>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              info-horizontal
              icon-color="success"
              icon="location_on"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Location Integrated
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
                <a href="javascript:void(0)">Find more...</a>
              </div>
            </info-areas>
          </div>
        </div>
      </div>
    </div>
    <!-- end Features 2 -->

    <!-- Features 3 -->
    <div class="section section-features-3">
      <div class="container">
        <div class="md-layout">
          <div class="md-layout-item md-size-50 md-small-size-100">
            <div class="phone-container">
              <img :src="iphone">
            </div>
          </div>
          <div class="md-layout-item md-size-50 md-small-size-100">
            <!-- Some <br /> tags to push the text to align with the image, you can remove it if you have more text on the right side :-) -->
            <h2 class="title">
              Your life will be much easier
            </h2>
            <info-areas
              info-horizontal
              icon-color="primary"
              icon="extension"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Hundreds of Components
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
            <info-areas
              info-horizontal
              icon-color="primary"
              icon="child_friendly"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Ease to Use
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
              </div>
            </info-areas>
            <info-areas
              info-horizontal
              icon-color="primary"
              icon="watch_later"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Fast Prototyping
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
              </div>
            </info-areas>
          </div>
        </div>
      </div>
    </div>
    <!-- end Features 3 -->

    <!-- Features 4 -->
    <div class="section section-features-4">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-66 md-medium-size-100 mx-auto text-center"
          >
            <h2 class="title">
              Your life will be much easier
            </h2>
            <h5 class="description">
              This is the paragraph where you can write more details about your
              product. Keep you user engaged by providing meaningful
              information.
            </h5>
          </div>
        </div>
        <div class="md-layout">
          <div class="md-layout-item md-size-25 md-small-size-100 ml-auto">
            <info-areas
              info-horizontal
              icon-color="info"
              icon="code"
            >
              <h4
                slot="title"
                class="info-title"
              >
                For Developers
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
            <info-areas
              info-horizontal
              icon-color="danger"
              icon="format_paint"
            >
              <h4
                slot="title"
                class="info-title"
              >
                For Designers
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-25 md-small-size-100">
            <div class="phone-container">
              <img :src="iphone2">
            </div>
          </div>
          <div class="md-layout-item md-size-25 md-small-size-100 mr-auto">
            <info-areas
              info-horizontal
              icon-color="primary"
              icon="dashboard"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Bootstrap Grid
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
              </div>
            </info-areas>
            <info-areas
              info-horizontal
              icon-color="success"
              icon="view_carousel"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Example Pages Included
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  Divide details about your product or agency work into parts.
                  Write a few lines about each one. A paragraph describing a
                  feature will be enough.
                </p>
              </div>
            </info-areas>
          </div>
        </div>
      </div>
    </div>
    <!-- end Features 4 -->

    <!-- Features 5 -->
    <div
      class="section section-features-5"
      :style="features5"
    >
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-66 md-small-size-100 mx-auto text-center"
          >
            <h2 class="title">
              Your life will be much easier
            </h2>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="md-layout">
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              text-center
              icon="code"
            >
              <h4
                slot="title"
                class="info-title"
              >
                For Developers
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              text-center
              icon="format_paint"
            >
              <h4
                slot="title"
                class="info-title"
              >
                For Designers
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              text-center
              icon="dashboard"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Bootstrap Grid
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
          </div>
        </div>
        <div class="md-layout">
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              text-center
              icon="view_carousel"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Example Pages Included
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              text-center
              icon="access_time"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Save Time
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
          </div>
          <div class="md-layout-item md-size-33 md-small-size-100">
            <info-areas
              text-center
              icon="attach_money"
            >
              <h4
                slot="title"
                class="info-title"
              >
                Save Money
              </h4>
              <div
                slot="content"
                class="description"
              >
                <p>
                  The moment you use Material Kit, you know you’ve never felt
                  anything like it. With a single use, this powerfull UI Kit
                  lets you do more than ever before.
                </p>
              </div>
            </info-areas>
          </div>
        </div>
      </div>
    </div>
    <!-- end Features 5 -->
  </div>
</template>

<script>
import { InfoAreas } from "@/components";

export default {
  name: "Features",
  components: {
    InfoAreas
  },
  data() {
    return {
      iphone: require("@/assets/img/sections/iphone.png"),
      iphone2: require("@/assets/img/sections/iphone2.png"),
      image: require("@/assets/img/bg9.jpg")
    };
  },
  computed: {
    features5() {
      return {
        backgroundImage: `url(${this.image})`
      };
    }
  }
};
</script>

<style lang="scss"></style>
