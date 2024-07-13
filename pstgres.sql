INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (1, 'Humira', 10.99, 50, 1);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (2, 'Humira', 10.99, 50, 2);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (3, 'Humira', 10.99, 50, 3);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (4, 'Humira', 10.99, 50, 4);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (5, 'Humira', 10.99, 50, 5);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (6, 'Humira', 10.99, 50, 6);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (7, 'Humira', 10.99, 50, 7);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (8, 'Humira', 10.99, 50, 8);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (9, 'Humira', 10.99, 50, 9);
INSERT INTO public.drugs(
	id, name, price, available_qty, shop_id)
	VALUES (10, 'Humira', 10.99, 50, 10);

    INSERT INTO public.shops(
	id, name, adress)
	VALUES (1, 'DobryLikar', 'Kyiv, 30-345, vulytsia Myru 1');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (2, 'Zdrorovja', 'Zhytomyr, 30-345, vulytsia Kroshenska 1');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (3, 'Apteka24/7', 'Lviv, 30-345, vulytsia Likarska 17');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (4, 'Pharmacja', 'Zaporizhzhia, 30-345, vulytsia Holovna 10');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (5, 'Dopomoha', 'Odesa, 30-345, vulytsia Derybasivska 20');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (6, 'Lik', 'Kyiv, 30-345, vulytsia Bazhana 17');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (7, 'Medhelp', 'Sumy, 30-345, vulytsia Poltavska 41');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (8, 'Medico', 'Kremenchuk, 30-345, vulytsia Dobrovoltsiv 3');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (9, 'NaZdorovja', 'Kyiv, 30-345, prospekt Telihy 2');
INSERT INTO public.shops(
	id, name, adress)
	VALUES (10, 'Liky', 'Kherson, 30-345, vulytsia Vesniana 1');

    INSERT INTO public.customers(
	id, name, adress)
	VALUES (1, 'Mykyta Volynets', 'Kyiv, vulytsia Myrna 1, 23-678');
INSERT INTO public.customers(
	id, name, adress)
	VALUES (2, 'Olena Ptchilka', 'Kharkiv, vulytsia Saltivska 15, 23-678');
INSERT INTO public.customers(
	id, name, adress)
	VALUES (3, 'Oleh Gutsai', 'Mykolaiv, vulytsia Morska 34, 23-678');
INSERT INTO public.customers(
	id, name, adress)
	VALUES (4, 'Oleksandr Bilyj', 'Odesa, vulytsia Bazaru 12, 23-678');
INSERT INTO public.customers(
	id, name, adress)
	VALUES (5, 'Katrina Sych', 'Zhytomyr, vulytsia Heroiv 15, 23-678');
    INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (1, 1);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (2, 2);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (3, 3);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (4, 4);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (5, 5);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (6, 6);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (7, 7);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (8, 8);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (9, 9);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")
	VALUES (10, 10);
