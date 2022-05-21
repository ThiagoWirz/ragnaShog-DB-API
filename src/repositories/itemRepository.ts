import { connection } from "../db.js";

export async function findAll(page: number) {
  const OFFSET = page * 20 - 20;
  return await connection.item.findMany({
    take: 20,
    skip: OFFSET,
  });
}

export async function findByEquip(page: number) {
  const OFFSET = page * 20 - 20;
  return await connection.item.findMany({
    where: {
      isEquip: true,
    },
    take: 20,
    skip: OFFSET,
  });
}

export async function findByCategory(page: number, category: string) {
  const OFFSET = page * 20 - 20;
  return await connection.item.findMany({
    where: {
      category,
    },
    take: 20,
    skip: OFFSET,
  });
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
