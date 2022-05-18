-- CreateTable
CREATE TABLE "PropertyBonus" (
    "id" SERIAL NOT NULL,
    "defPropertyId" INTEGER NOT NULL,
    "atkPropertyId" INTEGER NOT NULL,
    "bonus" INTEGER NOT NULL,

    CONSTRAINT "PropertyBonus_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "PropertyBonus" ADD CONSTRAINT "PropertyBonus_defPropertyId_fkey" FOREIGN KEY ("defPropertyId") REFERENCES "properties"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PropertyBonus" ADD CONSTRAINT "PropertyBonus_atkPropertyId_fkey" FOREIGN KEY ("atkPropertyId") REFERENCES "properties"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
