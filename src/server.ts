import app from "./app.js";
import "./setup.js";

const PORT = +process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Running on port ${PORT}`);
});
