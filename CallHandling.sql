--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-11-19 11:14:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2262 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 195 (class 1259 OID 26812)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id bigint NOT NULL,
    code text,
    description text,
    stateid integer,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE city OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 26810)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE city_id_seq OWNER TO postgres;

--
-- TOC entry 2263 (class 0 OID 0)
-- Dependencies: 194
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE city_id_seq OWNED BY city.id;


--
-- TOC entry 191 (class 1259 OID 26785)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE country (
    id bigint NOT NULL,
    code text,
    description text,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE country OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 26783)
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE country_id_seq OWNER TO postgres;

--
-- TOC entry 2264 (class 0 OID 0)
-- Dependencies: 190
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE country_id_seq OWNED BY country.id;


--
-- TOC entry 199 (class 1259 OID 26839)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profile (
    id bigint NOT NULL,
    firstname text,
    middlename text,
    lastname text,
    email text,
    mobile text,
    contactno text,
    username text,
    password text,
    roleid integer,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE profile OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 26837)
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_id_seq OWNER TO postgres;

--
-- TOC entry 2265 (class 0 OID 0)
-- Dependencies: 198
-- Name: profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profile_id_seq OWNED BY profile.id;


--
-- TOC entry 183 (class 1259 OID 26736)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE role (
    id bigint NOT NULL,
    code text,
    description text,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE role OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 26734)
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_id_seq OWNER TO postgres;

--
-- TOC entry 2266 (class 0 OID 0)
-- Dependencies: 182
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE role_id_seq OWNED BY role.id;


--
-- TOC entry 181 (class 1259 OID 26724)
-- Name: schema_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_version (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE schema_version OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 26774)
-- Name: severity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE severity (
    id bigint NOT NULL,
    code text,
    description text,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE severity OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 26772)
-- Name: severity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE severity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE severity_id_seq OWNER TO postgres;

--
-- TOC entry 2267 (class 0 OID 0)
-- Dependencies: 188
-- Name: severity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE severity_id_seq OWNED BY severity.id;


--
-- TOC entry 193 (class 1259 OID 26796)
-- Name: state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE state (
    id bigint NOT NULL,
    code text,
    description text,
    status integer,
    countryid integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE state OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 26794)
-- Name: state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_id_seq OWNER TO postgres;

--
-- TOC entry 2268 (class 0 OID 0)
-- Dependencies: 192
-- Name: state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE state_id_seq OWNED BY state.id;


--
-- TOC entry 204 (class 1259 OID 26943)
-- Name: status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE status_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE status_id_seq OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 26945)
-- Name: status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE status (
    id bigint DEFAULT nextval('status_id_seq'::regclass) NOT NULL,
    code text,
    description text,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE status OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 26855)
-- Name: ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ticket (
    id bigint NOT NULL,
    prodid integer,
    compid integer,
    contactno text,
    problem text,
    rating integer,
    feedbackmsg text,
    severityid integer,
    cityid integer,
    stateid integer,
    countryid integer,
    ticketstatusid integer,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone,
    description text
);


ALTER TABLE ticket OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 26758)
-- Name: ticket_comp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ticket_comp (
    id bigint NOT NULL,
    code text,
    description text,
    ticketprodid integer,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE ticket_comp OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 26756)
-- Name: ticket_comp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ticket_comp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ticket_comp_id_seq OWNER TO postgres;

--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 186
-- Name: ticket_comp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ticket_comp_id_seq OWNED BY ticket_comp.id;


--
-- TOC entry 203 (class 1259 OID 26901)
-- Name: ticket_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ticket_history (
    id bigint NOT NULL,
    ticketid integer,
    description text,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone,
    attachment character varying(256)
);


ALTER TABLE ticket_history OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 26899)
-- Name: ticket_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ticket_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ticket_history_id_seq OWNER TO postgres;

--
-- TOC entry 2270 (class 0 OID 0)
-- Dependencies: 202
-- Name: ticket_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ticket_history_id_seq OWNED BY ticket_history.id;


