import * as mapRepository from "../repositories/mapRepository.js";

export async function getAll() {
  return await mapRepository.findAll();
}
