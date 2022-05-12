import { Request, Response } from "express";
import * as itemService from "../services/itemService.js";

export async function getAll(req: Request, res: Response) {
  const itens = await itemService.getAll();

  res.status(200).send(itens);
}
