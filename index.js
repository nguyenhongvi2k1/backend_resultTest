const executeSQL = require("./SQLExcutor").executeSQL;

const express = require("express");
const cors = require("cors");
const app = express();
const port = 8000;
app.use(cors());
app.use(express.json());

app.get("/", async(req, res) => {
    const result = await executeSQL("select * from username");
    res.send(result.rows);
    // console.log(result);
});

app.get("/job", async(req, res) => {
  const result = await executeSQL("select * from job");
  res.send(result.rows);
  // console.log(result);
});
app.get("/website/:style", async(req, res) => {
  var { style } = req.params;
  // console.log(req.params)
  const sql_query = `select role, category from website where style = '${style}'`;
  // console.log(sql_query);
  try {
    const result = await executeSQL(sql_query);
    // console.log(result)
    res.send(result.rows)
    // console.log(result.rows);
  } catch (error) {
    console.log(error);
    res.sendStatus(400);
  }
});

app.get("/template", async(req, res) => {
  const result = await executeSQL("select * from template");
  res.send(result.rows);
  console.log(result);
});

app.get("/join/:category", async(req, res) => {
  var { category } = req.params;
  console.log(req.params)
  const sql_query = `select * from template JOIN website ON website.id_web = template.id_web where category = '${category}'`;
  // console.log(sql_query);
  try {
    const result = await executeSQL(sql_query);
    // console.log(result)
    res.send(result.rows)
    // console.log(result.rows);
  } catch (error) {
    console.log(error);
    res.sendStatus(400);
  }
});
app.get("/join", async(req, res) => {
  const result = await executeSQL("select * from template JOIN website ON website.id_web = template.id_web");
  res.send(result.rows);
  // console.log(result);
});



app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
