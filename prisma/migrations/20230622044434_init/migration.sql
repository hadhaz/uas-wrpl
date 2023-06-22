/*
  Warnings:

  - The primary key for the `Adidas` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Changed the type of `index` on the `Adidas` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `selling_price` on the `Adidas` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `original_price` on the `Adidas` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `average_rating` on the `Adidas` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `crawled_at` on the `Adidas` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `reviews_count` on the `Adidas` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Adidas" DROP CONSTRAINT "Adidas_pkey",
DROP COLUMN "index",
ADD COLUMN     "index" INTEGER NOT NULL,
DROP COLUMN "selling_price",
ADD COLUMN     "selling_price" INTEGER NOT NULL,
DROP COLUMN "original_price",
ADD COLUMN     "original_price" INTEGER NOT NULL,
DROP COLUMN "average_rating",
ADD COLUMN     "average_rating" DOUBLE PRECISION NOT NULL,
DROP COLUMN "crawled_at",
ADD COLUMN     "crawled_at" TIMESTAMP(3) NOT NULL,
DROP COLUMN "reviews_count",
ADD COLUMN     "reviews_count" INTEGER NOT NULL,
ADD CONSTRAINT "Adidas_pkey" PRIMARY KEY ("index");
