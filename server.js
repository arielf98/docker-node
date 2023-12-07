import express from "express";

const app = express();
const PORT = 8080;

app.get("/", (req, res) => {
  res.send("simple node js with docker in vps");
});

app.get("/add-cookie", (req, res) => {
  const cookies = req.cookies?.user;

  const user = ["Ariel", "Orie"];

  if (cookies === undefined) {
    res.cookie("user", JSON.stringify(user), {
      maxAge: 900000,
      httpOnly: true,
      sameSite: "lax",
    });
    res.json({ message: "cookie created" });
  }
});

app.listen(PORT, () => {
  console.log(`App running on port: ${PORT}`);
});