INSERT INTO public."DrugsToShops"(
	"drugId", "shopId")


	UPDATE public."DrugsToShops" SET id=1 WHERE "drugId"=1;
	UPDATE public."DrugsToShops" SET id=2 WHERE "drugId"=2;
	UPDATE public."DrugsToShops" SET id=3 WHERE "drugId"=3;
	UPDATE public."DrugsToShops" SET id=4 WHERE "drugId"=4;
	UPDATE public."DrugsToShops" SET id=5 WHERE "drugId"=5;
	UPDATE public."DrugsToShops" SET id=6 WHERE "drugId"=6;
	UPDATE public."DrugsToShops" SET id=7 WHERE "drugId"=7;
	UPDATE public."DrugsToShops" SET id=8 WHERE "drugId"=8;
	UPDATE public."DrugsToShops" SET id=9 WHERE "drugId"=9;
	UPDATE public."DrugsToShops" SET id=10 WHERE "drugId"=10;
	UPDATE public."DrugsToShops" SET id=11 WHERE "drugId"=11;
	UPDATE public."DrugsToShops" SET id=12 WHERE "drugId"=12;
	UPDATE public."DrugsToShops" SET id=13 WHERE "drugId"=13;
	UPDATE public."DrugsToShops" SET id=14 WHERE "drugId"=14;
	UPDATE public."DrugsToShops" SET id=15 WHERE "drugId"=15;
	UPDATE public."DrugsToShops" SET id=16 WHERE "drugId"=16;
	UPDATE public."DrugsToShops" SET id=17 WHERE "drugId"=17;
	UPDATE public."DrugsToShops" SET id=18 WHERE "drugId"=18;
	UPDATE public."DrugsToShops" SET id=19 WHERE "drugId"=19;
	UPDATE public."DrugsToShops" SET id=20 WHERE "drugId"=20;
	UPDATE public."DrugsToShops" SET id=21 WHERE "drugId"=21;
	UPDATE public."DrugsToShops" SET id=22 WHERE "drugId"=22;
	UPDATE public."DrugsToShops" SET id=23 WHERE "drugId"=23;
	UPDATE public."DrugsToShops" SET id=24 WHERE "drugId"=24;
	UPDATE public."DrugsToShops" SET id=25 WHERE "drugId"=25;
	UPDATE public."DrugsToShops" SET id=26 WHERE "drugId"=26;
	UPDATE public."DrugsToShops" SET id=27 WHERE "drugId"=27;
	UPDATE public."DrugsToShops" SET id=28 WHERE "drugId"=28;
	UPDATE public."DrugsToShops" SET id=29 WHERE "drugId"=29;
	UPDATE public."DrugsToShops" SET id=30 WHERE "drugId"=30;
	UPDATE public."DrugsToShops" SET id=31 WHERE "drugId"=31;
	UPDATE public."DrugsToShops" SET id=32 WHERE "drugId"=32;
	UPDATE public."DrugsToShops" SET id=33 WHERE "drugId"=33;
	UPDATE public."DrugsToShops" SET id=34 WHERE "drugId"=34;
	UPDATE public."DrugsToShops" SET id=35 WHERE "drugId"=35;
	UPDATE public."DrugsToShops" SET id=36 WHERE "drugId"=36;
	UPDATE public."DrugsToShops" SET id=37 WHERE "drugId"=37;
	UPDATE public."DrugsToShops" SET id=38 WHERE "drugId"=38;
	UPDATE public."DrugsToShops" SET id=39 WHERE "drugId"=39;
	UPDATE public."DrugsToShops" SET id=40 WHERE "drugId"=40;
	UPDATE public."DrugsToShops" SET id=41 WHERE "drugId"=41;
	UPDATE public."DrugsToShops" SET id=42 WHERE "drugId"=42;
	UPDATE public."DrugsToShops" SET id=43 WHERE "drugId"=43;
	UPDATE public."DrugsToShops" SET id=44 WHERE "drugId"=44;
	UPDATE public."DrugsToShops" SET id=45 WHERE "drugId"=45;
	UPDATE public."DrugsToShops" SET id=46 WHERE "drugId"=46;
	UPDATE public."DrugsToShops" SET id=47 WHERE "drugId"=47;
	UPDATE public."DrugsToShops" SET id=48 WHERE "drugId"=48;
	UPDATE public."DrugsToShops" SET id=49 WHERE "drugId"=49;
	UPDATE public."DrugsToShops" SET id=50 WHERE "drugId"=50;
	UPDATE public."DrugsToShops" SET id=51 WHERE "drugId"=51;
	UPDATE public."DrugsToShops" SET id=52 WHERE "drugId"=52;
	UPDATE public."DrugsToShops" SET id=53 WHERE "drugId"=53;
	UPDATE public."DrugsToShops" SET id=54 WHERE "drugId"=54;
	UPDATE public."DrugsToShops" SET id=55 WHERE "drugId"=55;
	UPDATE public."DrugsToShops" SET id=56 WHERE "drugId"=56;
	UPDATE public."DrugsToShops" SET id=57 WHERE "drugId"=57;
	UPDATE public."DrugsToShops" SET id=58 WHERE "drugId"=58;
	UPDATE public."DrugsToShops" SET id=59 WHERE "drugId"=59;
	UPDATE public."DrugsToShops" SET id=60 WHERE "drugId"=60;
	UPDATE public."DrugsToShops" SET id=61 WHERE "drugId"=61;
	UPDATE public."DrugsToShops" SET id=62 WHERE "drugId"=62;
	UPDATE public."DrugsToShops" SET id=63 WHERE "drugId"=63;
	UPDATE public."DrugsToShops" SET id=64 WHERE "drugId"=64;
	UPDATE public."DrugsToShops" SET id=65 WHERE "drugId"=65;
	UPDATE public."DrugsToShops" SET id=66 WHERE "drugId"=66;
	UPDATE public."DrugsToShops" SET id=67 WHERE "drugId"=67;
	UPDATE public."DrugsToShops" SET id=68 WHERE "drugId"=68;
	UPDATE public."DrugsToShops" SET id=69 WHERE "drugId"=69;
	UPDATE public."DrugsToShops" SET id=70 WHERE "drugId"=70;
	UPDATE public."DrugsToShops" SET id=71 WHERE "drugId"=71;
	UPDATE public."DrugsToShops" SET id=72 WHERE "drugId"=72;
	UPDATE public."DrugsToShops" SET id=73 WHERE "drugId"=73;
	UPDATE public."DrugsToShops" SET id=74 WHERE "drugId"=74;
	UPDATE public."DrugsToShops" SET id=75 WHERE "drugId"=75;
	UPDATE public."DrugsToShops" SET id=76 WHERE "drugId"=76;
	UPDATE public."DrugsToShops" SET id=77 WHERE "drugId"=77;
	UPDATE public."DrugsToShops" SET id=78 WHERE "drugId"=78;
	UPDATE public."DrugsToShops" SET id=79 WHERE "drugId"=79;
	UPDATE public."DrugsToShops" SET id=80 WHERE "drugId"=80;
	UPDATE public."DrugsToShops" SET id=81 WHERE "drugId"=81;
	UPDATE public."DrugsToShops" SET id=82 WHERE "drugId"=82;
	UPDATE public."DrugsToShops" SET id=83 WHERE "drugId"=83;
	UPDATE public."DrugsToShops" SET id=84 WHERE "drugId"=84;
	UPDATE public."DrugsToShops" SET id=85 WHERE "drugId"=85;
	UPDATE public."DrugsToShops" SET id=86 WHERE "drugId"=86;
	UPDATE public."DrugsToShops" SET id=87 WHERE "drugId"=87;
	UPDATE public."DrugsToShops" SET id=88 WHERE "drugId"=88;
	UPDATE public."DrugsToShops" SET id=89 WHERE "drugId"=89;
	UPDATE public."DrugsToShops" SET id=90 WHERE "drugId"=90;
	UPDATE public."DrugsToShops" SET id=91 WHERE "drugId"=91;
	UPDATE public."DrugsToShops" SET id=92 WHERE "drugId"=92;
	UPDATE public."DrugsToShops" SET id=93 WHERE "drugId"=93;
	UPDATE public."DrugsToShops" SET id=94 WHERE "drugId"=94;
	UPDATE public."DrugsToShops" SET id=95 WHERE "drugId"=95;
	UPDATE public."DrugsToShops" SET id=96 WHERE "drugId"=96;
	UPDATE public."DrugsToShops" SET id=97 WHERE "drugId"=97;
	UPDATE public."DrugsToShops" SET id=98 WHERE "drugId"=98;
	UPDATE public."DrugsToShops" SET id=99 WHERE "drugId"=99;
	UPDATE public."DrugsToShops" SET id=100 WHERE "drugId"=100;


	UPDATE public."Drugs" SET price=5.69 WHERE "id"=1;
	UPDATE public."Drugs" SET price=4.21 WHERE "id"=2;
	UPDATE public."Drugs" SET price=4.7 WHERE "id"=3;
	UPDATE public."Drugs" SET price=6.8 WHERE "id"=4;
	UPDATE public."Drugs" SET price=8.7 WHERE "id"=5;
	UPDATE public."Drugs" SET price=9.4 WHERE "id"=6;
	UPDATE public."Drugs" SET price=14.0 WHERE "id"=7;
	UPDATE public."Drugs" SET price=5.99 WHERE "id"=8;
	UPDATE public."Drugs" SET price=10.4 WHERE "id"=9;
	UPDATE public."Drugs" SET price=14.1 WHERE "id"=10;
	UPDATE public."Drugs" SET price=15.2 WHERE "id"=11;
	UPDATE public."Drugs" SET price=12.1 WHERE "id"=12;
	UPDATE public."Drugs" SET price=6.7 WHERE "id"=13;
	UPDATE public."Drugs" SET price=12.3 WHERE "id"=14;
	UPDATE public."Drugs" SET price=7.9 WHERE "id"=15;
	UPDATE public."Drugs" SET price=11.3 WHERE "id"=16;
	UPDATE public."Drugs" SET price=8.9 WHERE "id"=17;
	UPDATE public."Drugs" SET price=9.6 WHERE "id"=18;
	UPDATE public."Drugs" SET price=10.3 WHERE "id"=19;
	UPDATE public."Drugs" SET price=4.9 WHERE "id"=20;
	UPDATE public."Drugs" SET price=5.8 WHERE "id"=21;
	UPDATE public."Drugs" SET price=7.5 WHERE "id"=22;
	UPDATE public."Drugs" SET price=7.4 WHERE "id"=23;
	UPDATE public."Drugs" SET price=7.1 WHERE "id"=24;
	UPDATE public."Drugs" SET price=7.2 WHERE "id"=25;
	UPDATE public."Drugs" SET price=7.3 WHERE "id"=26;
	UPDATE public."Drugs" SET price=7.9 WHERE "id"=27;
	UPDATE public."Drugs" SET price=7.5 WHERE "id"=28;
	UPDATE public."Drugs" SET price=7.7 WHERE "id"=29;
	UPDATE public."Drugs" SET price=7.2 WHERE "id"=30;
	UPDATE public."Drugs" SET price=8.2 WHERE "id"=31;
	UPDATE public."Drugs" SET price=8.4 WHERE "id"=32;
	UPDATE public."Drugs" SET price=8.2 WHERE "id"=33;
	UPDATE public."Drugs" SET price=8.3 WHERE "id"=34;
	UPDATE public."Drugs" SET price=8.1 WHERE "id"=35;
	UPDATE public."Drugs" SET price=8.9 WHERE "id"=36;
	UPDATE public."Drugs" SET price=8.8 WHERE "id"=37;
	UPDATE public."Drugs" SET price=8.7 WHERE "id"=38;
	UPDATE public."Drugs" SET price=8.6 WHERE "id"=39;
	UPDATE public."Drugs" SET price=8.5 WHERE "id"=40;
	UPDATE public."Drugs" SET price=8.4 WHERE "id"=41;
	UPDATE public."Drugs" SET price=8.3 WHERE "id"=42;
	UPDATE public."Drugs" SET price=8.2 WHERE "id"=43;
	UPDATE public."Drugs" SET price=8.1 WHERE "id"=44;
	UPDATE public."Drugs" SET price=8.5 WHERE "id"=45;
	UPDATE public."Drugs" SET price=8.9 WHERE "id"=46;
	UPDATE public."Drugs" SET price=8.7 WHERE "id"=47;
	UPDATE public."Drugs" SET price=8.6 WHERE "id"=48;
	UPDATE public."Drugs" SET price=9.1 WHERE "id"=49;
	UPDATE public."Drugs" SET price=9.2 WHERE "id"=50;
	UPDATE public."Drugs" SET price=9.3 WHERE "id"=51;
	UPDATE public."Drugs" SET price=9.4 WHERE "id"=52;
	UPDATE public."Drugs" SET price=9.5 WHERE "id"=53;
	UPDATE public."Drugs" SET price=9.6 WHERE "id"=54;
	UPDATE public."Drugs" SET price=9.7 WHERE "id"=55;
	UPDATE public."Drugs" SET price=9.8 WHERE "id"=56;
	UPDATE public."Drugs" SET price=9.9 WHERE "id"=57;
	UPDATE public."Drugs" SET price=9.1 WHERE "id"=58;
	UPDATE public."Drugs" SET price=9.2 WHERE "id"=59;
	UPDATE public."Drugs" SET price=9.3 WHERE "id"=60;
	UPDATE public."Drugs" SET price=9.4 WHERE "id"=61;
	UPDATE public."Drugs" SET price=9.5 WHERE "id"=62;
	UPDATE public."Drugs" SET price=9.6 WHERE "id"=63;
	UPDATE public."Drugs" SET price=9.7 WHERE "id"=64;
	UPDATE public."Drugs" SET price=9.8 WHERE "id"=65;
	UPDATE public."Drugs" SET price=10.8 WHERE "id"=66;
	UPDATE public."Drugs" SET price=10.9 WHERE "id"=67;
	UPDATE public."Drugs" SET price=10.7 WHERE "id"=68;
	UPDATE public."Drugs" SET price=10.6 WHERE "id"=69;
	UPDATE public."Drugs" SET price=10.5 WHERE "id"=70;
	UPDATE public."Drugs" SET price=10.4 WHERE "id"=71;
	UPDATE public."Drugs" SET price=10.3 WHERE "id"=72;
	UPDATE public."Drugs" SET price=10.2 WHERE "id"=73;
	UPDATE public."Drugs" SET price=10.1 WHERE "id"=74;
	UPDATE public."Drugs" SET price=10.9 WHERE "id"=75;
	UPDATE public."Drugs" SET price=10.8 WHERE "id"=76;
	UPDATE public."Drugs" SET price=10.7 WHERE "id"=77;
	UPDATE public."Drugs" SET price=10.6 WHERE "id"=78;
	UPDATE public."Drugs" SET price=10.7 WHERE "id"=79;
	UPDATE public."Drugs" SET price=10.5 WHERE "id"=80;
	UPDATE public."Drugs" SET price=10.4 WHERE "id"=81;
	UPDATE public."Drugs" SET price=10.3 WHERE "id"=82;
	UPDATE public."Drugs" SET price=10.2 WHERE "id"=83;
	UPDATE public."Drugs" SET price=11.1 WHERE "id"=84;
	UPDATE public."Drugs" SET price=11.2 WHERE "id"=85;
	UPDATE public."Drugs" SET price=11.3 WHERE "id"=86;
	UPDATE public."Drugs" SET price=11.4 WHERE "id"=87;
	UPDATE public."Drugs" SET price=11.5 WHERE "id"=88;
	UPDATE public."Drugs" SET price=11.4 WHERE "id"=89;
	UPDATE public."Drugs" SET price=11.6 WHERE "id"=90;
	UPDATE public."Drugs" SET price=11.7 WHERE "id"=91;
	UPDATE public."Drugs" SET price=11.8 WHERE "id"=92;
	UPDATE public."Drugs" SET price=11.9 WHERE "id"=93;
	UPDATE public."Drugs" SET price=11.8 WHERE "id"=94;
	UPDATE public."Drugs" SET price=11.7 WHERE "id"=95;
	UPDATE public."Drugs" SET price=11.6 WHERE "id"=96;
	UPDATE public."Drugs" SET price=11.5 WHERE "id"=97;
	UPDATE public."Drugs" SET price=11.4 WHERE "id"=98;
	UPDATE public."Drugs" SET price=11.3 WHERE "id"=99;
	UPDATE public."Drugs" SET price=11.2 WHERE "id"=100;