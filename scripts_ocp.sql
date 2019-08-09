--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 10.9

-- Started on 2019-08-07 10:27:47

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 219 (class 1259 OID 16500)
-- Name: adresse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresse (
    adresse_id integer NOT NULL,
    restaurant_id integer,
    client_id integer,
    numerodevoie character varying(20) NOT NULL,
    typedevoie character varying(100) NOT NULL,
    nomdevoie character varying(200) NOT NULL,
    complementadresse text,
    codepostal character varying(5) NOT NULL,
    commune character varying(100) NOT NULL
);


ALTER TABLE public.adresse OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16498)
-- Name: adresse_adresse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adresse_adresse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adresse_adresse_id_seq OWNER TO postgres;

--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 218
-- Name: adresse_adresse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_adresse_id_seq OWNED BY public.adresse.adresse_id;


--
-- TOC entry 210 (class 1259 OID 16456)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    client_id integer NOT NULL,
    compteutilisateur_id integer NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16589)
-- Name: client_client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.client ALTER COLUMN client_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9223372
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16479)
-- Name: commandeclient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commandeclient (
    numerocommandeclient integer NOT NULL,
    compteutilisateur_id integer NOT NULL,
    statuscommande_id integer NOT NULL,
    retraitcommande_id integer NOT NULL,
    restaurant_id integer NOT NULL,
    paiement_id integer NOT NULL,
    datedecreationcommande date NOT NULL,
    datedecloturecommande date
);


ALTER TABLE public.commandeclient OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16477)
-- Name: commandeclient_numerocommandeclient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commandeclient_numerocommandeclient_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commandeclient_numerocommandeclient_seq OWNER TO postgres;

--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 215
-- Name: commandeclient_numerocommandeclient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commandeclient_numerocommandeclient_seq OWNED BY public.commandeclient.numerocommandeclient;


--
-- TOC entry 209 (class 1259 OID 16450)
-- Name: compteutilisateur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compteutilisateur (
    compteutilisateur_id integer NOT NULL,
    nomutilisateur character varying(100) NOT NULL,
    prenomutilisateur character varying(100) NOT NULL,
    telephoneutilisateur integer NOT NULL,
    emailutilisateur character varying(100) NOT NULL,
    motdepasseutilisateur character varying(100) NOT NULL
);


ALTER TABLE public.compteutilisateur OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16448)
-- Name: compteutilisateur_compteutilisateur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compteutilisateur_compteutilisateur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compteutilisateur_compteutilisateur_id_seq OWNER TO postgres;

--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 208
-- Name: compteutilisateur_compteutilisateur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compteutilisateur_compteutilisateur_id_seq OWNED BY public.compteutilisateur.compteutilisateur_id;


--
-- TOC entry 212 (class 1259 OID 16463)
-- Name: employe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employe (
    employe_id integer NOT NULL,
    compteutilisateur_id integer NOT NULL,
    typeemploye character varying(30) NOT NULL,
    restaurant_id integer
);


ALTER TABLE public.employe OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16461)
-- Name: employe_typeemploye_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employe_typeemploye_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employe_typeemploye_id_seq OWNER TO postgres;

--
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 211
-- Name: employe_typeemploye_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employe_typeemploye_id_seq OWNED BY public.employe.employe_id;


--
-- TOC entry 217 (class 1259 OID 16485)
-- Name: lignecommande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lignecommande (
    lignecommande_id integer NOT NULL,
    numerocommandeclient integer NOT NULL,
    pizza_id integer NOT NULL,
    quantite integer NOT NULL,
    prixunitaireht numeric(7,2) NOT NULL,
    tauxtva numeric(4,2) NOT NULL,
    prixttc numeric(7,2) NOT NULL
);


ALTER TABLE public.lignecommande OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16415)
-- Name: paiement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paiement (
    paiement_id integer NOT NULL,
    modedepaiement character varying(100) NOT NULL
);


ALTER TABLE public.paiement OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16413)
-- Name: paiement_paiement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paiement_paiement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paiement_paiement_id_seq OWNER TO postgres;

--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 200
-- Name: paiement_paiement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paiement_paiement_id_seq OWNED BY public.paiement.paiement_id;


--
-- TOC entry 207 (class 1259 OID 16442)
-- Name: pizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pizza (
    pizza_id integer NOT NULL,
    recettepizza_id integer NOT NULL,
    typepizza character varying(100) NOT NULL
);


