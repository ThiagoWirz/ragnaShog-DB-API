-- AlterTable
ALTER TABLE "itens" ADD COLUMN     "cardImageUrl" TEXT,
ADD COLUMN     "imageUrl" TEXT NOT NULL DEFAULT E'teste',
ADD COLUMN     "spriteUrl" TEXT NOT NULL DEFAULT E'teste';
