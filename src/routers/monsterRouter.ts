import { Router } from "express";
import * as monsterController from "../controllers/monsterController.js";

const monsterRouter = Router();

monsterRouter.get("/monsters", monsterController.getAll);
monsterRouter.get("/monsters/:id", monsterController.getById);

export default monsterRouter;