--
-- TOC entry 200 (class 1259 OID 26853)
-- Name: ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ticket_id_seq OWNER TO postgres;

--
-- TOC entry 2271 (class 0 OID 0)
-- Dependencies: 200
-- Name: ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ticket_id_seq OWNED BY ticket.id;


--
-- TOC entry 185 (class 1259 OID 26747)
-- Name: ticket_prod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ticket_prod (
    id bigint NOT NULL,
    code text,
    description text,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE ticket_prod OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 26745)
-- Name: ticket_prod_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ticket_prod_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ticket_prod_id_seq OWNER TO postgres;

--
-- TOC entry 2272 (class 0 OID 0)
-- Dependencies: 184
-- Name: ticket_prod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ticket_prod_id_seq OWNED BY ticket_prod.id;


--
-- TOC entry 197 (class 1259 OID 26828)
-- Name: ticket_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ticket_status (
    id bigint NOT NULL,
    code text,
    description text,
    status integer,
    createddate timestamp without time zone,
    modifieddate timestamp without time zone
);


ALTER TABLE ticket_status OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 26826)
-- Name: ticket_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ticket_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ticket_status_id_seq OWNER TO postgres;

--
-- TOC entry 2273 (class 0 OID 0)
-- Dependencies: 196
-- Name: ticket_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ticket_status_id_seq OWNED BY ticket_status.id;


--
-- TOC entry 2071 (class 2604 OID 26815)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city ALTER COLUMN id SET DEFAULT nextval('city_id_seq'::regclass);


--
-- TOC entry 2069 (class 2604 OID 26788)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country ALTER COLUMN id SET DEFAULT nextval('country_id_seq'::regclass);


--
-- TOC entry 2073 (class 2604 OID 26842)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile ALTER COLUMN id SET DEFAULT nextval('profile_id_seq'::regclass);


--
-- TOC entry 2065 (class 2604 OID 26739)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role ALTER COLUMN id SET DEFAULT nextval('role_id_seq'::regclass);


--
-- TOC entry 2068 (class 2604 OID 26777)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY severity ALTER COLUMN id SET DEFAULT nextval('severity_id_seq'::regclass);


--
-- TOC entry 2070 (class 2604 OID 26799)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY state ALTER COLUMN id SET DEFAULT nextval('state_id_seq'::regclass);


--
-- TOC entry 2074 (class 2604 OID 26858)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket ALTER COLUMN id SET DEFAULT nextval('ticket_id_seq'::regclass);


--
-- TOC entry 2067 (class 2604 OID 26761)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_comp ALTER COLUMN id SET DEFAULT nextval('ticket_comp_id_seq'::regclass);


--
-- TOC entry 2075 (class 2604 OID 26904)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_history ALTER COLUMN id SET DEFAULT nextval('ticket_history_id_seq'::regclass);


--
-- TOC entry 2066 (class 2604 OID 26750)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_prod ALTER COLUMN id SET DEFAULT nextval('ticket_prod_id_seq'::regclass);


--
-- TOC entry 2072 (class 2604 OID 26831)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_status ALTER COLUMN id SET DEFAULT nextval('ticket_status_id_seq'::regclass);


--
-- TOC entry 2244 (class 0 OID 26812)
-- Dependencies: 195
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO city VALUES (2, 'Bangaluru', 'aaaaa', 1, 1, '2016-10-25 19:20:22.671', '2016-10-25 19:20:22.671');
INSERT INTO city VALUES (1, 'Mysore', 'aaaaa', 1, 1, '2016-10-21 18:00:15.957', '2016-10-21 18:00:15.957');


--
-- TOC entry 2274 (class 0 OID 0)
-- Dependencies: 194
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('city_id_seq', 2, true);


