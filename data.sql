--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

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
-- Data for Name: drugs; Type: TABLE DATA; Schema: public; Owner: brown
--

COPY public.drugs (id, buyer_id, category, date, description, drug_name, quantity, "time") FROM stdin;
6	1	{ToothPaste}	2024-07-05	For bright and strong teeth	Colgate	67	09:42:36
7	1	{Soap}	2024-07-05	For a smooth and healthy skin	Medisoft	60	09:43:01
8	1	{Reliever}	2024-07-05	To relieve stomach pains.	Pylin	49	09:43:46
4	2	{Reliever}	2024-07-09	To aid relieve breathing in asthmatic patients, see doctor before taking drug.	Ventolin	40	11:24:35
9	3	{"pain killer"}	2023-06-03	lorem ipsum dolor sit amet consecteur	Paracetamol	5	13:45:00
10	8	{stimulant}	2023-02-25	Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione ullam labore commodi impedit.	Adderall	50	03:00:00
11	10	{Soap}	2023-02-25	For a clean and healthy body	Geisha	56	06:20:42
13	0	{natural}	2024-07-06	Lorem ipsum dolor sit amet	Apple	50	09:31:03
14	0	{syrup}	2024-07-06	Lorem ipsum dolor	Cough syrup	345	09:40:43
15	0	{stimulant}	2024-07-06	Lorem ipsum	Beninin	34	16:14:16
16	0	{medicine}	2024-07-06	lorem	Medidy	23	16:15:39
1	5	{"pain killer"}	2023-06-03	Lorem ipsum dolor sit amet giikkggk gllglggj ggkgk gkgkmgkgkmgkgkoeo nkgggjkg	Paraceramol	6	13:45:00
18	0	{"tooth paste"}	2024-07-07	lorem	Lizor	4	15:58:12
19	0	{"first aid"}	2024-07-07	To prevent bleeding	plaster	4	16:07:26
20	2	{"heart breaker"}	2024-07-08	Only Johnny boy's get it	Johnissis	285	11:01:32
17	4	{b}	2024-07-09	sgg	a	2	07:16:56
2	6	{Stimulant}	2023-06-03	Lorem ipsum dolor sit amet giikkggk gllglggj ggkgk gkgkmgkgkmgkgkoeo nkgggjkg	Adderal	5	13:45:00
12	2	{Vitamin}	2024-07-09	Lorem ipsum dolor sit amet consecteur	Vitamin C	265	07:42:00
5	2	{"Pain killer"}	2024-07-09	To heal or relief pain in joints or muscles.	Rob	100	10:40:41
3	4	{Vitamins}	2024-07-09	For strength and vitality in kids.	Wellkid	400	10:40:59
\.


--
-- Data for Name: purchase; Type: TABLE DATA; Schema: public; Owner: brown
--

COPY public.purchase (purchase_id, buyer_id, date, quantity, "time", drug_id) FROM stdin;
1	1	2024-07-05	3	15:51:11	1
2	2	2024-07-05	10	15:51:21	4
4	6	2024-02-03	67	23:09:00	2
3	100	2024-07-09	100	07:39:12	3
5	1	2024-07-09	0	07:41:56	12
6	2	2024-07-09	100	07:42:00	12
7	1	2024-07-09	0	10:40:35	5
8	2	2024-07-09	40	10:40:41	5
9	3	2024-07-09	0	10:40:54	3
10	4	2024-07-09	57	10:40:59	3
11	2	2024-07-09	3	11:24:35	4
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: brown
--

COPY public.suppliers (supplier_id, country, email, name, phone, street_address, drug_id) FROM stdin;
1	USA	contact@pharmasupplier.com	PharmaSupplier Inc.	123-456-7890	123 Pharma St.	2
2	USA	contact@pharmasupplier.com	PharmaSupplier Inc.	123-456-7890	123 Pharma St.	2
3	USA	contact@pharmasupplier.com	PharmaSupplier Inc.	123-456-7890	123 Pharma St.	2
4	Ghana	medisoft@gmail.com	Medisoft Inc.	0225837343	RW 2343 Labone	7
\.


--
-- Name: id_sequence_generator; Type: SEQUENCE SET; Schema: public; Owner: brown
--

SELECT pg_catalog.setval('public.id_sequence_generator', 20, true);


--
-- Name: purchase-sequence; Type: SEQUENCE SET; Schema: public; Owner: brown
--

SELECT pg_catalog.setval('public."purchase-sequence"', 11, true);


--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: brown
--

SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 1, true);


--
-- Name: supply-sequence; Type: SEQUENCE SET; Schema: public; Owner: brown
--

SELECT pg_catalog.setval('public."supply-sequence"', 4, true);


--
-- PostgreSQL database dump complete
--

