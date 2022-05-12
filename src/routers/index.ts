import { Router } from "express";
import monsterRouter from "./monsterRouter.js";

const router: Router = Router();

router.use(monsterRouter);

export default router;
