import app from "./app.js";
import "./setup.js";

const PORT = +process.env.PORT;

app.listen(PORT, () => {
  console.log(`Running on port ${PORT}`);
});
