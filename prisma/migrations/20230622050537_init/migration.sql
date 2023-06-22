/*
  Warnings:

  - You are about to drop the column `availibility` on the `Adidas` table. All the data in the column will be lost.
  - You are about to drop the column `catgory` on the `Adidas` table. All the data in the column will be lost.
  - Added the required column `availability` to the `Adidas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `category` to the `Adidas` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Adidas" DROP COLUMN "availibility",
DROP COLUMN "catgory",
ADD COLUMN     "availability" TEXT NOT NULL,
ADD COLUMN     "category" TEXT NOT NULL,
ALTER COLUMN "original_price" SET DATA TYPE TEXT;
