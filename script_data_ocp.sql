--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 10.9

-- Started on 2019-08-07 10:37:18

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
-- TOC entry 2938 (class 0 OID 16450)
-- Dependencies: 209
-- Data for Name: compteutilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compteutilisateur VALUES (1, 'Levent', 'Joe', 645543220, 'levent.joe@gmail.com', '12quinze32');
INSERT INTO public.compteutilisateur VALUES (2, 'Fench', 'Pierre', 789563520, 'pierre.fench@gmail.com', 'AAFFFYYY2');
INSERT INTO public.compteutilisateur VALUES (3, 'Johner', 'Clementine', 648956730, 'clementine.johner@yahoo.fr', 'ZETe32gU');
INSERT INTO public.compteutilisateur VALUES (4, 'Lapierre', 'Bertrand', 754352089, 'bertrand.lapierre@laposte.com', 'RetD568*');
INSERT INTO public.compteutilisateur VALUES (5, 'Grenadin', 'Blanche', 654382018, 'genadinBlanche@orange.fr', 'Bj26#3');
INSERT INTO public.compteutilisateur VALUES (6, 'Pierre', 'Amory', 654325720, 'amory.pierre@ocpizza.com', 'ocPierre2');
INSERT INTO public.compteutilisateur VALUES (7, 'Matinion', 'Lola', 756478906, 'lola.matinion@ocpizza.com', 'L9*#Piz');
INSERT INTO public.compteutilisateur VALUES (8, 'Levant', 'Amir', 685582635, 'amir.levant@ocpizza.com', 'Ht*56s');
INSERT INTO public.compteutilisateur VALUES (9, 'Santos', 'Emilio', 745673089, 'emilio.santos@ocpizza.com', 'Ft**8u');
INSERT INTO public.compteutilisateur VALUES (10, 'Dial', 'Amadou', 742546789, 'amadou.dial@ocpizza.com', 'Am89*#');
INSERT INTO public.compteutilisateur VALUES (11, 'Varo', 'Olivier', 642160852, 'olivier.varo@ocpizza.com', 'Qs8#*e');
INSERT INTO public.compteutilisateur VALUES (12, 'Blanchard', 'Fabien', 619245718, 'fabien.blanchard@ocpizza.com', 'fRy68.*');
INSERT INTO public.compteutilisateur VALUES (13, 'Quenec', 'Marion', 719875641, 'marion.Quenec@ocpizza.com', 'Qf4*yyu');
INSERT INTO public.compteutilisateur VALUES (14, 'Kefir', 'Abdel', 745690012, 'abdel.kefir@ocpizza.com', 'tYe#.5');


--
-- TOC entry 2939 (class 0 OID 16456)
-- Dependencies: 210
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client OVERRIDING SYSTEM VALUE VALUES (1, 1);
INSERT INTO public.client OVERRIDING SYSTEM VALUE VALUES (2, 2);
INSERT INTO public.client OVERRIDING SYSTEM VALUE VALUES (3, 3);
INSERT INTO public.client OVERRIDING SYSTEM VALUE VALUES (4, 4);
INSERT INTO public.client OVERRIDING SYSTEM VALUE VALUES (5, 5);


--
-- TOC entry 2943 (class 0 OID 16471)
-- Dependencies: 214
-- Data for Name: restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.restaurant VALUES (5, 80295478500028, 'pizza oc A', 976543212, 'pizza.ocA@ocpizza.com');
INSERT INTO public.restaurant VALUES (6, 80295478500029, 'pizza oc B', 976543212, 'pizza.ocB@ocpizza.com');


