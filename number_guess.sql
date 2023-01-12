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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(22) NOT NULL,
    tries integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('TestUser', 50);
INSERT INTO public.games VALUES ('TestUser', 25);
INSERT INTO public.games VALUES ('TestUser', 200);
INSERT INTO public.games VALUES ('User2', 200);
INSERT INTO public.games VALUES ('User2', 500);
INSERT INTO public.games VALUES ('user_1673522318346', 804);
INSERT INTO public.games VALUES ('user_1673522318346', 109);
INSERT INTO public.games VALUES ('user_1673522318345', 899);
INSERT INTO public.games VALUES ('user_1673522318345', 741);
INSERT INTO public.games VALUES ('user_1673522318346', 351);
INSERT INTO public.games VALUES ('user_1673522318346', 700);
INSERT INTO public.games VALUES ('user_1673522318346', 852);
INSERT INTO public.games VALUES ('Blorg', 14);
INSERT INTO public.games VALUES ('Blorg', 11);
INSERT INTO public.games VALUES ('Blorg', 8);
INSERT INTO public.games VALUES ('user_1673522532881', 183);
INSERT INTO public.games VALUES ('user_1673522532881', 134);
INSERT INTO public.games VALUES ('user_1673522532880', 136);
INSERT INTO public.games VALUES ('user_1673522532880', 427);
INSERT INTO public.games VALUES ('user_1673522532881', 584);
INSERT INTO public.games VALUES ('user_1673522532881', 771);
INSERT INTO public.games VALUES ('user_1673522532881', 20);
INSERT INTO public.games VALUES ('user_1673522575427', 829);
INSERT INTO public.games VALUES ('user_1673522575427', 682);
INSERT INTO public.games VALUES ('user_1673522575426', 103);
INSERT INTO public.games VALUES ('user_1673522575426', 112);
INSERT INTO public.games VALUES ('user_1673522575427', 24);
INSERT INTO public.games VALUES ('user_1673522575427', 372);
INSERT INTO public.games VALUES ('user_1673522575427', 863);
INSERT INTO public.games VALUES ('user_1673522583736', 162);
INSERT INTO public.games VALUES ('user_1673522583736', 40);
INSERT INTO public.games VALUES ('user_1673522583735', 128);
INSERT INTO public.games VALUES ('user_1673522583735', 193);
INSERT INTO public.games VALUES ('user_1673522583736', 295);
INSERT INTO public.games VALUES ('user_1673522583736', 346);
INSERT INTO public.games VALUES ('user_1673522583736', 119);
INSERT INTO public.games VALUES ('user_1673522665322', 977);
INSERT INTO public.games VALUES ('user_1673522665322', 138);
INSERT INTO public.games VALUES ('user_1673522665321', 487);
INSERT INTO public.games VALUES ('user_1673522665321', 323);
INSERT INTO public.games VALUES ('user_1673522665322', 118);
INSERT INTO public.games VALUES ('user_1673522665322', 737);
INSERT INTO public.games VALUES ('user_1673522665322', 929);
INSERT INTO public.games VALUES ('user_1673522691655', 986);
INSERT INTO public.games VALUES ('user_1673522691655', 367);
INSERT INTO public.games VALUES ('user_1673522691654', 617);
INSERT INTO public.games VALUES ('user_1673522691654', 835);
INSERT INTO public.games VALUES ('user_1673522691655', 484);
INSERT INTO public.games VALUES ('user_1673522691655', 889);
INSERT INTO public.games VALUES ('user_1673522691655', 228);
INSERT INTO public.games VALUES ('user_1673522703711', 950);
INSERT INTO public.games VALUES ('user_1673522703711', 461);
INSERT INTO public.games VALUES ('user_1673522703710', 546);
INSERT INTO public.games VALUES ('user_1673522703710', 236);
INSERT INTO public.games VALUES ('user_1673522703711', 576);
INSERT INTO public.games VALUES ('user_1673522703711', 581);
INSERT INTO public.games VALUES ('user_1673522703711', 85);
INSERT INTO public.games VALUES ('user_1673522741968', 978);
INSERT INTO public.games VALUES ('user_1673522741968', 603);
INSERT INTO public.games VALUES ('user_1673522741967', 93);
INSERT INTO public.games VALUES ('user_1673522741967', 853);
INSERT INTO public.games VALUES ('user_1673522741968', 900);
INSERT INTO public.games VALUES ('user_1673522741968', 386);
INSERT INTO public.games VALUES ('user_1673522741968', 380);
INSERT INTO public.games VALUES ('user_1673522758545', 497);
INSERT INTO public.games VALUES ('user_1673522758545', 288);
INSERT INTO public.games VALUES ('user_1673522758544', 807);
INSERT INTO public.games VALUES ('user_1673522758544', 729);
INSERT INTO public.games VALUES ('user_1673522758545', 325);
INSERT INTO public.games VALUES ('user_1673522758545', 682);
INSERT INTO public.games VALUES ('user_1673522758545', 834);
INSERT INTO public.games VALUES ('user_1673522770778', 278);
INSERT INTO public.games VALUES ('user_1673522770778', 625);
INSERT INTO public.games VALUES ('user_1673522770777', 191);
INSERT INTO public.games VALUES ('user_1673522770777', 111);
INSERT INTO public.games VALUES ('user_1673522770778', 896);
INSERT INTO public.games VALUES ('user_1673522770778', 45);
INSERT INTO public.games VALUES ('user_1673522770778', 660);
INSERT INTO public.games VALUES ('user_1673522807850', 471);
INSERT INTO public.games VALUES ('user_1673522807850', 269);
INSERT INTO public.games VALUES ('user_1673522807849', 230);
INSERT INTO public.games VALUES ('user_1673522807849', 75);
INSERT INTO public.games VALUES ('user_1673522807850', 900);
INSERT INTO public.games VALUES ('user_1673522807850', 107);
INSERT INTO public.games VALUES ('user_1673522807850', 508);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('TestUser');
INSERT INTO public.users VALUES ('User2');
INSERT INTO public.users VALUES ('Hermes');
INSERT INTO public.users VALUES ('user_1673521642097');
INSERT INTO public.users VALUES ('user_1673521642096');
INSERT INTO public.users VALUES ('user_1673521658779');
INSERT INTO public.users VALUES ('user_1673521658778');
INSERT INTO public.users VALUES ('user_1673521685860');
INSERT INTO public.users VALUES ('user_1673521685859');
INSERT INTO public.users VALUES ('user_1673522318346');
INSERT INTO public.users VALUES ('user_1673522318345');
INSERT INTO public.users VALUES ('Blorg');
INSERT INTO public.users VALUES ('user_1673522532881');
INSERT INTO public.users VALUES ('user_1673522532880');
INSERT INTO public.users VALUES ('user_1673522575427');
INSERT INTO public.users VALUES ('user_1673522575426');
INSERT INTO public.users VALUES ('user_1673522583736');
INSERT INTO public.users VALUES ('user_1673522583735');
INSERT INTO public.users VALUES ('user_1673522665322');
INSERT INTO public.users VALUES ('user_1673522665321');
INSERT INTO public.users VALUES ('user_1673522691655');
INSERT INTO public.users VALUES ('user_1673522691654');
INSERT INTO public.users VALUES ('user_1673522703711');
INSERT INTO public.users VALUES ('user_1673522703710');
INSERT INTO public.users VALUES ('user_1673522741968');
INSERT INTO public.users VALUES ('user_1673522741967');
INSERT INTO public.users VALUES ('user_1673522758545');
INSERT INTO public.users VALUES ('user_1673522758544');
INSERT INTO public.users VALUES ('user_1673522770778');
INSERT INTO public.users VALUES ('user_1673522770777');
INSERT INTO public.users VALUES ('user_1673522807850');
INSERT INTO public.users VALUES ('user_1673522807849');


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: games games_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--

