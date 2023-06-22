import * as fs from "fs";
import * as path from "path";

const jsonFilePath = path.join(__dirname, "../data/adidas_usa.json");

const data = fs.readFileSync(jsonFilePath, "utf8");
const jsonObj = JSON.parse(data);

// sort by average_rating
jsonObj.sort((a: any, b: any) => {
  // convert to number
  a.average_rating = +a.average_rating;
  b.average_rating = +b.average_rating;
  return b.average_rating - a.average_rating;
});


// show 10% data from top
const sortedData = jsonObj.slice(0, Math.round(jsonObj.length * 0.1));

console.log(sortedData);
