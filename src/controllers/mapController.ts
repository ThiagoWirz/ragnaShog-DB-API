import { Request, Response } from "express";
import * as mapService from "../services/mapService.js";

export async function getAll(req: Request, res: Response) {
  const maps = await mapService.getAll();

  res.status(200).send(maps);
}

export async function getById(req: Request, res: Response) {
  const { id } = req.params;

  const map = await mapService.getById(parseInt(id));

  res.status(200).send(map);
}
