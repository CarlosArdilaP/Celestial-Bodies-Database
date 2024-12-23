--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size_au integer NOT NULL,
    weight integer NOT NULL,
    size_in_ly numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: human_bases; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human_bases (
    human_bases_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.human_bases OWNER TO freecodecamp;

--
-- Name: human_bases_human_bases_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.human_bases_human_bases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.human_bases_human_bases_id_seq OWNER TO freecodecamp;

--
-- Name: human_bases_human_bases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.human_bases_human_bases_id_seq OWNED BY public.human_bases.human_bases_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size_au integer NOT NULL,
    weight integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    size_au integer NOT NULL,
    weight integer NOT NULL,
    description text,
    is_destroyed boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    size_au integer NOT NULL,
    weight integer NOT NULL,
    is_destroyed boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: human_bases human_bases_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_bases ALTER COLUMN human_bases_id SET DEFAULT nextval('public.human_bases_human_bases_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000, 10000, 1000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 1000, 10000, 1000);
INSERT INTO public.galaxy VALUES (3, 'Adrena', 1000, 10000, 1000);
INSERT INTO public.galaxy VALUES (4, 'Crakokia', 1000, 10000, 1000);
INSERT INTO public.galaxy VALUES (5, 'Fulifuli', 1000, 10000, 1000);
INSERT INTO public.galaxy VALUES (6, 'Fandolia', 1000, 10000, 1000);


--
-- Data for Name: human_bases; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human_bases VALUES (1, 'Alpha Base', 1);
INSERT INTO public.human_bases VALUES (2, 'Luna Station', 2);
INSERT INTO public.human_bases VALUES (3, 'Mars Colony', 3);
INSERT INTO public.human_bases VALUES (4, 'Europa Outpost', 4);
INSERT INTO public.human_bases VALUES (5, 'Titan Research Lab', 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 1, 1, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 1, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 1, 1, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 1, 1, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 1, 1, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 1, 1, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 1, 1, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 1, 1, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 1, 1, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 1, 1, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 1, 1, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 1, 1, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 1, 1, 2);
INSERT INTO public.moon VALUES (15, 'moon15', 1, 1, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 1, 1, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 1, 1, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 1, 1, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 1, 1, 7);
INSERT INTO public.moon VALUES (20, 'moon20', 1, 1, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 1, 1, 'planet lmao', false, 1);
INSERT INTO public.planet VALUES (2, 'p2', 1, 1, 'planet lmao', false, 6);
INSERT INTO public.planet VALUES (3, 'p3', 1, 1, 'planet lmao', false, 7);
INSERT INTO public.planet VALUES (4, 'p4', 1, 1, 'planet lmao', false, 8);
INSERT INTO public.planet VALUES (5, 'p5', 1, 1, 'planet lmao', false, 9);
INSERT INTO public.planet VALUES (6, 'p6', 1, 1, 'planet lmao', false, 10);
INSERT INTO public.planet VALUES (7, 'p7', 1, 1, 'planet lmao', false, 1);
INSERT INTO public.planet VALUES (8, 'p8', 1, 1, 'planet lmao', false, 6);
INSERT INTO public.planet VALUES (9, 'p9', 1, 1, 'planet lmao', false, 7);
INSERT INTO public.planet VALUES (10, 'p10', 1, 1, 'planet lmao', false, 8);
INSERT INTO public.planet VALUES (11, 'p11', 1, 1, 'planet lmao', false, 9);
INSERT INTO public.planet VALUES (12, 'p12', 1, 1, 'planet lmao', false, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AU1', 10, 100, false, 1);
INSERT INTO public.star VALUES (6, 'SUN', 10, 100, false, 2);
INSERT INTO public.star VALUES (7, 'AU3', 10, 100, false, 3);
INSERT INTO public.star VALUES (8, 'AU4', 10, 100, false, 4);
INSERT INTO public.star VALUES (9, 'AU5', 10, 100, false, 5);
INSERT INTO public.star VALUES (10, 'AU6', 10, 100, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: human_bases_human_bases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.human_bases_human_bases_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human_bases human_bases_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_bases
    ADD CONSTRAINT human_bases_name_key UNIQUE (name);


--
-- Name: human_bases human_bases_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_bases
    ADD CONSTRAINT human_bases_pkey PRIMARY KEY (human_bases_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: human_bases fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_bases
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

