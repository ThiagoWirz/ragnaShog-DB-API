/*
  Warnings:

  - Added the required column `movSpeed` to the `stats` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "stats" ADD COLUMN     "movSpeed" DOUBLE PRECISION NOT NULL;