ALTER TABLE public.pizza OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16440)
-- Name: pizza_pizza_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pizza_pizza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizza_pizza_id_seq OWNER TO postgres;

--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 206
-- Name: pizza_pizza_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pizza_pizza_id_seq OWNED BY public.pizza.pizza_id;


--
-- TOC entry 222 (class 1259 OID 16636)
-- Name: recetteingredientpizza; Type: TABLE; Schema: public; Owner: adm_ocpizza
--

CREATE TABLE public.recetteingredientpizza (
    recettepizza_id integer NOT NULL,
    typeingredient_id integer NOT NULL
);


ALTER TABLE public.recetteingredientpizza OWNER TO adm_ocpizza;

--
-- TOC entry 205 (class 1259 OID 16431)
-- Name: recettepizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recettepizza (
    recettepizza_id integer NOT NULL,
    descriptionrecettepizza character varying(1000) NOT NULL
);


ALTER TABLE public.recettepizza OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16429)
-- Name: recettepizza_recettepizza_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recettepizza_recettepizza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recettepizza_recettepizza_id_seq OWNER TO postgres;

--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 204
-- Name: recettepizza_recettepizza_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recettepizza_recettepizza_id_seq OWNED BY public.recettepizza.recettepizza_id;


--
-- TOC entry 214 (class 1259 OID 16471)
-- Name: restaurant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurant (
    restaurant_id integer NOT NULL,
    numerosiretrestaurant bigint NOT NULL,
    nomrestaurant character varying(100) NOT NULL,
    telephonerestaurant integer NOT NULL,
    emailrestaurant character varying(100) NOT NULL
);


ALTER TABLE public.restaurant OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16469)
-- Name: restaurant_restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restaurant_restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restaurant_restaurant_id_seq OWNER TO postgres;

--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 213
-- Name: restaurant_restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restaurant_restaurant_id_seq OWNED BY public.restaurant.restaurant_id;


--
-- TOC entry 199 (class 1259 OID 16407)
-- Name: retraitcommande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.retraitcommande (
    retraitcommande_id integer NOT NULL,
    modederetraitcommande character varying(100) NOT NULL
);


ALTER TABLE public.retraitcommande OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16405)
-- Name: retraitcommande_retraitcommande_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.retraitcommande_retraitcommande_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retraitcommande_retraitcommande_id_seq OWNER TO postgres;

--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 198
-- Name: retraitcommande_retraitcommande_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.retraitcommande_retraitcommande_id_seq OWNED BY public.retraitcommande.retraitcommande_id;


--
-- TOC entry 197 (class 1259 OID 16399)
-- Name: statuscommande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuscommande (
    statuscommande_id integer NOT NULL,
    etatdelacommande character varying(100) NOT NULL
);


ALTER TABLE public.statuscommande OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16397)
-- Name: statuscommande_statuscommande_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statuscommande_statuscommande_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuscommande_statuscommande_id_seq OWNER TO postgres;

--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 196
-- Name: statuscommande_statuscommande_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statuscommande_statuscommande_id_seq OWNED BY public.statuscommande.statuscommande_id;


--
-- TOC entry 221 (class 1259 OID 16631)
-- Name: stock; Type: TABLE; Schema: public; Owner: adm_ocpizza
--

CREATE TABLE public.stock (
    typeingredient_id integer NOT NULL,
    restaurant_id integer NOT NULL,
    quantite_ingredient integer NOT NULL
);


ALTER TABLE public.stock OWNER TO adm_ocpizza;

--
-- TOC entry 203 (class 1259 OID 16423)
-- Name: typeingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typeingredient (
    typeingredient_id integer NOT NULL,
    ingredient character varying(100) NOT NULL
);


ALTER TABLE public.typeingredient OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16421)
-- Name: typeingrediant_typeingrediant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typeingrediant_typeingrediant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typeingrediant_typeingrediant_id_seq OWNER TO postgres;

--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 202
-- Name: typeingrediant_typeingrediant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typeingrediant_typeingrediant_id_seq OWNED BY public.typeingredient.typeingredient_id;


--
-- TOC entry 2760 (class 2604 OID 16503)
-- Name: adresse adresse_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN adresse_id SET DEFAULT nextval('public.adresse_adresse_id_seq'::regclass);


