import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import dotenv from 'dotenv';
import { ApolloServer } from 'apollo-server-express';
import { v1 as neo4j } from 'neo4j-driver';
import { makeAugmentedSchema } from 'neo4j-graphql-js';

import { typeDefs as typeDefsNeo4j } from './graphqlNeo4jSchema';


dotenv.config();
const {
  GRAPHQL_NEO4j_LISTEN_PORT,
  GRAPHQL_NEO4J_LISTEN_PATH,

  NEO4J_URI,
  NEO4J_USER,
  NEO4J_PASSWORD,

  API_HOST
} = process.env;


const app = express();
app.use(bodyParser.json());
app.use(bodyParser.text({ type: 'application/graphql' }));
app.use(cors());

const neo4jSchema = makeAugmentedSchema({
  typeDefs: typeDefsNeo4j
});

const neo4jDriver = neo4j.driver(
  NEO4J_URI || "bolt://localhost:7687",
  neo4j.auth.basic(
    NEO4J_USER || "neo4j",
    NEO4J_PASSWORD || "pass"
  )
);

const neo4jServer = new ApolloServer({
  context: { driver: neo4jDriver },
  schema: neo4jSchema
});

neo4jServer.applyMiddleware({
  app,
  path: GRAPHQL_NEO4J_LISTEN_PATH
});

app.listen( { port: GRAPHQL_NEO4j_LISTEN_PORT, host: API_HOST }, () =>
  console.log(`Server started at http://${API_HOST}:${GRAPHQL_NEO4j_LISTEN_PORT}${neo4jServer.graphqlPath}`)
);
