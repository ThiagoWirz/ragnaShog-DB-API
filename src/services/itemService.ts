import * as itemRepository from "../repositories/itemRepository.js";

export async function getAll() {
  return await itemRepository.findAll();
}
