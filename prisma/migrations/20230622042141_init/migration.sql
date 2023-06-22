/*
  Warnings:

  - You are about to drop the column `review_count` on the `Adidas` table. All the data in the column will be lost.
  - Added the required column `reviews_count` to the `Adidas` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Adidas" DROP COLUMN "review_count",
ADD COLUMN     "reviews_count" INTEGER NOT NULL;
