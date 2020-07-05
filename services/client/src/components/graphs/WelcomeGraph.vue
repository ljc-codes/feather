<template>
<body>
  <div id="app">
    <d3-network ref='net' :net-nodes="nodes" :net-links="links" :options="options" />
  </div>
</body>
</template>

    
<script>
import D3Network from 'vue-d3-network'
var node_json = require('@/data/graphs/welcome_nodes.json'); 
var link_json = require('@/data/graphs/welcome_links.json'); 
export default {
  name : 'welcomegraph',
  components: {
    D3Network
  },
  data () {
    return {
      nodes: node_json,
      links: link_json,
      title: ''
    }
  },
  computed:{
    options(){
      return{
        force: 3000,
        size: {w : 500, h: 350},
        nodeLabels:true,
        linkLabels:false
      }
    }
  },
  methods: {
    nodeClick(event,node){
      this.title = node.name;
    }
},

}
</script>

<style src="vue-d3-network/dist/vue-d3-network.css"></style>