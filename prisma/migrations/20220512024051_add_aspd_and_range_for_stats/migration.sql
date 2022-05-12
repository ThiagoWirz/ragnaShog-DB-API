/*
  Warnings:

  - Added the required column `aspd` to the `stats` table without a default value. This is not possible if the table is not empty.
  - Added the required column `range` to the `stats` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "stats" ADD COLUMN     "aspd" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "range" INTEGER NOT NULL;
