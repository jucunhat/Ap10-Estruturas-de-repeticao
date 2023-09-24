--Leia um conjunto não determinado de pares de valores M e N 
--(parar quando algum dos valores for menor ou igual a zero). 
--Para cada par lido, mostre a sequência do menor até o maior e a 
--soma dos inteiros consecutivos entre eles (incluindo o N e M).
DO
$$
DECLARE
	valor_a INT := valor_aleatorio_entre(1, 100);
	valor_b INT := valor_aleatorio_entre(1, 100);
	soma INT := 0;
BEGIN
	IF valor_a > valor_b THEN
		RAISE NOTICE 'Valor menor: %', valor_b;
		RAISE NOTICE 'Valor maior: %', valor_a;
		FOR i IN valor_b..valor_a LOOP
			RAISE NOTICE '%', i;
			soma = soma + i;
		END LOOP;
		RAISE NOTICE 'soma: %', soma;
	ELSE
		RAISE NOTICE 'Valor menor: %', valor_a;
		RAISE NOTICE 'Valor maior: %', valor_b;
		FOR i IN valor_a..valor_b LOOP
			RAISE NOTICE '%', i;
			soma = soma + i;
		END LOOP;
		RAISE NOTICE 'soma: %', soma;
	END IF;
END;
$$

--Leia 2 valores inteiros X e Y. A seguir, calcule e mostre a soma dos 
--números impares entre eles.
-- DO
-- $$
-- DECLARE
-- 	valores INT[] := ARRAY[
-- 	valor_aleatorio_entre(20, 50),
-- 	valor_aleatorio_entre(20, 50)
-- 	];
-- 	valor INT;
-- 	soma INT := 0;
-- BEGIN
-- 	FOREACH valor IN ARRAY valores LOOP
-- 		RAISE NOTICE '%', valor;
-- 	IF valor % 2 = 1 THEN
-- 		soma = soma + valor; 
-- 	END IF;
-- 	END LOOP;
-- RAISE NOTICE 'A soma dos ímpares é: %', soma;
-- END;
-- $$


--Faça um programa que leia 6 valores. Estes valores serão somente negativos 
--ou positivos (desconsidere os valores nulos). A seguir, mostre a 
--quantidade de valores positivos digitados.
-- DO
-- $$
-- DECLARE
-- 	valores INT[] := ARRAY[
-- 	valor_aleatorio_entre(-50, 50),
-- 	valor_aleatorio_entre(-50, 50),
-- 	valor_aleatorio_entre(-50, 50),
-- 	valor_aleatorio_entre(-50, 50),
-- 	valor_aleatorio_entre(-50, 50),
-- 	valor_aleatorio_entre(-50, 50)
-- 	];
-- 	valor INT;
-- 	contagem INT := 0;
-- BEGIN
-- 	FOREACH valor IN ARRAY valores LOOP
-- 		RAISE NOTICE '%', valor;
-- 	IF valor > 0 THEN
-- 		contagem = contagem + 1;
-- 	END IF;
-- 	END LOOP;
-- RAISE NOTICE 'O número de positivos é: %', contagem;
-- END;
-- $$

-- Faça um programa que mostre os números pares entre 1 e 100, inclusive.
-- DO
-- $$
-- DECLARE
-- 	contador INT := 0;
-- BEGIN
-- 	LOOP
-- 		contador := contador + 1;
-- 		EXIT WHEN contador > 100;
-- 		IF contador % 2 = 1 THEN
-- 			CONTINUE;
-- 		END IF;
-- 		RAISE NOTICE '%', contador;
-- 	END LOOP;
-- END;
-- $$

-- -- Função de geração de aleatórios
-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior
-- INT) RETURNS INT AS
-- $$
-- BEGIN
-- RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END;
-- $$ LANGUAGE plpgsql;
