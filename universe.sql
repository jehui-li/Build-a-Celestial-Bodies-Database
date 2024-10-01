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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(255) DEFAULT 'unknown'::character varying NOT NULL,
    description text DEFAULT 'unknown'::text NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(5,2),
    description text,
    has_life boolean DEFAULT false NOT NULL,
    is_spherical boolean DEFAULT true NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(5,2),
    description text,
    has_life boolean DEFAULT false NOT NULL,
    is_spherical boolean DEFAULT true NOT NULL,
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
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(5,2),
    description text,
    has_life boolean DEFAULT false NOT NULL,
    is_spherical boolean DEFAULT true NOT NULL,
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
    name character varying(255),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(5,2),
    description text,
    has_life boolean DEFAULT false NOT NULL,
    is_spherical boolean DEFAULT true NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'black_hole_1', 'beautiful');
INSERT INTO public.black_hole VALUES (2, 'black_hole_2', 'beautiful');
INSERT INTO public.black_hole VALUES (3, 'black_hole_3', 'beautiful');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', 1, 2, 3.40, 'beautiful', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', 1, 2, 3.40, 'beautiful', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', 1, 2, 3.40, 'beautiful', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', 1, 2, 3.40, 'beautiful', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', 1, 2, 3.40, 'beautiful', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', 1, 2, 3.40, 'beautiful', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (2, 'moon_2', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (3, 'moon_3', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (4, 'moon_4', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (5, 'moon_5', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (6, 'moon_6', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (7, 'moon_7', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (8, 'moon_8', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (9, 'moon_9', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (10, 'moon_10', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (11, 'moon_11', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (12, 'moon_12', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (13, 'moon_13', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (14, 'moon_14', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (15, 'moon_15', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (16, 'moon_16', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (17, 'moon_17', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (18, 'moon_18', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (19, 'moon_19', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.moon VALUES (20, 'moon_20', 1, 2, 3.40, 'beautiful', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (2, 'planet_2', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (3, 'planet_3', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (4, 'planet_4', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (5, 'planet_5', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (6, 'planet_6', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (7, 'planet_7', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (8, 'planet_8', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (9, 'planet_9', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (10, 'planet_10', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (11, 'planet_11', 1, 2, 3.40, 'beautiful', false, true, 1);
INSERT INTO public.planet VALUES (12, 'planet_12', 1, 2, 3.40, 'beautiful', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', 1, 2, 3.40, 'beautiful', true, true, 1);
INSERT INTO public.star VALUES (2, 'star_2', 1, 2, 3.40, 'beautiful', true, true, 1);
INSERT INTO public.star VALUES (3, 'star_3', 1, 2, 3.40, 'beautiful', true, true, 1);
INSERT INTO public.star VALUES (4, 'star_4', 1, 2, 3.40, 'beautiful', true, true, 1);
INSERT INTO public.star VALUES (5, 'star_5', 1, 2, 3.40, 'beautiful', true, true, 1);
INSERT INTO public.star VALUES (6, 'star_6', 1, 2, 3.40, 'beautiful', true, true, 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

