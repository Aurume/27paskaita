--SELECT *
--FROM cars
--WHERE year BETWEEN 1990 AND 1993

--visi kurie prasideda simboliu V.
--SELECT *
--FROM cars
--WHERE make like "V%"

--kur antra A raide
--SELECT *
--FROM cars
--WHERE make like "_a%"

--- 3 pabraukimai, 3 simboliai
--SELECT *
--FROM cars
--WHERE make like "___"

--kur nenurodyti duomenys - pvz spalvos. galima ir NOT NULL
--SELECT *
--FROM cars
--WHERE color is NULL

--kuriu kaina didesne uz 40000.
--SELECT *
--FROM cars
--WHERE make = "Ford"
--OR price > 40000

--SELECT *
--FROM cars
--WHERE make = "Ford"
--OR year > 2012

--isrenka masinos modelius kurie yra ne kia, ne ford ,ir ne auudi.
--SELECT *
--FROM cars
--WHERE make NOT in ("Ford", "Audi", "Kia")

--cia isrinks visas volvo(bet kokia kaina) ir fordus su pasirinkta kaina.
--SELECT *
--FROM cars
--WHERE make = "Volvo" or(make = "Ford" AND price BETWEEN 10000 AND 50000)

--cia isrinks  volvo ir ford su pasirinkta kainOS reziu.
--SELECT *
--FROM cars
--WHERE (make = "Volvo" OR make = "Ford") AND price BETWEEN 10000 AND 50000

-- sujungia pavadinimus
--SELECT
--make || model AS "pilnas_vardas", year
--FROM cars;

--skaiciuoti automobilio amziu metais.
--SELECT make, model, 2023 - year as "amzius"
--FROM cars

--isrinkti zodzius, nekreipiant demesio i didziasias, mazasias. tiesiog zodi
--SELECT *
--FROM cars
--WHERE make = "toyota" COLLATE NOCASE

--kaina suapvalinta su dviem skaiciais po kablelio ir be pvm
--SELECT make, model, price, ROUND(price / 121.0 * 100, 2) AS "be PVM"
--FROM cars

--kokios spalvos automobilis brangiausias
--SELECT color, max(price)
--FROM cars
--GROUP BY color
--ORDER BY price DESC

--MASINOS ir modeliai kurie yra ne tie trys parasyti
--SELECT make, model
--FROM cars
--WHERE make NOT IN ("Toyota", "Mercury", "Volvo")

--brangiausios masinos, ne senesnes nei 2007 metu ir nera toyotu, volvu, mercury.
--SELECT make, model, year, max(price)
--FROM cars
--WHERE make NOT IN ("Toyota", "Mercury", "Volvo")
--GROUP BY make
--HAVING year > 2007
--ORDER BY make

-- pagal kaina ORDER by
--SELECT make, model, year, max(price)
--FROM cars
--WHERE make NOT IN ("Toyota", "Mercury", "Volvo")
--GROUP BY price
--HAVING year > 2007
--ORDER BY make