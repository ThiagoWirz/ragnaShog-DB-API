import * as itemRepository from "../repositories/itemRepository.js";
import { notFoundError } from "../utils/errorUtils.js";

export async function getAll(page: number) {
  return await itemRepository.findAll(page);
}

export async function getByEquip(page: number) {
  return await itemRepository.findByEquip(page);
}

export async function getByCategory(page: number, category: string) {
  return await itemRepository.findByCategory(page, category);
}

export async function getById(id: number) {
  const item = await itemRepository.findById(id);
  if (!item) notFoundError("Item not found");

  return item;
}