--
-- TOC entry 2240 (class 0 OID 26785)
-- Dependencies: 191
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO country VALUES (1, 'India', 'aaaaa', 1, '2016-10-21 17:41:37.849', '2016-10-21 17:41:37.849');
INSERT INTO country VALUES (2, 'USA', 'bbbbb', 1, '2016-10-21 19:11:41.093', '2016-10-21 19:11:41.093');


--
-- TOC entry 2275 (class 0 OID 0)
-- Dependencies: 190
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('country_id_seq', 2, true);


--
-- TOC entry 2248 (class 0 OID 26839)
-- Dependencies: 199
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO profile VALUES (2, 'kanth1', 'huhucgbhhuh', 'ftbcbgjhg', 'ceddcscbcggg', 'gygyjcbnhkg', 'junngccbcgihh', 'ck1', 'dewcgnbed', 1, 1, '2016-10-21 18:42:20.011', '2016-10-21 18:42:20.011');
INSERT INTO profile VALUES (5, 'sdfghfgh', 'dfghjfghj', 'hjfghjghsdfhggfh', 'kanth@gmail.com', '+91-8147600536', '+91-8147600536', 'dfghghj', 'kanth@123W', 1, 0, '2016-10-24 20:17:00.345', '2016-10-24 20:17:00.345');
INSERT INTO profile VALUES (1, 'kanth', 'huhuhhuh', 'ftgjhg', 'ceddcsggg', 'gygyjhkg', 'junngcgihh', 'ck', '1234', 1, 0, '2016-10-21 18:22:14.646', '2016-10-21 18:22:14.646');
INSERT INTO profile VALUES (6, 'chai', 'tra', 'R', 'ramuk19931993@gmail.com', '+91-8147600530', '+91-8147600567', '222', 'www@123W', 1, 1, '2016-10-26 14:03:49.917', '2016-10-26 14:03:49.918');
INSERT INTO profile VALUES (7, 'kanth3', 'a', 'b', 'c', '1111111111', '444444444444', 'ck3', '1111', 2, 0, '2016-11-02 23:12:14.992', '2016-11-02 23:12:14.992');
INSERT INTO profile VALUES (3, 'kanth1', 'x', 'y', 'lakshmikanthck47@gmail.com', '8888888888', '9999999999', 'ck2', 'dewcgdnbed', 1, 1, '2016-10-24 20:10:31.367', '2016-10-24 20:10:31.367');
INSERT INTO profile VALUES (11, 'kadzfnth5', 'aadfva', 'bbgnbb', 'ccfgcc', '11111gfn1111111', '444444444fg44444', 'ffgck5', '1111g11111', 1, 1, '2016-11-10 18:37:16.773', '2016-11-10 18:37:16.773');
INSERT INTO profile VALUES (12, 'kadzfdfnth5', 'aadfvdfa', 'bbgfdnbb', 'ccfgdcc', '11111gfn11f11111', '44444444f4fg44444', 'ffgfck5', '1111g111f11', 1, 1, '2016-11-11 13:51:07.45', '2016-11-11 13:51:07.45');
INSERT INTO profile VALUES (13, 'kadzfdfddnth5', 'aadddddfvdfa', 'bbgfdnbb', 'ccfgdddcc', '11111ddgfn11f11111', '444dd44444f4fg44444', 'ffgfcddk5', '1111gdd111f11', 1, 1, '2016-11-11 13:54:02.079', '2016-11-11 13:54:02.079');
INSERT INTO profile VALUES (14, 'kadzfdffddnth5', 'aadddddffvdfa', 'bbgffdnbb', 'ccfgdddccf', '11111ddgfn11ff11111', '444ddf44444f4fg44444', 'ffgfcdfdk5', '1111gddf111f11', 1, 1, '2016-11-11 13:56:29.201', '2016-11-11 13:56:29.201');
INSERT INTO profile VALUES (15, 'kadzfnth5', 'aadfva', 'bbgnbb', 'ccdfgcc', '1111', '4444', 'ffgdck5', '1111g11111', 1, 1, '2016-11-11 14:03:48.747', '2016-11-11 14:03:48.747');
INSERT INTO profile VALUES (8, 'kanth4', 'aa', 'bb', 'cc', '11111111111', '4444444444444', 'ck4', '11111111', 4, 0, '2016-11-02 23:15:45.449', '2016-11-02 23:15:45.449');
INSERT INTO profile VALUES (10, 'kanth5', 'aaa', 'bbbb', 'cccc', '111111111111', '44444444444444', 'ck5', '11', 3, 1, '2016-11-10 18:20:40.28', '2016-11-10 18:20:40.28');
INSERT INTO profile VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, 'ck', NULL, 1, 1, NULL, NULL);


