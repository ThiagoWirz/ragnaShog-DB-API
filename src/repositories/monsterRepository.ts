import { connection } from "../db.js";

export async function findAll() {
  const response = await connection.monster.findMany({});

  return response;
}