--
-- TOC entry 2948 (class 0 OID 16500)
-- Dependencies: 219
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse VALUES (1, 5, NULL, '12', 'rue', 'Balavoine', NULL, '78230', 'Le Pecq');
INSERT INTO public.adresse VALUES (2, 6, NULL, '14', 'avenue', 'Kleber', NULL, '78300', 'Poissy');
INSERT INTO public.adresse VALUES (7, NULL, 3, '29', 'rue', 'Fillon', NULL, '78300', 'Poissy');
INSERT INTO public.adresse VALUES (8, NULL, 4, '10', 'rue', 'Sarkozy', NULL, '78230', 'Le Pecq');
INSERT INTO public.adresse VALUES (9, NULL, 5, '98', 'boulevard', 'Chirac', NULL, '78230', 'Le Pecq');
INSERT INTO public.adresse VALUES (3, NULL, 1, '25', 'rue', 'Macron', NULL, '78230', 'Le Pecq');
INSERT INTO public.adresse VALUES (4, NULL, 2, '40', 'avenue', 'Balkany', NULL, '78300', 'Poissy');


--
-- TOC entry 2930 (class 0 OID 16415)
-- Dependencies: 201
-- Data for Name: paiement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.paiement VALUES (1, 'especes');
INSERT INTO public.paiement VALUES (2, 'carte bancaire');


--
-- TOC entry 2928 (class 0 OID 16407)
-- Dependencies: 199
-- Data for Name: retraitcommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.retraitcommande VALUES (3, 'retrait en magasin');
INSERT INTO public.retraitcommande VALUES (4, 'livraison');


--
-- TOC entry 2926 (class 0 OID 16399)
-- Dependencies: 197
-- Data for Name: statuscommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.statuscommande VALUES (1, 'en attente de preparation');
INSERT INTO public.statuscommande VALUES (2, 'en cours de preparartion');
INSERT INTO public.statuscommande VALUES (3, 'en attente de livraison');
INSERT INTO public.statuscommande VALUES (4, 'en cours de livraison');
INSERT INTO public.statuscommande VALUES (5, 'livree');
INSERT INTO public.statuscommande VALUES (6, 'cloturee');
INSERT INTO public.statuscommande VALUES (7, 'annulee');
INSERT INTO public.statuscommande VALUES (8, 'payee');
INSERT INTO public.statuscommande VALUES (9, 'en attente de paiement');
INSERT INTO public.statuscommande VALUES (10, 'prete');


--
-- TOC entry 2945 (class 0 OID 16479)
-- Dependencies: 216
-- Data for Name: commandeclient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commandeclient VALUES (9, 1, 5, 3, 5, 1, '2019-06-20', '2019-06-20');
INSERT INTO public.commandeclient VALUES (10, 2, 2, 4, 6, 2, '2019-06-24', '2019-06-24');
INSERT INTO public.commandeclient VALUES (11, 9, 4, 4, 5, 2, '2019-06-24', '2019-06-24');
INSERT INTO public.commandeclient VALUES (12, 10, 2, 3, 6, 1, '2019-06-24', '2019-06-24');


--
-- TOC entry 2941 (class 0 OID 16463)
-- Dependencies: 212
-- Data for Name: employe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employe VALUES (9, 7, 'responsable de chaine', NULL);
INSERT INTO public.employe VALUES (7, 6, 'pizzaiolo', 5);
INSERT INTO public.employe VALUES (8, 8, 'pizzaiolo', 6);
INSERT INTO public.employe VALUES (13, 10, 'vendeur', 6);
INSERT INTO public.employe VALUES (15, 14, 'responsable de point de vente', 6);
INSERT INTO public.employe VALUES (10, 11, 'livreur', 5);
INSERT INTO public.employe VALUES (12, 9, 'vendeur', 5);
INSERT INTO public.employe VALUES (14, 13, 'responsable de point de vente', 5);
INSERT INTO public.employe VALUES (11, 12, 'livreur', 6);


