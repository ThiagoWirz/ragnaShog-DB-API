import * as monsterRepository from "../repositories/monsterRepository.js";

export async function getAll() {
  const monsters = await monsterRepository.findAll();

  return monsters;
}
