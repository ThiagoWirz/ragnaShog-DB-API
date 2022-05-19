import { Router } from "express";
import monsterRouter from "./monsterRouter.js";
import mapRouter from "./mapRouter.js";
import itemRouter from "./itemRouter.js";

const router: Router = Router();

router.use(monsterRouter);
router.use(mapRouter);
router.use(itemRouter);

export default router;
