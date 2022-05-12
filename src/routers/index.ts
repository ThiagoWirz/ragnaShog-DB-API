import { Router } from "express";
import monsterRouter from "./monsterRouter.js";
import mapRouter from "./mapRouter.js";

const router: Router = Router();

router.use(monsterRouter);
router.use(mapRouter);

export default router;