--
-- TOC entry 2759 (class 2604 OID 16482)
-- Name: commandeclient numerocommandeclient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient ALTER COLUMN numerocommandeclient SET DEFAULT nextval('public.commandeclient_numerocommandeclient_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 16453)
-- Name: compteutilisateur compteutilisateur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compteutilisateur ALTER COLUMN compteutilisateur_id SET DEFAULT nextval('public.compteutilisateur_compteutilisateur_id_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 16466)
-- Name: employe employe_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe ALTER COLUMN employe_id SET DEFAULT nextval('public.employe_typeemploye_id_seq'::regclass);


--
-- TOC entry 2752 (class 2604 OID 16418)
-- Name: paiement paiement_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paiement ALTER COLUMN paiement_id SET DEFAULT nextval('public.paiement_paiement_id_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 16445)
-- Name: pizza pizza_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza ALTER COLUMN pizza_id SET DEFAULT nextval('public.pizza_pizza_id_seq'::regclass);


--
-- TOC entry 2754 (class 2604 OID 16434)
-- Name: recettepizza recettepizza_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recettepizza ALTER COLUMN recettepizza_id SET DEFAULT nextval('public.recettepizza_recettepizza_id_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 16474)
-- Name: restaurant restaurant_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurant ALTER COLUMN restaurant_id SET DEFAULT nextval('public.restaurant_restaurant_id_seq'::regclass);


--
-- TOC entry 2751 (class 2604 OID 16410)
-- Name: retraitcommande retraitcommande_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retraitcommande ALTER COLUMN retraitcommande_id SET DEFAULT nextval('public.retraitcommande_retraitcommande_id_seq'::regclass);


--
-- TOC entry 2750 (class 2604 OID 16402)
-- Name: statuscommande statuscommande_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuscommande ALTER COLUMN statuscommande_id SET DEFAULT nextval('public.statuscommande_statuscommande_id_seq'::regclass);


--
-- TOC entry 2753 (class 2604 OID 16426)
-- Name: typeingredient typeingredient_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typeingredient ALTER COLUMN typeingredient_id SET DEFAULT nextval('public.typeingrediant_typeingrediant_id_seq'::regclass);


--
-- TOC entry 2786 (class 2606 OID 16508)
-- Name: adresse adresse_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_pk PRIMARY KEY (adresse_id);


--
-- TOC entry 2776 (class 2606 OID 16460)
-- Name: client client_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pk PRIMARY KEY (client_id);


--
-- TOC entry 2782 (class 2606 OID 16484)
-- Name: commandeclient commandeclient_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient
    ADD CONSTRAINT commandeclient_pk PRIMARY KEY (numerocommandeclient);


--
-- TOC entry 2774 (class 2606 OID 16455)
-- Name: compteutilisateur compteutilisateur_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compteutilisateur
    ADD CONSTRAINT compteutilisateur_pk PRIMARY KEY (compteutilisateur_id);


--
-- TOC entry 2778 (class 2606 OID 16468)
-- Name: employe employe_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_pk PRIMARY KEY (employe_id);


--
-- TOC entry 2784 (class 2606 OID 16489)
-- Name: lignecommande lignecommande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lignecommande
    ADD CONSTRAINT lignecommande_pk PRIMARY KEY (lignecommande_id);


--
-- TOC entry 2766 (class 2606 OID 16420)
-- Name: paiement paiement_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paiement
    ADD CONSTRAINT paiement_pk PRIMARY KEY (paiement_id);


--
-- TOC entry 2772 (class 2606 OID 16447)
-- Name: pizza pizza_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pk PRIMARY KEY (pizza_id);


--
-- TOC entry 2790 (class 2606 OID 16640)
-- Name: recetteingredientpizza recetteingrediantpizza_pk; Type: CONSTRAINT; Schema: public; Owner: adm_ocpizza
--

ALTER TABLE ONLY public.recetteingredientpizza
    ADD CONSTRAINT recetteingrediantpizza_pk PRIMARY KEY (recettepizza_id, typeingredient_id);


--
-- TOC entry 2770 (class 2606 OID 16439)
-- Name: recettepizza recettepizza_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recettepizza
    ADD CONSTRAINT recettepizza_pk PRIMARY KEY (recettepizza_id);


--
-- TOC entry 2780 (class 2606 OID 16476)
-- Name: restaurant restaurant_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT restaurant_pk PRIMARY KEY (restaurant_id);


--
-- TOC entry 2764 (class 2606 OID 16412)
-- Name: retraitcommande retraitcommande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retraitcommande
    ADD CONSTRAINT retraitcommande_pk PRIMARY KEY (retraitcommande_id);


--
-- TOC entry 2762 (class 2606 OID 16404)
-- Name: statuscommande statuscommande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuscommande
    ADD CONSTRAINT statuscommande_pk PRIMARY KEY (statuscommande_id);


--
-- TOC entry 2788 (class 2606 OID 16635)
-- Name: stock stock_pk; Type: CONSTRAINT; Schema: public; Owner: adm_ocpizza
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pk PRIMARY KEY (typeingredient_id, restaurant_id);


--
-- TOC entry 2768 (class 2606 OID 16428)
-- Name: typeingredient typeingrediant_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typeingredient
    ADD CONSTRAINT typeingrediant_pk PRIMARY KEY (typeingredient_id);


--
-- TOC entry 2802 (class 2606 OID 16559)
-- Name: adresse client_adresse_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT client_adresse_fk FOREIGN KEY (client_id) REFERENCES public.client(client_id);


--
-- TOC entry 2801 (class 2606 OID 16584)
-- Name: lignecommande commandeclient_lignecommande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lignecommande
    ADD CONSTRAINT commandeclient_lignecommande_fk FOREIGN KEY (numerocommandeclient) REFERENCES public.commandeclient(numerocommandeclient);


--
-- TOC entry 2792 (class 2606 OID 16549)
-- Name: client compteutilisateur_client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT compteutilisateur_client_fk FOREIGN KEY (compteutilisateur_id) REFERENCES public.compteutilisateur(compteutilisateur_id);


--
-- TOC entry 2798 (class 2606 OID 16554)
-- Name: commandeclient compteutilisateur_commandeclient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient
    ADD CONSTRAINT compteutilisateur_commandeclient_fk FOREIGN KEY (compteutilisateur_id) REFERENCES public.compteutilisateur(compteutilisateur_id);


--
-- TOC entry 2793 (class 2606 OID 16544)
-- Name: employe compteutilisateur_employe_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT compteutilisateur_employe_fk FOREIGN KEY (compteutilisateur_id) REFERENCES public.compteutilisateur(compteutilisateur_id);


--
-- TOC entry 2797 (class 2606 OID 16519)
-- Name: commandeclient paiement_commandeclient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient
    ADD CONSTRAINT paiement_commandeclient_fk FOREIGN KEY (paiement_id) REFERENCES public.paiement(paiement_id);


--
-- TOC entry 2800 (class 2606 OID 16539)
-- Name: lignecommande pizza_lignecommande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lignecommande
    ADD CONSTRAINT pizza_lignecommande_fk FOREIGN KEY (pizza_id) REFERENCES public.pizza(pizza_id);


--
-- TOC entry 2791 (class 2606 OID 16534)
-- Name: pizza recettepizza_pizza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT recettepizza_pizza_fk FOREIGN KEY (recettepizza_id) REFERENCES public.recettepizza(recettepizza_id);


--
-- TOC entry 2803 (class 2606 OID 16569)
-- Name: adresse restaurant_adresse_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT restaurant_adresse_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(restaurant_id);


--
-- TOC entry 2799 (class 2606 OID 16579)
-- Name: commandeclient restaurant_commandeclient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient
    ADD CONSTRAINT restaurant_commandeclient_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(restaurant_id);


--
-- TOC entry 2794 (class 2606 OID 16598)
-- Name: employe restaurant_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT restaurant_id FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(restaurant_id);


--
-- TOC entry 2796 (class 2606 OID 16514)
-- Name: commandeclient retraitcommande_commandeclient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient
    ADD CONSTRAINT retraitcommande_commandeclient_fk FOREIGN KEY (retraitcommande_id) REFERENCES public.retraitcommande(retraitcommande_id);


--
-- TOC entry 2795 (class 2606 OID 16509)
-- Name: commandeclient statuscommande_commandeclient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commandeclient
    ADD CONSTRAINT statuscommande_commandeclient_fk FOREIGN KEY (statuscommande_id) REFERENCES public.statuscommande(statuscommande_id);


-- Completed on 2019-08-07 10:27:48

--
-- PostgreSQL database dump complete
--

