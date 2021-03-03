--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actor_name character varying(30) NOT NULL,
    birthday date
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: filmmaker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmmaker (
    filmmaker_name character varying(30) NOT NULL,
    birthday date
);


ALTER TABLE public.filmmaker OWNER TO postgres;

--
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    film_name character varying(40) NOT NULL,
    movie_premiere date
);


ALTER TABLE public.films OWNER TO postgres;

--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (actor_name, birthday) FROM stdin;
Christian Bale	1974-01-30
Gary Oldman	1958-03-21
Robin Williams	1951-07-21
Tom Hanks	1956-07-09
Denzel Washington	1954-12-28
Robert De Niro	1943-08-17
Joaquin Phoenix	1974-10-28
Morgan Freeman	1937-06-01
Brad Pitt	1963-12-18
Al Pacino	1940-04-25
Leonardo DiCaprio	1974-11-11
Anthony Hopkins	1937-12-31
Johnny Depp	1963-06-09
Neymar da Silva Santos Junior	1992-02-05
\.


--
-- Data for Name: filmmaker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filmmaker (filmmaker_name, birthday) FROM stdin;
Roman Polanski	1933-08-18
Tim Burton	1958-08-25
James Cameron	1954-08-16
Peter Jackson	1961-10-31
Quentin Tarantino	1963-03-27
Martin Scorsese	1942-11-17
Christopher Nolan	1970-07-30
George Lucas	1944-05-14
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (film_name, movie_premiere) FROM stdin;
Parasite	2019-05-30
12 Years a Slave	2013-08-30
Pan's Labyrinth	2006-10-11
The Shawshank Redemption	1994-09-22
The Godfather	1972-03-14
The Dark Knight	2008-07-18
Schindler's List	1993-11-30
Inception	2010-07-16
Forrest Gump	1994-07-23
Fight Club	1999-10-15
\.


--
-- PostgreSQL database dump complete
--

