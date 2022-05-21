import { Router } from "express";
import * as itemController from "../controllers/itemController.js";

const itemRouter = Router();

itemRouter.get("/itens", itemController.getAll);
itemRouter.get("/itens/:id", itemController.getById);

export default itemRouter;
