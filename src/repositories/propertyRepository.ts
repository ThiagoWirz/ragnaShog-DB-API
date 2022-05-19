import { connection } from "../db.js";

export async function getPropertyTable(id: number) {
  return await connection.propertyBonus.findMany({
    where: {
      defPropertyId: id,
    },
    include: {
      atkProperty: {
        select: {
          name: true,
        },
      },
    },
  });
}
