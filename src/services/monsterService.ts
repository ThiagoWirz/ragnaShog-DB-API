import * as monsterRepository from "../repositories/monsterRepository.js";

export async function getAll() {
  return await monsterRepository.findAll();
}
