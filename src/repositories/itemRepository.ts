import { connection } from "../db.js";

export async function findAll() {
  return await connection.item.findMany({});
}
