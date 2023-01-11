--1.Išrinkite darbuotojų vardus ir pavardes
--kartu su projekto pavadinimu, kuriame jie dirba.
--SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS
--FROM DARBUOTOJAS 
--JOIN PROJEKTAS
--ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID

--2.Išsirinkite darbuotojų dirbančių projekte Galerija 
--vardus, pavardes ir projekto pavadinimą.
--SELECT VARDAS, PAVARDĖ, PAVADINIMAS
--FROM DARBUOTOJAS
--JOIN PROJEKTAS ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
--WHERE PROJEKTAS.PAVADINIMAS = "Galerija"

--3.Išrinkite visus projekto Projektų valdymas vykdytojus
-- dirbančius Pardavimų skyriuje.
--SELECT *
--FROM DARBUOTOJAS
--JOIN SKYRIUS ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
--JOIN PROJEKTAS ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
--WHERE SKYRIUS.PAVADINIMAS = "Pardavimų" 
--AND PROJEKTAS.PAVADINIMAS = "Projektų valdymas"

--4.Išrinkite visas moteris, dirbančias projekte Projektų valdymas 
--ir išveskite į ekraną jų vardus, pavardes ir projekto pavadinimą.
--SELECT VARDAS, PAVARDĖ, PAVADINIMAS
--FROM DARBUOTOJAS, PROJEKTAS
--WHERE DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
--AND (ASMENS_KODAS LIKE "4%" OR ASMENS_KODAS LIKE "6%")
--AND PROJEKTAS.PAVADINIMAS = "Projektų valdymas"

--5.Išrinkite skyrių pavadinimus su juose dirbančių darbuotojų skaičiumi.
--SELECT SKYRIUS.PAVADINIMAS, count() AS kiek_viso_dirba
--FROM SKYRIUS
--JOIN DARBUOTOJAS
--ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
--GROUP BY SKYRIUS.PAVADINIMAS

--6.Apribokite #5 užklausos rezultatą taip,
-- kad rodytų tik tuos skyrius kur dirba bent 5 darbuotojai.
--SELECT SKYRIUS.PAVADINIMAS, count() AS kiek_viso_dirba
--FROM SKYRIUS
--JOIN DARBUOTOJAS
--ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
--GROUP BY SKYRIUS.PAVADINIMAS
--HAVING kiek_viso_dirba > 5

--7.Išrinkite darbuotojus (vardus, pavardes, pareigas) 
--kartu su skyrių, kuriuose jie dirba pavadinimais, 
--tačiau nesančius tų skyrių vadovais.
--SELECT DARBUOTOJAS.VARDAS, DARBUOTOJAS.PAVARDĖ, DARBUOTOJAS.PAREIGOS, SKYRIUS.PAVADINIMAS
--FROM DARBUOTOJAS
--JOIN SKYRIUS
--ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
--WHERE NOT PAREIGOS = "Vadovas"

--8.Sukurkite naują įrašą lentelėje “DARBUOTOJAS” 
--(asmens kodas: 38807117896, 
--vardas: Pranas, pavardė:Logis, 
--Dirba nuo: 2009-11-12, visa kita - Null).
--INSERT INTO DARBUOTOJAS(ASMENS_KODAS, VARDAS, PAVARDĖ, DIRBA_NUO)
--VALUES("38807117896", "Pranas", "Logis", "2009-11-12")

--9.Išrinkite darbuotojų vardus, pavardes ir skyriaus pavadinimą.
--Rodykite, net ir tuos darbuotojus, kurie nedirba jokiame skyriuje 
--(skyriaus pavadinimą pasiimkite iš lentelės SKYRIUS).
--SELECT DARBUOTOJAS.VARDAS, DARBUOTOJAS.PAVARDĖ, SKYRIUS.PAVADINIMAS
--FROM DARBUOTOJAS
--LEFT JOIN SKYRIUS
--ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID

--10.1# punkto užklausą pataisykite taip, 
--kad rodytų tik tuos vardus ir projektų pavadinimus 
--kuriuose dirba daugiau nei 4 darbuotojai.
--SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS
--FROM DARBUOTOJAS 
--JOIN PROJEKTAS
--ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
--WHERE PROJEKTAS_ID IN
--	(SELECT PROJEKTAS_ID 
--	FROM DARBUOTOJAS
--	GROUP BY PROJEKTAS_ID
--	HAVING count() > 4)

--11.Naujame stulpelyje parodyti 
--kiekvieno darbuotojo bazinio atlyginimo ir priedų sumą.
--SELECT VARDAS, PAVARDĖ, BAZINIS_ATLYGINIMAS, PRIEDAI,
--BAZINIS_ATLYGINIMAS + PRIEDAI AS "Viso:"
--FROM DARBUOTOJAS

--12.Parodyti bendrą atlyginimų, 
--priedų sumą, 
--vidutinį, 
--maksimalų, 
--minimalų atlyginimą.
--SELECT 
--sum(BAZINIS_ATLYGINIMAS) AS "VISO ATLYGIS:",
--sum(PRIEDAI) AS "VISO SUMA:",
--round(avg(BAZINIS_ATLYGINIMAS),1) AS "VIDUTINIS ATLYGIS:",
--max(BAZINIS_ATLYGINIMAS) AS "DIDŽIAUSIAS:",
--min(BAZINIS_ATLYGINIMAS) AS "MAŽIAUSIAS:"
--FROM DARBUOTOJAS


