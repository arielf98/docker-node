import express from "express";

const app = express();
const PORT = 8080;

app.get("/", (req, res) => {
  res.send("simple node js with docker in vps");
});

app.listen(PORT, () => {
  console.log(`App running on port: ${PORT}`);
});
