import { connection } from "../db.js";

export async function findAll() {
  return await connection.map.findMany({});
}

export async function findById(id: number) {
  return await connection.map.findUnique({
    where: {
      id,
    },
    include: {
      mapMonster: {
        include: {
          monster: {
            include: {
              stats: {
                select: {
                  size: true,
                  race: true,
                  property: true,
                },
              },
            },
          },
        },
      },
      entrance: {
        include: {
          mapExit: true,
        },
      },
    },
  });
}
