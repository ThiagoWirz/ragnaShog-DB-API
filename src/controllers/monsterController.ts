import { Request, Response } from "express";
import * as monsterService from "../services/monsterService.js";

export async function getAll(req: Request, res: Response) {
  let monsters = {};
  const { page, race, property } = req.query as {
    page: string;
    race: string;
    property: string;
  };
  if (!race && !property) {
    monsters = await monsterService.getAll(parseInt(page));
  } else if (!race) {
    monsters = await monsterService.getByProperty(parseInt(page), property);
  } else if (!property) {
    monsters = await monsterService.getByRace(parseInt(page), race);
  } else {
    monsters = await monsterService.getByRaceAndProperty(
      parseInt(page),
      race,
      property
    );
  }
  res.status(200).send(monsters);
}

export async function getById(req: Request, res: Response) {
  const { id } = req.params;

  const { monster, propertiesTable } = await monsterService.getById(
    parseInt(id)
  );

  res.status(200).send({ monster, propertiesTable });
}
