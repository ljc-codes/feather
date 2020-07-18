const ApolloServer  = require("apollo-server");
const ApolloGateway = require("@apollo/gateway");

const gateway = new ApolloGateway.ApolloGateway({
    serviceList: [
        {name: "microservice_0",url:"http://127.0.0.1:3000"},
        {name: "microservice_1",url:"http://127.0.0.1:4000"},

    ]
});

const server = new ApolloServer.ApolloServer({
    gateway,
    introspection: true,
    playground: true,
    subscriptions: false,
    context: ({ req }) => ({
        headers: req.headers
    })
});

const port = process.env.PORT || 3000;

server.listen(port).then(({ url }) => {
    console.log(`🌟 graphql api gateway launched at: ${url} :) `);
})