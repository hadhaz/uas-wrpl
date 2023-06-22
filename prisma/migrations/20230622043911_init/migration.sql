/*
  Warnings:

  - The primary key for the `Adidas` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "Adidas" DROP CONSTRAINT "Adidas_pkey",
ALTER COLUMN "index" SET DATA TYPE TEXT,
ALTER COLUMN "selling_price" SET DATA TYPE TEXT,
ALTER COLUMN "original_price" SET DATA TYPE TEXT,
ALTER COLUMN "average_rating" SET DATA TYPE TEXT,
ALTER COLUMN "reviews_count" SET DATA TYPE TEXT,
ADD CONSTRAINT "Adidas_pkey" PRIMARY KEY ("index");
