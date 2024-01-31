--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2024-01-31 14:32:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3465 (class 0 OID 16582)
-- Dependencies: 226
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client (id_client, name, fhone, bonus) VALUES (1, 'Иванов И.И.', '895163694845', '65');
INSERT INTO public.client (id_client, name, fhone, bonus) VALUES (2, 'Клементьева Т.Т.', '89516482654', '85');
INSERT INTO public.client (id_client, name, fhone, bonus) VALUES (3, 'Пушкарева О.К.', '89024864811', '35');
INSERT INTO public.client (id_client, name, fhone, bonus) VALUES (4, 'Куликов А.А.', '8918746521', '25');
INSERT INTO public.client (id_client, name, fhone, bonus) VALUES (5, 'Маликов Д.Е.', '891947518452', '39');


--
-- TOC entry 3463 (class 0 OID 16574)
-- Dependencies: 224
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.account (email, password, id_site) VALUES ('damoe@yandex.ru', '25462', 1);
INSERT INTO public.account (email, password, id_site) VALUES ('fskof@mail.ru', '67084', 2);
INSERT INTO public.account (email, password, id_site) VALUES ('daiiag@gamil.ru', '52080', 3);
INSERT INTO public.account (email, password, id_site) VALUES ('shfx@yandex.ru', '78064', 4);
INSERT INTO public.account (email, password, id_site) VALUES ('sgdv@mail.ru', '44100', 5);


--
-- TOC entry 3472 (class 0 OID 16619)
-- Dependencies: 233
-- Data for Name: tip_dostavki; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tip_dostavki (id, name_dostavki) OVERRIDING SYSTEM VALUE VALUES (1, 'Delivery club');
INSERT INTO public.tip_dostavki (id, name_dostavki) OVERRIDING SYSTEM VALUE VALUES (2, 'Yandex');
INSERT INTO public.tip_dostavki (id, name_dostavki) OVERRIDING SYSTEM VALUE VALUES (3, 'Magnit');
INSERT INTO public.tip_dostavki (id, name_dostavki) OVERRIDING SYSTEM VALUE VALUES (4, 'Lenta');
INSERT INTO public.tip_dostavki (id, name_dostavki) OVERRIDING SYSTEM VALUE VALUES (5, 'by my self');


--
-- TOC entry 3467 (class 0 OID 16590)
-- Dependencies: 228
-- Data for Name: delivery_list; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.delivery_list (data_prib, payment_method, type_dostavka, order_id) VALUES ('2021-11-13', 'безналичная', 4, 5);
INSERT INTO public.delivery_list (data_prib, payment_method, type_dostavka, order_id) VALUES ('2021-11-11', 'наличная', 5, 4);
INSERT INTO public.delivery_list (data_prib, payment_method, type_dostavka, order_id) VALUES ('2021-11-09', 'безналичная', 3, 3);
INSERT INTO public.delivery_list (data_prib, payment_method, type_dostavka, order_id) VALUES ('2021-11-06', 'безналичная', 2, 2);
INSERT INTO public.delivery_list (data_prib, payment_method, type_dostavka, order_id) VALUES ('2021-11-06', 'наличная', 1, 1);


--
-- TOC entry 3464 (class 0 OID 16579)
-- Dependencies: 225
-- Data for Name: check; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (1, 1785.00, '2021-11-06', 1, 4);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (2, 2100.00, '2021-11-06', 1, 2);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (3, 1440.00, '2021-11-09', 3, 5);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (4, 1275.00, '2021-11-11', 2, 3);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (5, 2170.00, '2021-11-13', 4, 1);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (1, 1785.00, '2021-11-06', 1, 4);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (2, 2100.00, '2021-11-06', 1, 2);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (3, 1440.00, '2021-11-09', 3, 5);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (4, 1275.00, '2021-11-11', 2, 3);
INSERT INTO public."check" (id_status, summa, data_check, id_client, delivery_done) VALUES (5, 2170.00, '2021-11-13', 4, 1);


