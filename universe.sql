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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    planet_types text NOT NULL,
    galaxy_types text NOT NULL,
    description_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    has_life integer,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life integer,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    has_life integer,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    has_life integer,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES ('planet_1', 'galaxy_one', 1, 'd_one');
INSERT INTO public.description VALUES ('planet_2', 'galaxy_2', 2, 'd_two');
INSERT INTO public.description VALUES ('planet_3', 'galaxy_3', 3, 'd_three');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g_one', 1, true, 1.0);
INSERT INTO public.galaxy VALUES (2, 'g_two', 2, true, 2.0);
INSERT INTO public.galaxy VALUES (3, 'g_three', 3, true, 3.0);
INSERT INTO public.galaxy VALUES (4, 'g_four', 4, true, 4.0);
INSERT INTO public.galaxy VALUES (5, 'g_five', 5, true, 5.0);
INSERT INTO public.galaxy VALUES (6, 'g_six', 6, true, 6.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm_one', 1, false, 1.0, 1);
INSERT INTO public.moon VALUES (2, 'm_two', 1, false, 1.0, 1);
INSERT INTO public.moon VALUES (3, 'm_three', 1, false, 1.0, 1);
INSERT INTO public.moon VALUES (4, 'm_four', 2, false, 1.0, 1);
INSERT INTO public.moon VALUES (5, 'm_five', 2, false, 1.0, 1);
INSERT INTO public.moon VALUES (6, 'm_six', 2, false, 1.0, 2);
INSERT INTO public.moon VALUES (7, 'm_seven', 3, true, 3.0, 2);
INSERT INTO public.moon VALUES (8, 'm_eight', 3, true, 3.0, 2);
INSERT INTO public.moon VALUES (9, 'm_nine', 3, true, 3.0, 2);
INSERT INTO public.moon VALUES (10, 'm_ten', 3, true, 3.0, 2);
INSERT INTO public.moon VALUES (11, 'm_eleven', 3, true, 3.0, 2);
INSERT INTO public.moon VALUES (12, 'm_twleve', 3, true, 3.0, 2);
INSERT INTO public.moon VALUES (13, '13', 3, false, 3.0, 12);
INSERT INTO public.moon VALUES (14, '14', 3, true, 3.0, 11);
INSERT INTO public.moon VALUES (15, '15', 3, false, 3.0, 11);
INSERT INTO public.moon VALUES (16, '16', 3, false, 3.0, 11);
INSERT INTO public.moon VALUES (17, '17', 3, false, 3.0, 12);
INSERT INTO public.moon VALUES (18, '18', 4, false, 3.0, 12);
INSERT INTO public.moon VALUES (19, '19', 4, false, 3.0, 11);
INSERT INTO public.moon VALUES (20, '20', 4, true, 3.0, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p_one', 1, false, 1.0, 1);
INSERT INTO public.planet VALUES (2, 'p_two', 1, false, 1.0, 1);
INSERT INTO public.planet VALUES (3, 'p_three', 1, false, 1.0, 1);
INSERT INTO public.planet VALUES (4, 'p_four', 2, false, 1.0, 1);
INSERT INTO public.planet VALUES (5, 'p_five', 2, false, 1.0, 1);
INSERT INTO public.planet VALUES (6, 'p_six', 2, false, 1.0, 2);
INSERT INTO public.planet VALUES (7, 'p_seven', 3, true, 3.0, 2);
INSERT INTO public.planet VALUES (8, 'p_eight', 3, true, 3.0, 2);
INSERT INTO public.planet VALUES (9, 'p_nine', 3, true, 3.0, 2);
INSERT INTO public.planet VALUES (10, 'p_ten', 3, true, 3.0, 2);
INSERT INTO public.planet VALUES (11, 'p_eleven', 3, true, 3.0, 2);
INSERT INTO public.planet VALUES (12, 'p_twleve', 3, true, 3.0, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's_one', 1, false, 1.0, 1);
INSERT INTO public.star VALUES (2, 's_two', 1, false, 1.0, 1);
INSERT INTO public.star VALUES (3, 's_three', 1, false, 1.0, 1);
INSERT INTO public.star VALUES (4, 's_four', 2, false, 1.0, 1);
INSERT INTO public.star VALUES (5, 's_five', 2, false, 1.0, 1);
INSERT INTO public.star VALUES (6, 's_six', 2, false, 1.0, 1);


--
-- Name: description description_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_id_key UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

