import { Router } from "express";
import * as mapController from "../controllers/mapController.js";

const mapRouter = Router();

mapRouter.get("/maps", mapController.getAll);
mapRouter.get("/maps/:id", mapController.getById);

export default mapRouter;
