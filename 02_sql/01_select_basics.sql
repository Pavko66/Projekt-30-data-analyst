-- ============================================================
-- Projekt 30 – Data Analyst
-- Plik: 01_select_basics.sql
-- Temat: SELECT, FROM, AS
-- Cel: Zrozumieć, jak wybierać dane z tabeli
-- ============================================================


-- ============================================================
-- 1. PODSTAWOWA TEORIA
-- ============================================================

-- SELECT wybiera kolumny, które chcemy zobaczyć.
-- FROM wskazuje tabelę, z której pobieramy dane.
-- AS pozwala nadać kolumnie czytelną nazwę w wyniku.

-- Przykład ogólnej składni:
-- SELECT nazwa_kolumny
-- FROM nazwa_tabeli;


-- ============================================================
-- 2. WYŚWIETLENIE WSZYSTKICH KOLUMN
-- ============================================================

-- SELECT * oznacza: pokaż wszystkie kolumny z tabeli.
-- Na początku nauki jest to wygodne, ale w pracy lepiej wybierać konkretne kolumny.

SELECT *
FROM products;


-- ============================================================
-- 3. WYBRANIE KONKRETNYCH KOLUMN
-- ============================================================

-- Tutaj wybieramy tylko nazwę produktu i cenę.

SELECT 
    product_name,
    price
FROM products;


-- ============================================================
-- 4. ALIASY KOLUMN
-- ============================================================

-- AS pozwala zmienić nazwę kolumny w wyniku zapytania.
-- To poprawia czytelność raportów.

SELECT 
    product_name AS nazwa_produktu,
    price AS cena
FROM products;


-- ============================================================
-- 5. PRZYKŁAD DANYCH MAGAZYNOWYCH
-- ============================================================

-- Ten przykład bardziej pasuje do logistyki i magazynu.
-- Tabela products jest tutaj przykładowa.

SELECT 
    product_id AS id_produktu,
    product_name AS nazwa_produktu,
    category AS kategoria,
    stock_quantity AS stan_magazynowy,
    warehouse_location AS lokalizacja_magazynowa
FROM products;


-- ============================================================
-- 6. PRZYKŁAD DANYCH ZAMÓWIEŃ
-- ============================================================

-- Tabela orders jest przykładową tabelą zamówień.

SELECT 
    order_id AS numer_zamowienia,
    customer_id AS id_klienta,
    order_date AS data_zamowienia,
    total_amount AS wartosc_zamowienia
FROM orders;


-- ============================================================
-- 7. NOTATKI
-- ============================================================

-- SELECT *:
-- Szybko pokazuje wszystkie kolumny, ale może być nieczytelne przy dużych tabelach.

-- SELECT konkretne_kolumny:
-- Jest lepsze w pracy analityka, bo pokazuje tylko potrzebne dane.

-- AS:
-- Pomaga tworzyć bardziej czytelne nazwy kolumn w wyniku zapytania.

-- WAŻNE:
-- Te zapytania zadziałają dopiero wtedy, gdy baza danych będzie miała tabele:
-- products
-- orders

-- Na razie ten plik jest notatką i ćwiczeniem składni SQL.


-- ============================================================
-- 8. WNIOSKI PO SQLBOLT LESSON 1
-- ============================================================

-- SELECT pozwala wybrać kolumny, które chcemy zobaczyć.
-- FROM wskazuje tabelę, z której pobieramy dane.
-- SELECT * pokazuje wszystkie kolumny, ale w praktyce lepiej wybierać tylko potrzebne.
-- Zapytania SQL kończymy średnikiem.

-- Przykład po lekcji SQLBolt:

SELECT title, director
FROM movies;

SELECT title, year
FROM movies;

SELECT title, length_minutes
FROM movies;