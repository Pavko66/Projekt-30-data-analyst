-- Projekt 30 – SQL
-- Temat: SELECT i FROM

-- SELECT wybiera kolumny
-- FROM wskazuje tabelę

-- Przykład 1: wszystkie kolumny z tabeli products
SELECT *
FROM products;

-- Przykład 2: wybrane kolumny
SELECT product_name, price
FROM products;

-- Przykład 3: wybrane kolumny z aliasami
SELECT 
    product_name AS nazwa_produktu,
    price AS cena
FROM products;

-- Notatka:
-- SELECT * oznacza: pokaż wszystkie kolumny.
-- W prawdziwej pracy lepiej wybierać konkretne kolumny, bo jest czytelniej.