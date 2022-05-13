--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(30) NOT NULL,
    constellation_id integer NOT NULL,
    life boolean,
    gender text,
    age integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    planets integer,
    star_id integer,
    moons numeric
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    life boolean,
    gender text,
    age integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    life boolean,
    gender text,
    age integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_id integer,
    life boolean,
    gender text,
    age integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('A', 1, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('B', 2, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('C', 3, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('D', 4, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('E', 5, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('F', 6, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('G', 7, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('H', 8, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('I', 9, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('J', 10, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('K', 11, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('L', 12, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('M', 13, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('N', 14, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('O', 15, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('P', 16, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('Q', 17, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('R', 18, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('S', 19, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('T', 20, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('U', 21, NULL, NULL, NULL);
INSERT INTO public.constellation VALUES ('V', 22, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andromeda', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('butterfly', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cigar', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('medusa', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('sunflower', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('tadpole', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('A', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('B', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('C', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('D', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('E', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('F', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('G', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('H', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('I', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('J', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('K', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('L', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('M', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('N', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('O', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('P', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Q', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('R', 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('S', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('T', 20, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('U', 21, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('V', 22, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('A', 14, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('B', 15, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('C', 16, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('D', 17, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('E', 18, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('F', 19, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('G', 20, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('H', 21, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('I', 22, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('J', 23, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('K', 24, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('L', 25, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('M', 26, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('alpheratz', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('spica', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('dubhe', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('merak', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('cor caroli', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('thuban', 6, NULL, NULL, NULL, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 22, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_key UNIQUE (planet_id);


--
-- Name: moon moon_age_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_fkey FOREIGN KEY (age) REFERENCES public.planet(age);


--
-- PostgreSQL database dump complete
--

