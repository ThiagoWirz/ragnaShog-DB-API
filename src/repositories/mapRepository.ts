import { connection } from "../db.js";

export async function findAll(page: number) {
  const OFFSET = page * 5 - 5;
  return await connection.map.findMany({
    include: {
      mapMonster: {
        include: {
          monster: {
            select: {
              name: true,
            },
          },
        },
      },
    },
    take: 5,
    skip: OFFSET,
  });
}

export async function findByRegion(page: number, region: string) {
  const OFFSET = page * 5 - 5;
  return await connection.map.findMany({
    include: {
      mapMonster: {
        include: {
          monster: {
            select: {
              name: true,
            },
          },
        },
      },
    },
    where: {
      region: {
        name: region,
      },
    },
    take: 5,
    skip: OFFSET,
  });
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
