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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_million_years integer,
    distance_from_earth integer,
    weight numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    body_id integer
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
    name character varying(20) NOT NULL,
    age_in_million_years integer,
    distance_from_earth integer,
    weight numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer,
    body_id integer
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
    name character varying(20) NOT NULL,
    age_in_million_years integer,
    distance_from_earth integer,
    weight numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    body_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    name character varying(20) NOT NULL,
    description text NOT NULL,
    planet_types_id integer NOT NULL,
    types_id integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_million_years integer,
    distance_from_earth integer,
    weight numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer,
    body_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, age_in_million_years, distance_from_earth, weight, description, has_life, is_spherical, body_id) FROM stdin;
1	Earth	100	5000	10.25	it support life	t	t	1
2	Earth	100	5000	10.25	it support life	t	t	2
3	Earth	100	5000	10.25	it support life	t	t	3
4	Earth	100	5000	10.25	it support life	t	t	4
5	Earth	100	5000	10.25	it support life	t	t	5
6	Earth	100	5000	10.25	it support life	t	t	6
7	Earth	100	5000	10.25	it support life	t	t	7
9	Earth	100	5000	10.25	it support life	t	t	8
10	Earth	100	5000	10.25	it support life	t	t	9
11	Earth	100	5000	10.25	it support life	t	t	10
12	Earth	100	5000	10.25	it support life	t	t	11
13	Earth	100	5000	10.25	it support life	t	t	12
14	Earth	100	5000	10.25	it support life	t	t	13
15	Earth	100	5000	10.25	it support life	t	t	14
17	Earth	100	5000	10.25	it support life	t	t	15
18	Earth	100	5000	10.25	it support life	t	t	16
19	Earth	100	5000	10.25	it support life	t	t	17
20	Earth	100	5000	10.25	it support life	t	t	18
21	Earth	100	5000	10.25	it support life	t	t	19
22	Earth	100	5000	10.25	it support life	t	t	20
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, age_in_million_years, distance_from_earth, weight, description, has_life, is_spherical, planet_id, body_id) FROM stdin;
1	Earth	100	5000	10.25	it support life	t	t	\N	20
3	Earth	100	5000	10.25	it support life	t	t	\N	2
4	Earth	100	5000	10.25	it support life	t	t	\N	3
5	Earth	100	5000	10.25	it support life	t	t	\N	4
7	Earth	100	5000	10.25	it support life	t	t	\N	5
8	Earth	100	5000	10.25	it support life	t	t	\N	6
9	Earth	100	5000	10.25	it support life	t	t	\N	7
10	Earth	100	5000	10.25	it support life	t	t	\N	8
11	Earth	100	5000	10.25	it support life	t	t	\N	9
12	Earth	100	5000	10.25	it support life	t	t	\N	10
13	Earth	100	5000	10.25	it support life	t	t	\N	11
14	Earth	100	5000	10.25	it support life	t	t	\N	12
15	Earth	100	5000	10.25	it support life	t	t	\N	13
16	Earth	100	5000	10.25	it support life	t	t	\N	14
17	Earth	100	5000	10.25	it support life	t	t	\N	16
18	Earth	100	5000	10.25	it support life	t	t	\N	17
19	Earth	100	5000	10.25	it support life	t	t	\N	18
20	Earth	100	5000	10.25	it support life	t	t	\N	19
22	Earth	100	5000	10.25	it support life	t	t	\N	21
23	Earth	100	5000	10.25	it support life	t	t	\N	1
25	Earth	100	5000	10.25	it support life	t	t	\N	\N
26	Earth	100	5000	10.25	it support life	t	t	\N	\N
27	Earth	100	5000	10.25	it support life	t	t	\N	\N
28	Earth	100	5000	10.25	it support life	t	t	\N	\N
29	Earth	100	5000	10.25	it support life	t	t	\N	\N
30	Earth	100	5000	10.25	it support life	t	t	\N	\N
31	Earth	100	5000	10.25	it support life	t	t	\N	\N
32	Earth	100	5000	10.25	it support life	t	t	\N	\N
33	Earth	100	5000	10.25	it support life	t	t	\N	\N
34	Earth	100	5000	10.25	it support life	t	t	\N	\N
35	Earth	100	5000	10.25	it support life	t	t	\N	\N
36	Earth	100	5000	10.25	it support life	t	t	\N	\N
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, age_in_million_years, distance_from_earth, weight, description, has_life, is_spherical, star_id, body_id) FROM stdin;
2	Earth	100	5000	10.25	it support life	t	t	2	\N
3	Earth	100	5000	10.25	it support life	t	t	3	\N
4	Earth	100	5000	10.25	it support life	t	t	4	\N
5	Earth	100	5000	10.25	it support life	t	t	5	\N
6	Earth	100	5000	10.25	it support life	t	t	6	\N
7	Earth	100	5000	10.25	it support life	t	t	7	\N
8	Earth	100	5000	10.25	it support life	t	t	8	\N
9	Earth	100	5000	10.25	it support life	t	t	9	\N
10	Earth	100	5000	10.25	it support life	t	t	10	\N
11	Earth	100	5000	10.25	it support life	t	t	11	\N
12	Earth	100	5000	10.25	it support life	t	t	12	\N
13	Earth	100	5000	10.25	it support life	t	t	13	\N
\.


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet_types (name, description, planet_types_id, types_id) FROM stdin;
large	observed from Earth	1	1
large	observed from Earth	3	2
large	observed from Earth	4	3
large	observed from Earth	5	4
large	observed from Earth	6	5
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, age_in_million_years, distance_from_earth, weight, description, has_life, is_spherical, galaxy_id, body_id) FROM stdin;
2	Earth	100	5000	10.25	it support life	t	t	1	1
3	Earth	100	5000	10.25	it support life	t	t	\N	21
4	Earth	100	5000	10.25	it support life	t	t	\N	2
5	Earth	100	5000	10.25	it support life	t	t	\N	3
6	Earth	100	5000	10.25	it support life	t	t	\N	\N
7	Earth	100	5000	10.25	it support life	t	t	\N	\N
8	Earth	100	5000	10.25	it support life	t	t	\N	\N
9	Earth	100	5000	10.25	it support life	t	t	\N	\N
10	Earth	100	5000	10.25	it support life	t	t	\N	\N
11	Earth	100	5000	10.25	it support life	t	t	\N	\N
12	Earth	100	5000	10.25	it support life	t	t	\N	\N
13	Earth	100	5000	10.25	it support life	t	t	\N	\N
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 23, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: galaxy galaxy_body_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_body_id_key UNIQUE (body_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_body_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_body_id_key UNIQUE (body_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_body_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_body_id_key UNIQUE (body_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_types_id_key UNIQUE (types_id);


--
-- Name: star star_body_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_body_id_key UNIQUE (body_id);


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

