import { PrismaClient, Adidas } from "@prisma/client";
import { jsonObj } from "./data";

const prisma = new PrismaClient({});

async function main() {
  const adidasCreateManyInputs: Adidas[] = jsonObj.map((item: any) => {
    return {
      index: Number(item.index),
      url: item.url,
      name: item.name,
      sku: item.sku,
      selling_price: Number(item.selling_price),
      original_price: item.original_price,
      currency: item.currency,
      availability: item.availability,
      color: item.color,
      category: item.category,
      source: item.source,
      source_website: item.source_website,
      breadcrumbs: item.breadcrumbs,
      description: item.description,
      brand: item.brand,
      images: item.images,
      country: item.country,
      language: item.language,
      average_rating: Number(item.average_rating),
      reviews_count: Number(item.reviews_count),
      crawled_at: new Date(item.crawled_at),
    };
  });

  await prisma.adidas.createMany({
    data: adidasCreateManyInputs,
    skipDuplicates: true,
  });
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