--
-- TOC entry 3466 (class 0 OID 16587)
-- Dependencies: 227
-- Data for Name: couries; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8941648561', '10:02:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8941648561', '10:02:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8950462841', '17:58:00+05', 3);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8950462841', '17:58:00+05', 3);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8951658235', '19:15:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8951658235', '19:15:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8902389956', '08:25:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8902389956', '08:25:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8915648525', '14:12:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8915648525', '14:12:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8941648561', '10:02:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8941648561', '10:02:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8950462841', '17:58:00+05', 3);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8950462841', '17:58:00+05', 3);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8951658235', '19:15:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8951658235', '19:15:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8902389956', '08:25:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8902389956', '08:25:00+05', 2);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8915648525', '14:12:00+05', 4);
INSERT INTO public.couries (phone_couries, "time", delivery_entity) VALUES ('8915648525', '14:12:00+05', 4);


--
-- TOC entry 3471 (class 0 OID 16608)
-- Dependencies: 232
-- Data for Name: type_of_food_in_menu; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.type_of_food_in_menu (id, type) OVERRIDING SYSTEM VALUE VALUES (1, 'Овощи');
INSERT INTO public.type_of_food_in_menu (id, type) OVERRIDING SYSTEM VALUE VALUES (2, 'Фрукты');
INSERT INTO public.type_of_food_in_menu (id, type) OVERRIDING SYSTEM VALUE VALUES (3, 'Спиртные напитки');
INSERT INTO public.type_of_food_in_menu (id, type) OVERRIDING SYSTEM VALUE VALUES (4, 'Молочная продукция');


--
-- TOC entry 3468 (class 0 OID 16593)
-- Dependencies: 229
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (1, 'Кабачки', 2100.00, 15.00, 1);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (2, 'Помидоры', 2800.00, 25.00, 1);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (3, 'Лук', 1800.00, 20.00, 1);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (4, 'Картошка', 1500.00, 15.00, 1);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (5, 'Баклажан', 3100.00, 30.00, 1);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (6, 'Брынза', 450.00, 10.00, 4);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (7, 'Маргарин', 250.00, 10.00, 4);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (8, 'Молоко', 100.00, 10.00, 4);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (9, 'Сливки', 200.00, 10.00, 4);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (10, 'Сметана', 150.00, 5.00, 4);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (11, 'Творог', 250.00, 15.00, 4);
INSERT INTO public.menu (id_menu, name_menu, price, discount, type_of_food) VALUES (12, 'Тофу', 150.00, 5.00, 4);


--
-- TOC entry 3470 (class 0 OID 16603)
-- Dependencies: 231
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.status (id_status, name_status) VALUES (1, 'Доставлено');
INSERT INTO public.status (id_status, name_status) VALUES (2, 'В пути');
INSERT INTO public.status (id_status, name_status) VALUES (3, 'Ожидает курьера');
INSERT INTO public.status (id_status, name_status) VALUES (4, 'Готовится');
INSERT INTO public.status (id_status, name_status) VALUES (5, 'Обрабатывается');


--
-- TOC entry 3469 (class 0 OID 16598)
-- Dependencies: 230
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (1, '2021-11-06', '2021-11-06', 1, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (5, '2021-11-11', '2021-11-13', 1, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (1, '2021-11-08', '2021-11-09', 1, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (2, '2021-11-06', '2021-11-06', 2, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (4, '2021-11-10', '2021-11-11', 2, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (1, '2021-11-06', '2021-11-06', 1, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (5, '2021-11-11', '2021-11-13', 1, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (1, '2021-11-08', '2021-11-09', 1, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (2, '2021-11-06', '2021-11-06', 2, 1);
INSERT INTO public."order" (id_order, data_otp, data_prib, status, id_menu) VALUES (4, '2021-11-10', '2021-11-11', 2, 1);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 234
-- Name: Type_of_food_in_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Type_of_food_in_menu_id_seq"', 4, true);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 237
-- Name: account_ID_Site_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."account_ID_Site_seq"', 5, true);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 236
-- Name: menu_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.menu_id_menu_seq', 12, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 240
-- Name: tip_dostavki_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."tip_dostavki_ID_seq"', 5, true);


-- Completed on 2024-01-31 14:32:32

--
-- PostgreSQL database dump complete
--

