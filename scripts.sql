
-- 1 Номер курьера когда заказ в пути

SELECT couries.phone_couries AS "Номер_курьера",
    tip_dostavki.name_dostavki AS "Название_доставки",
    "check".data_check AS "Дата_Заказа",
    client.name AS "Имя_Клиента",
    status.name_status AS "Готовность_заказа"
   FROM ((((((public.couries
     JOIN public.tip_dostavki ON ((couries.delivery_entity = tip_dostavki.id)))
     JOIN public.delivery_list ON ((tip_dostavki.id = delivery_list.type_dostavka)))
     JOIN public."order" ON (("order".id_order = delivery_list.order_id)))
     JOIN public.status ON (("order".status = status.id_status)))
     JOIN public."check" ON ((delivery_list.order_id = "check".delivery_done)))
     JOIN public.client ON (("check".id_client = client.id_client)))
  WHERE (status.id_status = 2);

-- 2 Информация о доходах при каждом заказе

 SELECT row_number() OVER () AS "Номер_чеков",
    "check".summa AS "Сумма_чека",
    sum("check".summa) OVER (ORDER BY "check".summa) AS "Приход_за_чек"
   FROM public."check";

-- 3 средняя доходность у доставки Yandex

 SELECT ( SELECT tip_dostavki_1.name_dostavki
           FROM public.tip_dostavki tip_dostavki_1
          WHERE (tip_dostavki_1.id = 2)) AS "Наименование_компании",
    avg("check".summa) AS "Средняя_стоимость_чека_доставки"
   FROM (public."check"
     JOIN public.tip_dostavki ON (("check".delivery_done = tip_dostavki.id)))
  WHERE ("check".delivery_done = 2);

-- 4 Средняя стоимость всех товаров

 SELECT avg(menu.price) AS "Средняя_стоимость_всех_товаров"
   FROM public.menu;

-- 5 Актуальные цены в магазине при скидках

 SELECT menu.name_menu AS "Наименование_продукта",
    menu.price AS "Цена",
    menu.discount AS "Скидка_в_проц",
    lead((menu.price * ((1)::numeric - (menu.discount / (100)::numeric))), 0, (0)::numeric) OVER (ORDER BY menu.id_menu) AS "Актуальная_цена_в_магазине"
   FROM public.menu;

-- 6 Цена первого заказа

 SELECT sum(menu.price) AS "Цена_Заказа"
   FROM (public."order" ord
     JOIN public.menu ON ((menu.id_menu = ord.id_menu)))
  WHERE (ord.id_order = 1);

-- 7 информация о заказах у каждой из служб доставки

 SELECT "check".summa AS "Сумма_заказа",
    "check".data_check AS "Дата_Заказа",
    client.name AS "Имя_Клиента",
    tip_dostavki.name_dostavki AS "Название_доставки"
   FROM (((public."check"
     JOIN public.client ON ((client.id_client = "check".id_client)))
     JOIN public.delivery_list ON (("check".delivery_done = delivery_list.order_id)))
     JOIN public.tip_dostavki ON ((delivery_list.type_dostavka = tip_dostavki.id)));

-- 8 Топ наименьших заказов

 SELECT type_of_order."Сумма_заказа",
    type_of_order."Дата_Заказа",
    type_of_order."Имя_Клиента",
    type_of_order."Название_доставки",
    row_number() OVER (ORDER BY type_of_order."Сумма_заказа") AS "Топ_заказов"
   FROM public.type_of_order
   limit 5;

-- 9 Клиенты с наименьшим кол-вом бонусов

 SELECT client.name AS "имя_клиента",
    client.bonus AS "Бонусы",
    row_number() OVER (ORDER BY client.bonus) AS "Топ_бонусов"
   FROM public.client;

-- 10 Готовые заказы оплаченные наличными

 SELECT "check".data_check AS "Дата_Заказа",
    "check".summa AS "Сумма",
    delivery_list.payment_method AS "способ_оплаты",
    status.name_status AS "Готовность_заказа"
   FROM (((public."check"
     JOIN public.delivery_list ON (("check".delivery_done = delivery_list.order_id)))
     JOIN public."order" ON (("order".id_order = delivery_list.order_id)))
     JOIN public.status ON (("order".status = status.id_status)))
  WHERE (((delivery_list.payment_method)::text = 'наличная'::text) AND (status.id_status = 1));

-- 11 Продукты относящиеся к овощам

 SELECT menu.id_menu,
    menu.name_menu,
    menu.price,
    menu.discount,
    menu.type_of_food
   FROM public.menu
  WHERE (menu.type_of_food = 1);

-- 12 Email клиента при оплате безналом

 SELECT account.email AS "email_Клиента",
    delivery_list.payment_method AS "способ_оплаты"
   FROM ((public."check"
     JOIN public.account ON ((account.id_site = "check".id_client)))
     JOIN public.delivery_list ON (("check".delivery_done = delivery_list.order_id)))
  WHERE ((delivery_list.payment_method)::text = 'безналичная'::text);

-- 13 ФИО клиента при безналичной оплаты

 SELECT client.name AS "Имя_Клиента",
    delivery_list.payment_method AS "способ_оплаты"
   FROM ((public."check"
     JOIN public.client ON ((client.id_client = "check".id_client)))
     JOIN public.delivery_list ON (("check".delivery_done = delivery_list.order_id)))
  WHERE ((delivery_list.payment_method)::text = 'безналичная'::text);

  -- 14 кол-во курьеров у доставки Yandex

 SELECT ( SELECT tip_dostavki_1.name_dostavki
           FROM public.tip_dostavki tip_dostavki_1
          WHERE (tip_dostavki_1.id = 2)) AS "Название_доставки",
    count(couries.delivery_entity) AS "Колво_курьеров"
   FROM (public.tip_dostavki
     JOIN public.couries ON ((tip_dostavki.id = couries.delivery_entity)))
  WHERE (couries.delivery_entity = 2);

  -- 15 Состав заказа 1

 SELECT string_agg((menu.name_menu)::text, '/'::text) AS "Состав_Заказа"
   FROM (public."order" ord
     JOIN public.menu ON ((menu.id_menu = ord.id_menu)))
  WHERE (ord.id_order = 1);