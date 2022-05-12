import { Router } from "express";
import * as monsterController from "../controllers/monsterController.js";

const monsterRouter = Router();

monsterRouter.get("/monsters", monsterController.getAll);

export default monsterRouter;
