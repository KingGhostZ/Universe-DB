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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    galaxy_type character varying(60),
    distance_in_lightyears integer NOT NULL
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
    name character varying(50) NOT NULL,
    description text,
    distance_from_earth integer,
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    population_in_billion integer,
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
    name character varying(50) NOT NULL,
    description text,
    size numeric NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackholes_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'NGC 6166', 'Has 30 billion solar masses. It is actually an elliptical galaxy with an active nucleus in the center.');
INSERT INTO public.blackhole VALUES (2, 'S50014+81', 'The most interesting one with 40 billion solar masses. Actually a blazar which is the most energetic of the quasars. It is the most luminous quasar as well. ');
INSERT INTO public.blackhole VALUES (3, 'TON 618', 'The biggest black hole and is hyperluminous, located near the North Galactic Pole in the constellation Canes Venatici.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'The closest major galaxy to the milky way galaxy', false, 'Barred Sprial Galaxy', 152000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'We live inside of the Milky way galaxy. ', true, 'Barred Spiral Galaxy', 0);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 'A pair of interacting galaxies in the constellation Corvus in which the collision of clouds of gas and dust, with entangled magnetic fields, causes rapid star formation', false, 'Interacting Galaxies', 45000000);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 'Has no central bar. The outer arms are instead leading spiral arms, meaning the tips of the spiral arms point towards the direction of disk rotation', false, 'Unbarred Spiral Galaxy', 111000000);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'Contains 100 billion stars, but no Cepheid variables which is unusual for a galaxy this close to us', false, 'Isolated Spiral Galaxy', 17000000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 'Formed when a larger spiral galaxy collided with a smaller galaxy about 400 million years ago.', false, 'Lenticular Ring Galaxy', 500000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths moon and the moon we can see at night. ', 405696, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Moon of mars and the largest and closest to Mars.', 26378, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outermost moon of Mars.', 23460, 3);
INSERT INTO public.moon VALUES (4, 'Titan', 'The largest moon of Saturn and the second largest moon in the solar system. 1.2 billion km from earth so I am listing only as 1.', 1, 7);
INSERT INTO public.moon VALUES (5, 'Enceladus', 'A small, icy moon of Saturn that is 1.4 billion km from Earth', 1, 7);
INSERT INTO public.moon VALUES (6, 'Lapetus', 'A moon of Saturn with a stark contrast in its appearance. It is 1.6 billion kms away from Earth. ', 1, 7);
INSERT INTO public.moon VALUES (7, 'Rhea', 'The second largest moon and has a heavily cratered surface. 1.6 billion km away', 1, 7);
INSERT INTO public.moon VALUES (8, 'Dione', 'Another moon of Saturn with a heavily cratered surface like Rhea. 1.6 billion km away', 1, 7);
INSERT INTO public.moon VALUES (9, 'Tethys', 'A medium-sized moon of Saturn with a relatively smooth and heavily cratered surface', 1, 7);
INSERT INTO public.moon VALUES (10, 'Titania', 'Largest moon of Uranus.', 435900, 10);
INSERT INTO public.moon VALUES (11, 'Oberon', 'The outermost of its five major moons. It has a dark heavily cratered surface and is composed of a mix of rock and ice.', 583500, 10);
INSERT INTO public.moon VALUES (12, 'Miranda', 'One of the smaller moons of Uranus known for its diverse and geologically intriguing surfaces.', 129900, 10);
INSERT INTO public.moon VALUES (13, 'Ariel', 'One of the larger moons of Uranus and has a relatively smooth surface with few impact craters. ', 191100, 10);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Characterized by a heavily cratered surface which has a dark surface with no prominent features. ', 266000, 10);
INSERT INTO public.moon VALUES (15, 'Puck', 'A small moon of Uranus that was discovered by Voyager 2.', 86000, 10);
INSERT INTO public.moon VALUES (16, 'Lo', 'The innermost and one of the four Galilean moons of Jupiter. ', 628000000, 9);
INSERT INTO public.moon VALUES (17, 'Europa', 'One of Jupiters Galilean moons and is believed to have a subsurface ocean of liquid water', 671000000, 9);
INSERT INTO public.moon VALUES (18, 'Ganymede', 'The largest moon in our solar system and is also one of Jupiters Galilean Moons. It is even larger than the planet Mercury', 964000000, 9);
INSERT INTO public.moon VALUES (19, 'Callisto', 'Third largest moon of Jupiter and is a mixture of rock and ice. 1.08 billion kms away. ', 1, 9);
INSERT INTO public.moon VALUES (20, 'Himalia', 'A significantly smaller than the Galilean moons. It has an irregular shape.', 13500000, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Full of life and our home. Not that advanced, but we are getting there. Life is uncountable. :)', true, 8, 1);
INSERT INTO public.planet VALUES (2, 'PA-99-N2', 'The only countable planet that could be the first extragalactic planet ever found.', false, 0, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 'Many people here on earth see it as the next possible candidate to live on. ', false, 0, 1);
INSERT INTO public.planet VALUES (4, 'Neptune', 'Farthest known planet in our solar system', false, 0, 1);
INSERT INTO public.planet VALUES (5, 'Pluto', 'A dwarf planet and is classified differently from the other planets. ', false, 0, 1);
INSERT INTO public.planet VALUES (6, 'Venus', 'The closest planet to earth and one of the brightest objects we see in the sky', false, 0, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'The sixth planet from the sun and is the second-largest planet in our solar system by mass and size.', false, 0, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 'The closest planet to our sun and the smallest. It has a rocky surface that is covered with craters like our moon', false, 0, 1);
INSERT INTO public.planet VALUES (9, 'Jupiter', 'The fifth planet from our sun, is the largest planet in our solar system.', false, 0, 1);
INSERT INTO public.planet VALUES (10, 'Uranus', 'The seventh planet from the sun. It has the third-largest radius of all the planets and it has 13 faint rings and 27 small moons. ', false, 0, 1);
INSERT INTO public.planet VALUES (11, 'Eris', 'A member of a group of objects that orbit in a disc-like zone beyond the orbit of Neptune called the Kupier Belt.', false, 0, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', 'A dwarf planet in teh asteroid belt that is the largest there.', false, 0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'The star in our solar system', 864938, 2);
INSERT INTO public.star VALUES (2, 'Mirach', 'One of the brightest stars in the Andromeda Galaxy', 2594814, 1);
INSERT INTO public.star VALUES (3, 'Alchiba', 'The fifth brightest star located in the constellation Corvus. With an apparent magnitude of 4.03', 1223000, 3);
INSERT INTO public.star VALUES (4, 'Regulus', 'In the constellation Leo, with a magnitude of 1.4, is the brightest star in Leo and the 21st brightest in the sky. Location is to big to display due to value limits but it is to the power of 13. ', 4.1154, 4);
INSERT INTO public.star VALUES (5, 'Pistol', 'A blue hypergiant star located in the southern hemisphere located in the southern constellation Sagittarius. The size is in km but to the power of 15. ', 4.1154, 5);
INSERT INTO public.star VALUES (6, 'Eta Sculptoris', 'The nearest naked-eye star to Cartwheel Galaxy', 55636168, 6);


--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_blackhole_id_seq', 3, true);


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
-- Name: blackhole blackholes_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackholes_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackhole_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

