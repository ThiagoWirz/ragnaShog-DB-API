-- AlterTable
ALTER TABLE "borders" ADD COLUMN     "location" TEXT;

-- AlterTable
ALTER TABLE "maps" ADD COLUMN     "isDungeon" BOOLEAN NOT NULL DEFAULT false;
