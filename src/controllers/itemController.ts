import { Request, Response } from "express";
import * as itemService from "../services/itemService.js";

export async function getAll(req: Request, res: Response) {
  const itens = await itemService.getAll();

  res.status(200).send(itens);
}

export async function getById(req: Request, res: Response) {
  const { id } = req.params;
  const item = await itemService.getById(parseInt(id));

  res.status(200).send(item);
}
