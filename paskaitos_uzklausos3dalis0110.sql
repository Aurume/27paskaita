--SELECT *
--FROM person, car
--JOIN company ON person.company_id = company_id

--sujungta vardas, pavarde, numeris(numeris yra antroj)
--SELECT person.first_name, person.last_name, car.plate
--FROM person, car
--WHERE person.car_id = car_id

--jungiam tris lenteles
--SELECT company.name, car.plate, person.first_name, company.name
--FROM person
--JOIN car ON person.car_id = car.id
--JOIN company ON person.company_id = company.id
--ORDER BY name

--kiek kur dirba zmoniu
--SELECT company.name, count()
--FROM person
--JOIN company ON person.company_id = company.id
--GROUP BY company.name

-- kiek yra apple automobiliu numeriai
--SELECT car.plate, company.name
--FROM person
--JOIN car ON person.car_id = car.id
--JOIN company ON person.company_id = company.id
--WHERE company.name = "Apple"

