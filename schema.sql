--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: quicksell; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA quicksell;


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bids; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE bids (
    id integer NOT NULL,
    listing_id integer NOT NULL,
    bidder_id integer NOT NULL,
    num_chat_messages integer NOT NULL,
    bid_date date NOT NULL,
    offer_price numeric NOT NULL
);


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    parent_id integer NOT NULL
);


--
-- Name: cities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cities (
    id integer NOT NULL,
    name character varying(32) NOT NULL
);


--
-- Name: key_genders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE key_genders (
    gender_code character varying,
    gender_name character varying
);


--
-- Name: listings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE listings (
    id integer NOT NULL,
    seller_id integer NOT NULL,
    category_id integer NOT NULL,
    listing_date date NOT NULL,
    listing_price numeric NOT NULL,
    title character varying(128) NOT NULL,
    city_id integer NOT NULL,
    status character varying(16) NOT NULL,
    selected_bid_id integer,
    selected_date date
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id integer NOT NULL,
    full_name character varying(64) NOT NULL,
    email character varying(64) NOT NULL,
    gender character varying(8) NOT NULL,
    birth_year integer NOT NULL,
    sign_up_date date NOT NULL
);


--
-- PostgreSQL database dump complete
--

