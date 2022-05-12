/*
  Warnings:

  - You are about to drop the column `atack` on the `itens` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "itens" DROP COLUMN "atack",
ADD COLUMN     "attack" INTEGER;
