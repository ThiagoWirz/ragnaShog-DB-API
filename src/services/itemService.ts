import * as itemRepository from "../repositories/itemRepository.js";
import { notFoundError } from "../utils/errorUtils.js";

export async function getAll() {
  return await itemRepository.findAll();
}

export async function getById(id: number) {
  const item = await itemRepository.findById(id);
  if (!item) notFoundError("Item not found");

  return item;
}
