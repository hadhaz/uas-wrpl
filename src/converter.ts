import * as fs from "fs";
import * as path from "path";
import csv from "csvtojson";

const csvFilePath = path.join(__dirname, "../data/adidas_usa.scv.csv");
const jsonFilePath = path.join(__dirname, "../data/adidas_usa.json");

csv()
  .fromFile(csvFilePath)
  .then((jsonObj: any) => {
    fs.writeFileSync(jsonFilePath, JSON.stringify(jsonObj));
  });