--
-- TOC entry 2934 (class 0 OID 16431)
-- Dependencies: 205
-- Data for Name: recettepizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recettepizza VALUES (9, 'etape 1 = sauce tomate : 10gr, etape 2 = mozzarella : 12gr, etape 3 = champignon 5gr, etape 4 = poivron : 10gr, etape 5 = oignon : 5gr');
INSERT INTO public.recettepizza VALUES (10, 'etape 1 = sauce tomate : 10gr, etape 2 = mozzarella : 12gr, etape 3 = olives 5gr, etape 4 = origan : 1gr');
INSERT INTO public.recettepizza VALUES (11, 'etape 1 = sauce tomate : 10gr, etape 2 = mozzarella : 12gr, etape 3 = jambon 30gr, etape 4 = champignon : 5gr');
INSERT INTO public.recettepizza VALUES (12, 'etape 1 = sauce tomate : 10gr, etape 2 = mozzarella : 12gr, etape 3 = epaule 30gr, etape 4 = oeuf : 1');
INSERT INTO public.recettepizza VALUES (13, 'etape 1 = sauce tomate : 10gr, etape 2 = mozzarella : 12gr, etape 3 = mergez 20gr, etape 4 = poivron : 10gr, etape 5 = oignon : 5gr, etape 6 = oeuf : 1');


--
-- TOC entry 2936 (class 0 OID 16442)
-- Dependencies: 207
-- Data for Name: pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pizza VALUES (1, 9, 'Vege');
INSERT INTO public.pizza VALUES (2, 10, 'Margherita');
INSERT INTO public.pizza VALUES (3, 11, 'Reine');
INSERT INTO public.pizza VALUES (4, 12, 'Calzone');
INSERT INTO public.pizza VALUES (5, 13, 'Orientale');


--
-- TOC entry 2946 (class 0 OID 16485)
-- Dependencies: 217
-- Data for Name: lignecommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lignecommande VALUES (1, 9, 1, 1, 10.50, 19.60, 12.56);
INSERT INTO public.lignecommande VALUES (2, 10, 2, 1, 9.50, 19.60, 11.36);
INSERT INTO public.lignecommande VALUES (3, 11, 3, 1, 10.50, 19.60, 12.56);
INSERT INTO public.lignecommande VALUES (4, 12, 4, 1, 10.50, 19.60, 12.56);


--
-- TOC entry 2951 (class 0 OID 16636)
-- Dependencies: 222
-- Data for Name: recetteingredientpizza; Type: TABLE DATA; Schema: public; Owner: adm_ocpizza
--

INSERT INTO public.recetteingredientpizza VALUES (9, 1);
INSERT INTO public.recetteingredientpizza VALUES (9, 2);
INSERT INTO public.recetteingredientpizza VALUES (9, 3);
INSERT INTO public.recetteingredientpizza VALUES (9, 4);
INSERT INTO public.recetteingredientpizza VALUES (9, 11);
INSERT INTO public.recetteingredientpizza VALUES (10, 1);
INSERT INTO public.recetteingredientpizza VALUES (10, 2);
INSERT INTO public.recetteingredientpizza VALUES (10, 8);
INSERT INTO public.recetteingredientpizza VALUES (10, 9);
INSERT INTO public.recetteingredientpizza VALUES (11, 1);
INSERT INTO public.recetteingredientpizza VALUES (11, 2);
INSERT INTO public.recetteingredientpizza VALUES (11, 7);
INSERT INTO public.recetteingredientpizza VALUES (11, 3);
INSERT INTO public.recetteingredientpizza VALUES (12, 1);
INSERT INTO public.recetteingredientpizza VALUES (12, 2);
INSERT INTO public.recetteingredientpizza VALUES (12, 6);
INSERT INTO public.recetteingredientpizza VALUES (12, 5);
INSERT INTO public.recetteingredientpizza VALUES (13, 1);
INSERT INTO public.recetteingredientpizza VALUES (13, 2);
INSERT INTO public.recetteingredientpizza VALUES (13, 10);
INSERT INTO public.recetteingredientpizza VALUES (13, 4);
INSERT INTO public.recetteingredientpizza VALUES (13, 11);
INSERT INTO public.recetteingredientpizza VALUES (13, 5);


