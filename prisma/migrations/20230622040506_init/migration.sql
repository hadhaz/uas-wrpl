-- CreateTable
CREATE TABLE "Adidas" (
    "index" INTEGER NOT NULL,
    "url" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "sku" TEXT NOT NULL,
    "selling_price" INTEGER NOT NULL,
    "original_price" INTEGER NOT NULL,
    "currency" TEXT NOT NULL,
    "availibility" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "catgory" TEXT NOT NULL,
    "source" TEXT NOT NULL,
    "source_website" TEXT NOT NULL,
    "breadcrumbs" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "images" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "language" TEXT NOT NULL,
    "average_rating" DOUBLE PRECISION NOT NULL,
    "review_count" INTEGER NOT NULL,
    "crawled_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Adidas_pkey" PRIMARY KEY ("index")
);
