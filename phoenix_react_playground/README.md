### Setup Phoenix: 

Phoenix -  `mix phx.new <name-of-app>`

Fetch and install dependencies? [Yn] <y>


`cd <name-of-app>` 

Phoenix assumes you're using Postgres for your database.

`mix ecto.create` to create your database for this project. Ecto is a database wrapper for Elixir.

changed {:cowboy, "~> 1.0"} t0 {:plug_cowboy, "~> 1.0"} in mix.exs


`mix phx.server`


//////


Migration:

`mix phx.gen.context Accounts User users name:string email:string` => User model that is a part of the Accounts context. Creates both the migration file and the schema file for Users. A context is a module that groups functionality.

`mix ecto.migrate` => to run migrations

`mix test` => run built in tests



Dependancies: 

Add the following to mix.exs:

      {:absinthe, "~> 1.4"},
      {:absinthe_ecto, "~> 0.1.3"},
      {:absinthe_plug, "~> 1.4"},
      {:absinthe_phoenix, "~> 1.4.0"},
      {:cors_plug, "~> 2.0"},

The first four packages are related to Absinthe, a popular Elixir library for implementing a GraphQL server. We need the CORS plug to grant permission to the client to make requests.

`mix deps.get`


### Add React frontend:

`npx create-react-app client` => creates a client directory with create-react-app

`cd client && yarn start`


Dependancies: 

  `cd client`

 `yarn add @absinthe/socket @absinthe/socket-apollo-link apollo-boost graphql graphql-tag react-apollo`

 Absinthe is a popular Elixir library for implementing a GraphQL server. Apollo is a popular JS library for consuming a GraphQL API.



### Other notes:

- In GraphQL, mutations are how the client can create, update, or delete an object.
- A resolver is a function that returns something back to the client.
