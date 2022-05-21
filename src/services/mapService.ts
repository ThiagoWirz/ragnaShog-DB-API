import * as mapRepository from "../repositories/mapRepository.js";
import { notFoundError } from "../utils/errorUtils.js";

export async function getAll(page: number) {
  return await mapRepository.findAll(page);
}

export async function getByRegion(page: number, region: string) {
  return await mapRepository.findByRegion(page, region);
}

export async function getById(id: number) {
  const map = await mapRepository.findById(id);
  if (!map) notFoundError("Map not found");

  return map;
}
