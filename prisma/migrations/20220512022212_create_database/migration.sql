-- CreateTable
CREATE TABLE "regions" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "regions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "maps" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "regionId" INTEGER NOT NULL,

    CONSTRAINT "maps_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "borders" (
    "id" SERIAL NOT NULL,
    "mapEntranceId" INTEGER NOT NULL,
    "mapExitId" INTEGER NOT NULL,

    CONSTRAINT "borders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sizes" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "sizes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "races" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "races_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "properties" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "level" INTEGER NOT NULL,

    CONSTRAINT "properties_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "stats" (
    "id" SERIAL NOT NULL,
    "attackMin" INTEGER NOT NULL,
    "attackMax" INTEGER NOT NULL,
    "mAttackMin" INTEGER NOT NULL,
    "mAttackMax" INTEGER NOT NULL,
    "expBase" INTEGER NOT NULL,
    "expJob" INTEGER NOT NULL,
    "level" INTEGER NOT NULL,
    "hp" INTEGER NOT NULL,
    "def" INTEGER NOT NULL,
    "mDef" INTEGER NOT NULL,
    "str" INTEGER NOT NULL,
    "agi" INTEGER NOT NULL,
    "vit" INTEGER NOT NULL,
    "int" INTEGER NOT NULL,
    "dex" INTEGER NOT NULL,
    "luk" INTEGER NOT NULL,
    "flee" INTEGER NOT NULL,
    "hit" INTEGER NOT NULL,
    "isBoss" BOOLEAN NOT NULL,
    "isAgressive" BOOLEAN NOT NULL,
    "helpAllies" BOOLEAN NOT NULL,
    "castDetect" BOOLEAN NOT NULL,
    "isLooter" BOOLEAN NOT NULL,
    "spawnFixed" BOOLEAN NOT NULL,
    "changeTarget" BOOLEAN NOT NULL,
    "hideDetect" BOOLEAN NOT NULL,
    "propertyId" INTEGER NOT NULL,
    "raceId" INTEGER NOT NULL,
    "sizeId" INTEGER NOT NULL,

    CONSTRAINT "stats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monsters" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "spriteUrl" TEXT NOT NULL,
    "statsId" INTEGER NOT NULL,

    CONSTRAINT "monsters_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "mapsMonsters" (
    "id" SERIAL NOT NULL,
    "mapId" INTEGER NOT NULL,
    "monsterId" INTEGER NOT NULL,
    "spawnRate" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "mapsMonsters_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "skills" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "skillLevel" INTEGER NOT NULL,
    "propertyId" INTEGER NOT NULL,

    CONSTRAINT "skills_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monstersSkills" (
    "id" SERIAL NOT NULL,
    "skillId" INTEGER NOT NULL,
    "monsterId" INTEGER NOT NULL,
    "castTime" INTEGER NOT NULL,

    CONSTRAINT "monstersSkills_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "itens" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "weight" INTEGER NOT NULL,
    "atack" INTEGER,
    "defense" INTEGER,
    "slot" INTEGER,
    "effects" TEXT,
    "price" INTEGER NOT NULL,
    "isEquip" BOOLEAN NOT NULL,
    "propertyId" INTEGER NOT NULL,

    CONSTRAINT "itens_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "itensMonsters" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER NOT NULL,
    "monsterId" INTEGER NOT NULL,
    "dropRate" INTEGER NOT NULL,

    CONSTRAINT "itensMonsters_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "regions_name_key" ON "regions"("name");

-- CreateIndex
CREATE UNIQUE INDEX "maps_name_key" ON "maps"("name");

-- CreateIndex
CREATE UNIQUE INDEX "sizes_name_key" ON "sizes"("name");

-- CreateIndex
CREATE UNIQUE INDEX "races_name_key" ON "races"("name");

-- AddForeignKey
ALTER TABLE "maps" ADD CONSTRAINT "maps_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "regions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "borders" ADD CONSTRAINT "borders_mapEntranceId_fkey" FOREIGN KEY ("mapEntranceId") REFERENCES "maps"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "borders" ADD CONSTRAINT "borders_mapExitId_fkey" FOREIGN KEY ("mapExitId") REFERENCES "maps"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stats" ADD CONSTRAINT "stats_sizeId_fkey" FOREIGN KEY ("sizeId") REFERENCES "sizes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stats" ADD CONSTRAINT "stats_raceId_fkey" FOREIGN KEY ("raceId") REFERENCES "races"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stats" ADD CONSTRAINT "stats_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES "properties"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monsters" ADD CONSTRAINT "monsters_statsId_fkey" FOREIGN KEY ("statsId") REFERENCES "stats"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mapsMonsters" ADD CONSTRAINT "mapsMonsters_mapId_fkey" FOREIGN KEY ("mapId") REFERENCES "maps"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mapsMonsters" ADD CONSTRAINT "mapsMonsters_monsterId_fkey" FOREIGN KEY ("monsterId") REFERENCES "monsters"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skills" ADD CONSTRAINT "skills_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES "properties"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monstersSkills" ADD CONSTRAINT "monstersSkills_monsterId_fkey" FOREIGN KEY ("monsterId") REFERENCES "monsters"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monstersSkills" ADD CONSTRAINT "monstersSkills_skillId_fkey" FOREIGN KEY ("skillId") REFERENCES "skills"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itens" ADD CONSTRAINT "itens_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES "properties"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itensMonsters" ADD CONSTRAINT "itensMonsters_monsterId_fkey" FOREIGN KEY ("monsterId") REFERENCES "monsters"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "itensMonsters" ADD CONSTRAINT "itensMonsters_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "itens"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
