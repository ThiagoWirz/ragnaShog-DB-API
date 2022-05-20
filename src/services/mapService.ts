import * as mapRepository from "../repositories/mapRepository.js";
import { notFoundError } from "../utils/errorUtils.js";

export async function getAll() {
  return await mapRepository.findAll();
}

export async function getById(id: number) {
  const map = await mapRepository.findById(id);
  if (!map) notFoundError("Map not found");

  return map;
}
