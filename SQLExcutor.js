const { Pool, Client } = require("pg");

const credentials = {
  user: "postgres",
  host: "localhost",
  database: "postgres",
  password: "123123123",
  port: 5432,
};


// Connect with a client.

const executeSQL = async (sql_query) => {
  const client = new Client(credentials);
  await client.connect();
  const result = await client.query(sql_query);
  await client.end();

  return result;
}

module.exports = { executeSQL }