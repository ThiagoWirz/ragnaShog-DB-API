import { connection } from "../db.js";

export async function findAll() {
  return await connection.item.findMany({});
}

export async function findById(id: number) {
  return await connection.item.findUnique({
    where: {
      id,
    },
    include: {
      itemMonster: {
        include: {
          monster: true,
        },
      },
    },
  });
}
