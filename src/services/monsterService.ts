import * as monsterRepository from "../repositories/monsterRepository.js";
import { notFoundError } from "../utils/errorUtils.js";

export async function getAll(page: number) {
  return await monsterRepository.findAll(page);
}

export async function getByProperty(page: number, property: string) {
  return await monsterRepository.findByProperty(page, property);
}

export async function getByRace(page: number, race: string) {
  return await monsterRepository.findByRace(page, race);
}

export async function getByRaceAndProperty(
  page: number,
  race: string,
  property: string
) {
  return await monsterRepository.findByRaceAndProperty(page, race, property);
}

export async function getById(id: number) {
  const monster = await monsterRepository.findById(id);
  if (!monster) notFoundError("Monster not found");

  return monster;
}
