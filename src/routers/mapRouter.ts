import { Router } from "express";
import * as mapController from "../controllers/mapController.js";

const mapRouter = Router();

mapRouter.get("/maps", mapController.getAll);

export default mapRouter;