--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 198
-- Name: profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profile_id_seq', 15, true);


--
-- TOC entry 2232 (class 0 OID 26736)
-- Dependencies: 183
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO role VALUES (1, 'Admin', 'aaaaa', 1, '2016-10-21 18:00:58.421', '2016-10-21 18:00:58.421');
INSERT INTO role VALUES (2, 'Manager', 'bbbbb', 1, '2016-10-21 18:01:03.344', '2016-10-21 18:01:03.344');
INSERT INTO role VALUES (3, 'User', 'ccccc', 1, '2016-10-21 18:01:06.361', '2016-10-21 18:01:06.361');
INSERT INTO role VALUES (4, 'Engineer', 'dddd', 1, '2016-10-21 18:01:06.361', '2016-10-21 18:01:06.361');


--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 182
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('role_id_seq', 3, true);


--
-- TOC entry 2230 (class 0 OID 26724)
-- Dependencies: 181
-- Data for Name: schema_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO schema_version VALUES (1, '1.1', 'init1', 'SQL', 'V1_1__init1.sql', 2063338847, 'postgres', '2016-10-21 17:38:09.176488', 1262, true);


--
-- TOC entry 2238 (class 0 OID 26774)
-- Dependencies: 189
-- Data for Name: severity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO severity VALUES (1, 'low', 'aaaaa', 1, '2016-10-21 18:07:04.331', '2016-10-21 18:07:04.331');
INSERT INTO severity VALUES (2, 'high', 'bbbb', 1, '2016-10-21 18:07:04.331', '2016-10-21 18:07:04.331');


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 188
-- Name: severity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('severity_id_seq', 1, true);


--
-- TOC entry 2242 (class 0 OID 26796)
-- Dependencies: 193
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO state VALUES (1, 'Karnataka', 'aaaa', 1, 1, '2016-10-21 17:58:25.998', '2016-10-21 17:58:25.998');
INSERT INTO state VALUES (2, 'Chennai', 'bbbb', 0, 1, '2016-10-21 17:58:25.998', '2016-10-21 17:58:25.998');


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 192
-- Name: state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('state_id_seq', 1, true);


--
-- TOC entry 2254 (class 0 OID 26945)
-- Dependencies: 205
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 204
-- Name: status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('status_id_seq', 2, false);


