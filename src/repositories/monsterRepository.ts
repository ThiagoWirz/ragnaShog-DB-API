import { connection } from "../db.js";

export async function findAll(page: number) {
  const OFFSET = page * 10 - 10;

  return await connection.monster.findMany({
    include: {
      stats: {
        include: {
          property: true,
          race: true,
          size: true,
        },
      },
    },
    take: 10,
    skip: OFFSET,
  });
}

export async function findByProperty(page: number, property: string) {
  const OFFSET = page * 10 - 10;

  return await connection.monster.findMany({
    include: {
      stats: {
        include: {
          property: true,
          race: true,
          size: true,
        },
      },
    },
    where: {
      stats: {
        property: {
          name: property,
        },
      },
    },
    take: 10,
    skip: OFFSET,
  });
}
export async function findByRace(page: number, race: string) {
  const OFFSET = page * 10 - 10;

  return await connection.monster.findMany({
    include: {
      stats: {
        include: {
          property: true,
          race: true,
          size: true,
        },
      },
    },
    where: {
      stats: {
        race: {
          name: race,
        },
      },
    },
    take: 10,
    skip: OFFSET,
  });
}
export async function findByRaceAndProperty(
  page: number,
  race: string,
  property: string
) {
  const OFFSET = page * 10 - 10;

  return await connection.monster.findMany({
    include: {
      stats: {
        include: {
          property: true,
          race: true,
          size: true,
        },
      },
    },
    where: {
      stats: {
        property: {
          name: property,
        },
        race: {
          name: race,
        },
      },
    },
    take: 10,
    skip: OFFSET,
  });
}

export async function findById(id: number) {
  return await connection.monster.findUnique({
    where: {
      id,
    },
    include: {
      stats: {
        include: {
          property: true,
          race: true,
          size: true,
        },
      },
      mapMonster: {
        include: {
          map: true,
        },
      },
      itemMonster: {
        include: {
          item: {
            select: {
              name: true,
              category: true,
              spriteUrl: true,
              price: true,
            },
          },
        },
      },
    },
  });
}
