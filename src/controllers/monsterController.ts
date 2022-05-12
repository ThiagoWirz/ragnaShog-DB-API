import { Request, Response } from "express";
import * as monsterService from "../services/monsterService.js";

export async function getAll(req: Request, res: Response) {
  const monsters = await monsterService.getAll();

  res.status(200).send(monsters);
}