--
-- TOC entry 2250 (class 0 OID 26855)
-- Dependencies: 201
-- Data for Name: ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ticket VALUES (3, 1, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-10-24 18:32:17.39', '2016-10-24 18:32:17.39', NULL);
INSERT INTO ticket VALUES (4, 1, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-10-24 18:36:40.337', '2016-10-24 18:36:40.337', NULL);
INSERT INTO ticket VALUES (5, 1, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-10-24 18:42:55.346', '2016-10-24 18:42:55.346', NULL);
INSERT INTO ticket VALUES (8, 1, 1, '+91-8147600536', './bnm,nm,nm,', 0, 'fghjkghj', 1, 1, 1, 1, 1, 1, '2016-10-24 18:53:23.243', '2016-10-24 18:53:23.243', NULL);
INSERT INTO ticket VALUES (9, 1, 1, '+91-8147600536', 'djkh', 0, 'djhjr', 1, 1, 1, 1, 1, 1, '2016-10-24 19:07:52.745', '2016-10-24 19:07:52.745', NULL);
INSERT INTO ticket VALUES (10, 1, 1, '+91-8147600536', 'dwsada', 0, 'aefd', 1, 1, 1, 1, 1, 1, '2016-10-25 12:46:20.39', '2016-10-25 12:46:20.39', NULL);
INSERT INTO ticket VALUES (11, 1, 1, '+91-8147600536', 'dsdfghjfgh', 0, 'dfdfdfdffd', 1, 1, 1, 1, 1, 1, '2016-10-25 18:54:36.891', '2016-10-25 18:54:36.891', NULL);
INSERT INTO ticket VALUES (1, 1, 1, '111111', 'aaaaaaa', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-10-21 18:18:09.171', '2016-10-21 18:18:09.171', 'aa');
INSERT INTO ticket VALUES (2, 1, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-10-22 14:16:21.079', '2016-10-22 14:16:21.079', 'bb');
INSERT INTO ticket VALUES (12, 2, 2, '111111', 'bbbbbbbb', 5, 'yuguy', 2, 2, 2, 2, 2, 1, '2016-11-06 00:18:28.16', '2016-11-06 00:18:28.16', 'zzzz');
INSERT INTO ticket VALUES (13, 2, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-11-10 18:13:10.224', '2016-11-10 18:13:10.224', NULL);
INSERT INTO ticket VALUES (14, 2, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-11-10 18:18:51.446', '2016-11-10 18:18:51.446', NULL);
INSERT INTO ticket VALUES (15, 2, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-11-10 18:21:16.106', '2016-11-10 18:21:16.106', NULL);
INSERT INTO ticket VALUES (16, 2, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-11-10 18:24:24.27', '2016-11-10 18:24:24.27', NULL);
INSERT INTO ticket VALUES (26, 1, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-11-16 13:29:49.497', '2016-11-16 13:29:49.497', NULL);
INSERT INTO ticket VALUES (27, 1, 1, '111111', 'bbbbbbbb', 5, 'yuguy', 1, 1, 1, 1, 1, 1, '2016-11-16 13:33:17.425', '2016-11-16 13:33:17.425', NULL);
INSERT INTO ticket VALUES (31, 1, 1, '+91-4564654645', 'vhgvj', 0, 'hbjk', 1, 2, 1, 1, 1, 2, '2016-11-16 17:42:37.16', '2016-11-16 17:42:37.16', NULL);


--
-- TOC entry 2236 (class 0 OID 26758)
-- Dependencies: 187
-- Data for Name: ticket_comp; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ticket_comp VALUES (1, 'registration', 'aaaaaa', 1, 1, '2016-10-21 18:03:55.889', '2016-10-21 18:03:55.889');
INSERT INTO ticket_comp VALUES (2, 'login', 'aaaaaa', 1, 1, '2016-10-21 19:14:23.204', '2016-10-21 19:14:23.204');
INSERT INTO ticket_comp VALUES (3, 'help', 'aaaaaa', 1, 1, '2016-11-11 16:43:14.825', '2016-11-11 16:43:14.825');


--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 186
-- Name: ticket_comp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ticket_comp_id_seq', 3, true);


--
-- TOC entry 2252 (class 0 OID 26901)
-- Dependencies: 203
-- Data for Name: ticket_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ticket_history VALUES (1, 1, 'aaaaaaaaaaaa', 1, '2016-10-22 18:38:00.372', '2016-10-22 18:38:00.373', NULL);
INSERT INTO ticket_history VALUES (2, 2, 'bbbb', 1, '2016-10-22 18:40:50.912', '2016-10-22 18:40:50.912', NULL);
INSERT INTO ticket_history VALUES (3, 1, 'bbbbbbbb', 1, '2016-10-25 12:37:46.109', '2016-10-25 12:37:46.109', 'b');
INSERT INTO ticket_history VALUES (4, 1, 'bbbbbbbb', 1, '2016-10-25 16:28:52.491', '2016-10-25 16:28:52.491', 'b');
INSERT INTO ticket_history VALUES (5, 1, 'bbbbbbbb', 1, '2016-10-25 16:29:43.137', '2016-10-25 16:29:43.137', 'c');
INSERT INTO ticket_history VALUES (6, 1, 'shdfkhsghk', 1, '2016-10-25 19:50:15.624', '2016-10-25 19:50:15.624', '');
INSERT INTO ticket_history VALUES (7, 1, 'bbbbbbbb', 1, '2016-11-06 13:14:05.771', '2016-11-06 13:14:05.771', 'D:/TicketImages/bbbbbbbb.png');
INSERT INTO ticket_history VALUES (8, 12, 'bbbb', 1, '2016-11-07 13:45:20.556', '2016-11-07 13:45:20.556', 'D:/TicketImages/bbbb.png');
INSERT INTO ticket_history VALUES (9, 12, 'b', 1, '2016-11-07 13:53:27.264', '2016-11-07 13:53:27.264', 'D:/TicketImages/b.png');
INSERT INTO ticket_history VALUES (10, 1, 'bjhbvjh', 1, '2016-11-16 17:45:52.631', '2016-11-16 17:45:52.631', NULL);
INSERT INTO ticket_history VALUES (11, 1, 'a', 1, '2016-11-16 17:46:36.182', '2016-11-16 17:46:36.182', NULL);
INSERT INTO ticket_history VALUES (12, 1, 'dsa', 1, '2016-11-16 17:50:12.096', '2016-11-16 17:50:12.096', NULL);


--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 202
-- Name: ticket_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ticket_history_id_seq', 12, true);


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 200
-- Name: ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ticket_id_seq', 31, true);


--
-- TOC entry 2234 (class 0 OID 26747)
-- Dependencies: 185
-- Data for Name: ticket_prod; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ticket_prod VALUES (1, 'DHC', 'aaaaaaaa', 1, '2016-10-21 18:02:02.862', '2016-10-21 18:02:02.862');
INSERT INTO ticket_prod VALUES (2, 'OfficeAutomation', 'bbbb', 1, '2016-11-06 00:17:28.653', '2016-11-06 00:17:28.653');


--
-- TOC entry 2284 (class 0 OID 0)
-- Dependencies: 184
-- Name: ticket_prod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ticket_prod_id_seq', 2, true);


--
-- TOC entry 2246 (class 0 OID 26828)
-- Dependencies: 197
-- Data for Name: ticket_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ticket_status VALUES (1, 'opened', 'aaaaaa', 1, '2016-10-21 18:04:49.99', '2016-10-21 18:04:49.99');
INSERT INTO ticket_status VALUES (2, 'closed', 'bbbb', 1, '2016-10-21 18:04:49.99', '2016-10-21 18:04:49.99');


--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 196
-- Name: ticket_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ticket_status_id_seq', 1, true);


--
-- TOC entry 2093 (class 2606 OID 26820)
-- Name: PK_city_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT "PK_city_id" PRIMARY KEY (id);


--
-- TOC entry 2089 (class 2606 OID 26793)
-- Name: PK_country_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country
    ADD CONSTRAINT "PK_country_id" PRIMARY KEY (id);


--
-- TOC entry 2097 (class 2606 OID 26847)
-- Name: PK_profile_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile
    ADD CONSTRAINT "PK_profile_id" PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 26744)
-- Name: PK_role_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role
    ADD CONSTRAINT "PK_role_id" PRIMARY KEY (id);


--
-- TOC entry 2087 (class 2606 OID 26782)
-- Name: PK_severity_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY severity
    ADD CONSTRAINT "PK_severity_id" PRIMARY KEY (id);


--
-- TOC entry 2091 (class 2606 OID 26804)
-- Name: PK_state_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY state
    ADD CONSTRAINT "PK_state_id" PRIMARY KEY (id);


--
-- TOC entry 2103 (class 2606 OID 26953)
-- Name: PK_status_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY status
    ADD CONSTRAINT "PK_status_id" PRIMARY KEY (id);


--
-- TOC entry 2085 (class 2606 OID 26766)
-- Name: PK_ticket_comp_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_comp
    ADD CONSTRAINT "PK_ticket_comp_id" PRIMARY KEY (id);


--
-- TOC entry 2101 (class 2606 OID 26909)
-- Name: PK_ticket_history_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT "PK_ticket_history_id" PRIMARY KEY (id);


--
-- TOC entry 2099 (class 2606 OID 26863)
-- Name: PK_ticket_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "PK_ticket_id" PRIMARY KEY (id);


--
-- TOC entry 2083 (class 2606 OID 26755)
-- Name: PK_ticket_prod_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_prod
    ADD CONSTRAINT "PK_ticket_prod_id" PRIMARY KEY (id);


--
-- TOC entry 2095 (class 2606 OID 26836)
-- Name: PK_ticket_status_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_status
    ADD CONSTRAINT "PK_ticket_status_id" PRIMARY KEY (id);


--
-- TOC entry 2078 (class 2606 OID 26732)
-- Name: schema_version_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_version
    ADD CONSTRAINT schema_version_pk PRIMARY KEY (installed_rank);


--
-- TOC entry 2079 (class 1259 OID 26733)
-- Name: schema_version_s_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schema_version_s_idx ON schema_version USING btree (success);


--
-- TOC entry 2111 (class 2606 OID 26879)
-- Name: FK_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_city_id" FOREIGN KEY (cityid) REFERENCES city(id);


--
-- TOC entry 2105 (class 2606 OID 26805)
-- Name: FK_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY state
    ADD CONSTRAINT "FK_country_id" FOREIGN KEY (countryid) REFERENCES country(id);


--
-- TOC entry 2113 (class 2606 OID 26889)
-- Name: FK_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_country_id" FOREIGN KEY (countryid) REFERENCES country(id);


--
-- TOC entry 2107 (class 2606 OID 26848)
-- Name: FK_role_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile
    ADD CONSTRAINT "FK_role_id" FOREIGN KEY (roleid) REFERENCES role(id);


--
-- TOC entry 2110 (class 2606 OID 26874)
-- Name: FK_severity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_severity_id" FOREIGN KEY (severityid) REFERENCES severity(id);


--
-- TOC entry 2106 (class 2606 OID 26821)
-- Name: FK_state_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT "FK_state_id" FOREIGN KEY (stateid) REFERENCES state(id);


--
-- TOC entry 2112 (class 2606 OID 26884)
-- Name: FK_state_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_state_id" FOREIGN KEY (stateid) REFERENCES state(id);


--
-- TOC entry 2109 (class 2606 OID 26869)
-- Name: FK_ticket_comp_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_ticket_comp_id" FOREIGN KEY (compid) REFERENCES ticket_comp(id);


--
-- TOC entry 2115 (class 2606 OID 26910)
-- Name: FK_ticket_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT "FK_ticket_id" FOREIGN KEY (ticketid) REFERENCES ticket(id);


--
-- TOC entry 2104 (class 2606 OID 26767)
-- Name: FK_ticket_prod_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket_comp
    ADD CONSTRAINT "FK_ticket_prod_id" FOREIGN KEY (ticketprodid) REFERENCES ticket_prod(id);


--
-- TOC entry 2108 (class 2606 OID 26864)
-- Name: FK_ticket_prod_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_ticket_prod_id" FOREIGN KEY (prodid) REFERENCES ticket_prod(id);


--
-- TOC entry 2114 (class 2606 OID 26894)
-- Name: FK_ticket_status_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ticket
    ADD CONSTRAINT "FK_ticket_status_id" FOREIGN KEY (ticketstatusid) REFERENCES ticket_status(id);


--
-- TOC entry 2261 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-11-19 11:14:11

--
-- PostgreSQL database dump complete
--

