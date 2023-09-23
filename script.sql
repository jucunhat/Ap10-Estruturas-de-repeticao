--Faça um programa que leia 6 valores. Estes valores serão somente negativos 
--ou positivos (desconsidere os valores nulos). A seguir, mostre a 
--quantidade de valores positivos digitados.
DO
$$
DECLARE
	valores INT[] := ARRAY[
	valor_aleatorio_entre(-50, 50),
	valor_aleatorio_entre(-50, 50),
	valor_aleatorio_entre(-50, 50),
	valor_aleatorio_entre(-50, 50),
	valor_aleatorio_entre(-50, 50),
	valor_aleatorio_entre(-50, 50)
	];
	valor INT;
	contagem INT := 0;
BEGIN
	FOREACH valor IN ARRAY valores LOOP
		RAISE NOTICE '%', valor;
	IF valor > 0 THEN
		contagem = contagem + 1;
	END IF;
	END LOOP;
RAISE NOTICE 'O número de positivos é: %', contagem;
END;
$$

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
