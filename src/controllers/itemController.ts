import { Request, Response } from "express";
import * as itemService from "../services/itemService.js";

export async function getAll(req: Request, res: Response) {
  let itens = {};
  const { page, category } = req.query as { page: string; category: string };

  if (!category) itens = await itemService.getAll(parseInt(page));
  else if (category === "Equipamento")
    itens = await itemService.getByEquip(parseInt(page));
  else itens = await itemService.getByCategory(parseInt(page), category);

  res.status(200).send(itens);
}

export async function getById(req: Request, res: Response) {
  const { id } = req.params;
  const item = await itemService.getById(parseInt(id));

  res.status(200).send(item);
}