--
-- TOC entry 2950 (class 0 OID 16631)
-- Dependencies: 221
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: adm_ocpizza
--

INSERT INTO public.stock VALUES (1, 5, 10);
INSERT INTO public.stock VALUES (2, 5, 30);
INSERT INTO public.stock VALUES (3, 5, 12);
INSERT INTO public.stock VALUES (4, 5, 50);
INSERT INTO public.stock VALUES (5, 5, 60);
INSERT INTO public.stock VALUES (6, 5, 14);
INSERT INTO public.stock VALUES (7, 5, 19);
INSERT INTO public.stock VALUES (8, 5, 20);
INSERT INTO public.stock VALUES (9, 5, 70);
INSERT INTO public.stock VALUES (10, 5, 90);
INSERT INTO public.stock VALUES (11, 5, 40);
INSERT INTO public.stock VALUES (1, 6, 90);
INSERT INTO public.stock VALUES (2, 6, 20);
INSERT INTO public.stock VALUES (3, 6, 82);
INSERT INTO public.stock VALUES (4, 6, 70);
INSERT INTO public.stock VALUES (5, 6, 65);
INSERT INTO public.stock VALUES (6, 6, 44);
INSERT INTO public.stock VALUES (7, 6, 39);
INSERT INTO public.stock VALUES (8, 6, 21);
INSERT INTO public.stock VALUES (9, 6, 75);
INSERT INTO public.stock VALUES (10, 6, 99);
INSERT INTO public.stock VALUES (11, 6, 41);


--
-- TOC entry 2932 (class 0 OID 16423)
-- Dependencies: 203
-- Data for Name: typeingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typeingredient VALUES (1, 'tomate');
INSERT INTO public.typeingredient VALUES (2, 'mozzarella');
INSERT INTO public.typeingredient VALUES (3, 'champignon');
INSERT INTO public.typeingredient VALUES (4, 'poivron');
INSERT INTO public.typeingredient VALUES (5, 'oeuf');
INSERT INTO public.typeingredient VALUES (6, 'epaule');
INSERT INTO public.typeingredient VALUES (7, 'jambon');
INSERT INTO public.typeingredient VALUES (8, 'olive');
INSERT INTO public.typeingredient VALUES (9, 'origan');
INSERT INTO public.typeingredient VALUES (10, 'mergez');
INSERT INTO public.typeingredient VALUES (11, 'oignon');


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 218
-- Name: adresse_adresse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_adresse_id_seq', 14, true);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 220
-- Name: client_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_client_id_seq', 5, true);


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 215
-- Name: commandeclient_numerocommandeclient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commandeclient_numerocommandeclient_seq', 12, true);


--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 208
-- Name: compteutilisateur_compteutilisateur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compteutilisateur_compteutilisateur_id_seq', 14, true);


--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 211
-- Name: employe_typeemploye_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employe_typeemploye_id_seq', 15, true);


--
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 200
-- Name: paiement_paiement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paiement_paiement_id_seq', 2, true);


--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 206
-- Name: pizza_pizza_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizza_pizza_id_seq', 5, true);


--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 204
-- Name: recettepizza_recettepizza_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recettepizza_recettepizza_id_seq', 13, true);


--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 213
-- Name: restaurant_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restaurant_restaurant_id_seq', 6, true);


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 198
-- Name: retraitcommande_retraitcommande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.retraitcommande_retraitcommande_id_seq', 4, true);


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 196
-- Name: statuscommande_statuscommande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statuscommande_statuscommande_id_seq', 10, true);


--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 202
-- Name: typeingrediant_typeingrediant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.typeingrediant_typeingrediant_id_seq', 11, true);


-- Completed on 2019-08-07 10:37:18

--
-- PostgreSQL database dump complete
--

