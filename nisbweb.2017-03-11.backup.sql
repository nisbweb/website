--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin7tcldss;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin7tcldss;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin7tcldss;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin7tcldss;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin7tcldss;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin7tcldss;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin7tcldss;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin7tcldss;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin7tcldss;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin7tcldss;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin7tcldss;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin7tcldss;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin7tcldss;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin7tcldss;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin7tcldss;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin7tcldss;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin7tcldss;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin7tcldss;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin7tcldss;

--
-- Name: parent_bulletin; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE parent_bulletin (
    id integer NOT NULL,
    "theLine" text NOT NULL,
    "theLink" character varying(200) NOT NULL,
    "subjectsTo" integer NOT NULL,
    CONSTRAINT "parent_bulletin_subjectsTo_check" CHECK (("subjectsTo" >= 0))
);


ALTER TABLE public.parent_bulletin OWNER TO admin7tcldss;

--
-- Name: parent_bulletin_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE parent_bulletin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parent_bulletin_id_seq OWNER TO admin7tcldss;

--
-- Name: parent_bulletin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE parent_bulletin_id_seq OWNED BY parent_bulletin.id;


--
-- Name: parent_execom; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE parent_execom (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    email character varying(100),
    photo character varying(200) NOT NULL,
    mtype integer NOT NULL,
    post character varying(30) NOT NULL,
    phone character varying(10),
    CONSTRAINT parent_execom_mtype_check CHECK ((mtype >= 0))
);


ALTER TABLE public.parent_execom OWNER TO admin7tcldss;

--
-- Name: parent_execom_id_seq; Type: SEQUENCE; Schema: public; Owner: admin7tcldss
--

CREATE SEQUENCE parent_execom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parent_execom_id_seq OWNER TO admin7tcldss;

--
-- Name: parent_execom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin7tcldss
--

ALTER SEQUENCE parent_execom_id_seq OWNED BY parent_execom.id;


--
-- Name: parent_user; Type: TABLE; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE TABLE parent_user (
    ieee_num integer NOT NULL,
    name character varying(40) NOT NULL,
    "isCS" boolean NOT NULL,
    "emailAddress" character varying(50) NOT NULL,
    phno character varying(10) NOT NULL,
    sem character varying(1) NOT NULL,
    branch character varying(5) NOT NULL,
    CONSTRAINT parent_user_ieee_num_check CHECK ((ieee_num >= 0))
);


ALTER TABLE public.parent_user OWNER TO admin7tcldss;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY parent_bulletin ALTER COLUMN id SET DEFAULT nextval('parent_bulletin_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY parent_execom ALTER COLUMN id SET DEFAULT nextval('parent_execom_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add bulletin	7	add_bulletin
20	Can change bulletin	7	change_bulletin
21	Can delete bulletin	7	delete_bulletin
25	Can add user	9	add_user
26	Can change user	9	change_user
27	Can delete user	9	delete_user
28	Can add execom	10	add_execom
29	Can change execom	10	change_execom
30	Can delete execom	10	delete_execom
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
6	pbkdf2_sha256$24000$63kDjyyPNlPd$lNRQqogOiiwN4adsu/DegM35kWlsrPKO6vysE7fsdmE=	2017-01-05 06:59:28.929945+00	f	mridulganga	Mridul	Ganga	mridul.kepler@gmail.com	t	t	2016-11-26 10:55:10+00
5	pbkdf2_sha256$24000$QPQzOBbpflhH$50SZ1NKjY3TAwXKFxquSeEIg6Y0hRwZVbrYtKlZ6YeE=	2017-02-24 05:53:56.174112+00	f	abhinavkumar	Abhinav	Kumar		t	t	2016-11-25 15:24:36+00
1	pbkdf2_sha256$24000$COqv85OO1eTQ$jrvcBEGyQn/ss2HOlFsvkJM7UNsIguUoYVKwpTKWKwo=	2017-03-10 10:20:23.927517+00	t	namithubot			namithubot@computer.org	t	t	2016-08-09 13:56:20.7301+00
3	pbkdf2_sha256$24000$tjqPbnpI5hdf$NEGmmbL1UbxUyOFPwXFuz3zPF4Tu2DHOReh5pswKrdo=	\N	f	sanad	Mohd Sanad Zaki	Rizvi	sanad@computer.org	t	t	2016-08-15 04:51:53+00
2	pbkdf2_sha256$24000$XzBSkydnXn5U$ewM0vAcviJ3lecUA5MjI2ha6FfLDTzYotkIXWJ1R3/M=	2016-08-26 17:59:00.850382+00	f	sahana				t	t	2016-08-15 04:49:03+00
4	pbkdf2_sha256$24000$BLT6OTq1Y9RD$r2aZya0x50kpr4FYWV+UQ17GNbRpL3hVRgixF6GW+Iw=	2016-10-21 02:42:46.428085+00	f	abhinav	Abhinav	Gyan	abhinavgyan003@gmail.com	t	t	2016-08-31 04:16:48+00
9	pbkdf2_sha256$24000$EkGk5Vznrkr0$PYHt5sufqA5gmCNA3wgxrKF+dtQvtOpSul05K8ec51I=	\N	f	arpana				t	t	2016-12-19 16:30:19+00
7	pbkdf2_sha256$24000$L7Z0G9jk0cbp$E40ot7ZopiNR/njC1KOAA+5uuoN/8nhARZoba6MzPec=	\N	f	rajasimha				t	t	2016-12-19 16:27:54+00
11	pbkdf2_sha256$24000$9pxCIAQ8S5yH$sge1FLvrtqPYweOcAmLpHo4teDXuPydoQULhmHlEOrs=	\N	f	smriti				t	t	2016-12-19 16:32:09+00
8	pbkdf2_sha256$24000$eW0SeizUZl1w$FUL02qd/bRTEZuGO50i31Rmrqsc8BbwwiKJMLWGF5qY=	2016-12-19 16:36:26.974783+00	f	tejas				t	t	2016-12-19 16:28:41+00
10	pbkdf2_sha256$24000$dSKWFwnram5M$7IUU5twv/TRLTejxIPF4f6fdiZEj40BJyrAQVZB9o5s=	\N	f	varsha				t	t	2016-12-19 16:31:14+00
12	pbkdf2_sha256$24000$CGJIea7OsJT7$jEDh1Fbo7gwJIaqbMTUPyJJjdYRTL5rdxH8s9iqkv6k=	2016-12-19 18:21:02.339939+00	f	shubham				t	t	2016-12-19 16:32:48+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('auth_user_id_seq', 12, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
2	2	19
3	2	20
6	3	1
7	3	2
8	3	3
9	3	4
10	3	5
11	3	6
12	3	7
13	3	8
14	3	9
15	3	10
16	3	11
17	3	12
18	3	13
19	3	14
20	3	15
21	3	16
22	3	17
23	3	18
24	3	19
25	3	20
26	3	21
30	3	25
31	3	26
32	3	27
33	4	7
34	4	9
35	4	10
36	4	19
37	4	20
38	4	21
42	4	25
43	4	26
44	4	27
45	4	16
46	4	11
47	5	1
48	5	2
49	5	3
50	5	4
51	5	5
52	5	6
53	5	7
54	5	8
55	5	9
56	5	10
57	5	11
58	5	12
59	5	13
60	5	14
61	5	15
62	5	16
63	5	17
64	5	18
65	5	19
66	5	20
67	5	21
71	5	25
72	5	26
73	5	27
74	6	1
75	6	2
76	6	3
77	6	4
78	6	5
79	6	6
80	6	7
81	6	8
82	6	9
83	6	10
84	6	11
85	6	12
86	6	13
87	6	14
88	6	15
89	6	16
90	6	17
91	6	18
92	6	19
93	6	20
94	6	21
98	6	25
99	6	26
100	6	27
101	5	28
102	5	29
103	5	30
104	6	28
105	6	29
106	6	30
115	7	19
116	7	20
117	7	21
121	7	25
122	7	26
123	7	27
124	7	28
125	7	29
126	7	30
130	8	19
131	8	20
132	8	21
136	8	25
137	8	26
138	8	27
139	8	28
140	8	29
141	8	30
145	10	19
146	10	20
147	10	21
151	10	25
152	10	26
153	10	27
154	10	28
155	10	29
156	10	30
160	11	19
161	11	20
162	11	21
166	11	25
167	11	26
168	11	27
169	11	28
170	11	29
171	11	30
175	12	19
176	12	20
177	12	21
181	12	25
182	12	26
183	12	27
184	12	28
185	12	29
186	12	30
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 187, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-08-09 13:59:28.515892+00	1	aadasf	1	Added.	7	1
3	2016-08-09 14:15:31.735897+00	1	aadasf	3		7	1
4	2016-08-09 14:16:00.162218+00	2	a line	1	Added.	7	1
5	2016-08-09 20:04:51.674894+00	2	a line	3		7	1
7	2016-08-15 04:49:03.671866+00	2	sahana	1	Added.	4	1
8	2016-08-15 04:50:51.114669+00	2	sahana	2	Changed is_staff and user_permissions.	4	1
9	2016-08-15 04:51:53.724403+00	3	sanad	1	Added.	4	1
10	2016-08-15 04:53:15.745826+00	3	sanad	2	Changed first_name, last_name, email and user_permissions.	4	1
11	2016-08-15 04:53:40.295325+00	3	sanad	2	Changed is_staff.	4	1
12	2016-08-24 12:36:13.854795+00	3	IEEE WIE International Summit at Pune on 23-24 September	1	Added.	7	1
13	2016-08-24 18:01:02.303227+00	4	IEEE 84th vehicular technology conference(VTC-Fall) on 18-21 september 2016 in canada.	1	Added.	7	2
14	2016-08-25 15:12:29.183897+00	5	Humanitarian Technology Conference from 21 to 23 December 2016 at Agra India	1	Added.	7	2
15	2016-08-26 18:02:21.807699+00	6	Meet Steve Wozniak, co-founder of Apple, and Grady Booch, Chief Scientist of Software Engineering at IBM, at TechIgnite in San Fransisco CA from 21-23 march	1	Added.	7	2
16	2016-08-26 18:03:57.841972+00	6	Meet Steve Wozniak, co-founder of Apple, and Grady Booch, Chief Scientist of Software Engineering at IBM, at TechIgnite in San Fransisco CA from 21-22 march 2017	2	Changed theLine.	7	2
17	2016-08-31 04:16:48.723628+00	4	abhinav	1	Added.	4	1
18	2016-08-31 22:36:53.887255+00	4	abhinav	2	Changed first_name, last_name, email, is_staff and user_permissions.	4	1
27	2016-09-20 04:49:03.579533+00	4	abhinav	2	Changed user_permissions.	4	1
28	2016-09-21 20:16:59.380776+00	4	abhinav	2	Changed user_permissions.	4	1
30	2016-11-25 15:24:36.926681+00	5	abhinavkumar	1	Added.	4	1
31	2016-11-25 15:25:23.891184+00	5	abhinavkumar	2	Changed first_name, last_name, is_staff and user_permissions.	4	1
54	2016-11-26 10:55:10.420043+00	6	mridulganga	1	Added.	4	5
55	2016-11-26 10:56:04.569597+00	6	mridulganga	2	Changed first_name, last_name, email and user_permissions.	4	5
56	2016-11-26 10:58:24.591323+00	6	mridulganga	2	Changed is_staff.	4	5
80	2016-11-27 17:05:24.467043+00	7	NISB Odd semester fest Adroit about to begin.	1	Added.	7	1
81	2016-11-27 17:06:15.812905+00	8	NISB Conducting an Industrial Visit to CISCO	1	Added.	7	1
82	2016-11-27 17:06:35.2326+00	8	NISB Conducting an Industrial Visit to CISCO	2	Changed theLink.	7	1
83	2016-11-27 17:09:26.877987+00	9	IEEE Step 2016, Bangalore Section aka IEEE Spark 2016	1	Added.	7	1
84	2016-11-27 17:13:18.297996+00	10	IEEE Smarttech workshop in Bangalore on 18th and 19th November	1	Added.	7	1
2	2016-08-09 14:14:21.657465+00	sh123	sh123	1	Added.	\N	1
93	2016-11-28 18:55:14.914531+00	5	abhinavkumar	2	Changed user_permissions.	4	1
94	2016-11-28 18:59:44.962009+00	1	execom object	1	Added.	10	5
95	2016-11-28 19:03:24.796385+00	2	execom object	1	Added.	10	5
96	2016-11-28 19:04:23.572316+00	1	execom object	2	No fields changed.	10	5
97	2016-11-28 19:04:35.293279+00	2	execom object	2	No fields changed.	10	5
98	2016-11-28 19:17:56.890624+00	2	execom object	2	Changed photo.	10	5
99	2016-11-28 19:20:30.510127+00	2	execom object	2	Changed photo.	10	5
100	2016-11-28 19:21:46.380746+00	3	execom object	1	Added.	10	5
101	2016-11-28 19:22:18.842169+00	3	execom object	2	Changed photo.	10	5
102	2016-11-28 19:39:28.437305+00	4	execom object	1	Added.	10	5
103	2016-11-28 19:43:48.560689+00	5	execom object	1	Added.	10	5
104	2016-11-28 19:44:38.206419+00	5	execom object	2	Changed post.	10	5
105	2016-11-28 19:45:04.192751+00	5	execom object	2	Changed post.	10	5
106	2016-11-28 19:46:44.742615+00	6	execom object	1	Added.	10	5
107	2016-11-28 19:49:07.454062+00	7	execom object	1	Added.	10	5
108	2016-11-28 19:50:49.76091+00	7	execom object	2	Changed photo.	10	5
109	2016-11-28 19:51:28.099154+00	7	execom object	2	Changed photo.	10	5
110	2016-11-28 19:56:26.654235+00	8	execom object	1	Added.	10	5
111	2016-11-28 19:58:51.82278+00	5	execom object	2	Changed photo.	10	5
113	2016-11-30 04:35:13.352841+00	6	mridulganga	2	Changed user_permissions.	4	6
114	2016-11-30 04:38:12.287745+00	9	execom object	1	Added.	10	6
115	2016-12-01 06:16:16.772238+00	11	All India Computer Society Congress to be held in Hyderabad	1	Added.	7	1
123	2016-12-01 16:23:33.052014+00	5	abhinavkumar	2	Changed user_permissions.	4	1
130	2016-12-02 06:33:25.173503+00	10	execom object	1	Added.	10	5
131	2016-12-02 06:41:24.30116+00	11	execom object	1	Added.	10	5
132	2016-12-02 06:57:39.610108+00	12	execom object	1	Added.	10	5
133	2016-12-02 06:58:19.461445+00	10	execom object	2	Changed photo.	10	5
134	2016-12-02 06:59:10.787051+00	11	execom object	2	Changed post.	10	5
135	2016-12-02 07:03:16.331477+00	12	execom object	2	Changed photo.	10	5
136	2016-12-02 07:20:11.058203+00	12	execom object	2	Changed photo.	10	6
137	2016-12-02 07:23:13.769162+00	6	mridulganga	2	Changed user_permissions.	4	6
146	2016-12-05 05:43:10.503712+00	3	Mr. M J Yogesh	2	Changed name and post.	10	1
147	2016-12-19 16:27:54.466527+00	7	rajasimha	1	Added.	4	1
148	2016-12-19 16:28:23.460411+00	7	rajasimha	2	Changed user_permissions.	4	1
149	2016-12-19 16:28:41.675929+00	8	tejas	1	Added.	4	1
150	2016-12-19 16:29:02.17424+00	8	tejas	2	Changed user_permissions.	4	1
151	2016-12-19 16:30:19.68993+00	9	arpana	1	Added.	4	1
152	2016-12-19 16:30:34.336968+00	9	arpana	2	No fields changed.	4	1
153	2016-12-19 16:31:14.586131+00	10	varsha	1	Added.	4	1
154	2016-12-19 16:31:29.857228+00	10	varsha	2	Changed user_permissions.	4	1
155	2016-12-19 16:32:09.503499+00	11	smriti	1	Added.	4	1
156	2016-12-19 16:32:26.62948+00	11	smriti	2	Changed user_permissions.	4	1
157	2016-12-19 16:32:48.711524+00	12	shubham	1	Added.	4	1
158	2016-12-19 16:33:11.792194+00	12	shubham	2	Changed user_permissions.	4	1
159	2016-12-19 16:35:16.620038+00	8	tejas	2	Changed is_staff.	4	1
160	2016-12-19 16:35:31.500378+00	9	arpana	2	Changed is_staff.	4	1
161	2016-12-19 16:35:53.550357+00	7	rajasimha	2	Changed is_staff.	4	1
162	2016-12-19 16:36:07.007081+00	12	shubham	2	Changed is_staff.	4	1
163	2016-12-19 16:36:18.96217+00	11	smriti	2	Changed is_staff.	4	1
164	2016-12-19 16:36:29.141062+00	10	varsha	2	Changed is_staff.	4	1
165	2016-12-26 12:43:03.440442+00	12	IEEE Bangalore AGM 2017 on 8th Jan at J N Tata Auditorium, IISc, Bangalore	1	Added.	7	1
166	2016-12-29 02:20:01.264989+00	13	Varsha Rao	1	Added.	10	1
167	2016-12-29 02:23:50.558605+00	14	Anarghya Nagesh	1	Added.	10	1
168	2016-12-29 02:26:19.670129+00	15	Trapthi R Shetty	1	Added.	10	1
169	2016-12-29 02:29:27.175763+00	16	Milan Menezes	1	Added.	10	1
170	2016-12-29 02:31:20.964388+00	17	Raksha M	1	Added.	10	1
171	2016-12-29 02:33:19.639189+00	18	Limita V Shetty	1	Added.	10	1
172	2016-12-29 02:37:20.941959+00	19	Raj Abhishek	1	Added.	10	1
173	2016-12-29 02:39:01.261861+00	20	Surabhi Shetty	1	Added.	10	1
174	2016-12-29 02:41:06.898276+00	20	Surabhi Shetty	2	No fields changed.	10	1
175	2016-12-29 02:44:52.782149+00	20	Surabhi Shetty	3		10	1
178	2017-02-25 17:59:25.378528+00	21	Sudhanshu Sharma	1	Added.	10	5
117	2016-12-01 11:43:48.462253+00	1	galleryImages object	1	Added.	\N	1
118	2016-12-01 11:45:33.3522+00	1	galleryImages object	2	Changed pic_id.	\N	1
119	2016-12-01 11:55:20.124831+00	1	galleryImages object	2	Changed pic_id.	\N	1
120	2016-12-01 12:51:53.199224+00	1	galleryImages object	2	Changed pic_id.	\N	1
121	2016-12-01 15:57:46.570403+00	2	galleryImages object	1	Added.	\N	1
122	2016-12-01 15:59:50.805907+00	2	galleryImages object	2	Changed pic_id.	\N	1
124	2016-12-01 18:15:29.85512+00	3	galleryImages object	1	Added.	\N	5
125	2016-12-01 18:18:46.006932+00	3	galleryImages object	2	Changed pic_id.	\N	5
179	2017-03-02 03:51:25.611167+00	21	Sudhanshu Sharma	2	Changed post.	10	5
6	2016-08-09 20:05:26.643647+00	sh123	sh123	3		\N	1
19	2016-09-01 09:35:20.236767+00	py01	py01	1	Added.	\N	1
20	2016-09-01 09:37:05.058986+00	py01	py01	3		\N	1
21	2016-09-01 09:51:22.908479+00	py01	py01	1	Added.	\N	1
22	2016-09-05 18:08:35.51287+00	pb01	pb01	1	Added.	\N	1
23	2016-09-06 17:17:45.503037+00	pb01	pb01	2	Changed eventName and info.	\N	1
24	2016-09-18 08:33:37.911294+00	pb01	pb01	2	Changed deadLine, venue, eventDate and info.	\N	4
25	2016-09-18 08:37:16.464302+00	pb01	pb01	2	Changed requirements.	\N	4
26	2016-09-18 14:13:53.689455+00	bps01	bps01	1	Added.	\N	4
29	2016-09-22 04:16:03.472257+00	bps01	bps01	2	Changed eventDate.	\N	4
32	2016-11-25 18:22:51.962239+00	adbb01	adbb01	1	Added.	\N	5
33	2016-11-25 18:27:17.513795+00	adbb01	adbb01	2	Changed eventName.	\N	5
34	2016-11-26 04:28:50.760824+00	adbb01	adbb01	3		\N	5
35	2016-11-26 04:37:46.14666+00	ad01	ad01	1	Added.	\N	5
36	2016-11-26 04:37:57.456814+00	ad01	ad01	2	No fields changed.	\N	5
37	2016-11-26 06:17:41.927775+00	ad01	ad01	2	No fields changed.	\N	5
38	2016-11-26 06:20:55.986472+00	ad02	ad02	1	Added.	\N	5
39	2016-11-26 06:21:28.173677+00	ad02	ad02	2	No fields changed.	\N	5
40	2016-11-26 07:08:51.996504+00	ad03	ad03	1	Added.	\N	5
41	2016-11-26 07:09:10.268671+00	ad03	ad03	2	No fields changed.	\N	5
42	2016-11-26 07:14:52.616731+00	ad04	ad04	1	Added.	\N	5
43	2016-11-26 07:17:00.547173+00	ad05	ad05	1	Added.	\N	5
44	2016-11-26 07:19:21.840262+00	ad06	ad06	1	Added.	\N	5
45	2016-11-26 07:21:24.022432+00	ad07	ad07	1	Added.	\N	5
46	2016-11-26 07:22:47.889387+00	ad01	ad01	2	Changed eventName.	\N	5
47	2016-11-26 07:22:54.885581+00	ad02	ad02	2	Changed eventName.	\N	5
48	2016-11-26 07:23:03.537767+00	ad03	ad03	2	Changed eventName.	\N	5
49	2016-11-26 07:23:11.25425+00	ad04	ad04	2	Changed eventName.	\N	5
50	2016-11-26 07:23:18.623667+00	ad05	ad05	2	Changed eventName.	\N	5
51	2016-11-26 07:23:28.105684+00	ad06	ad06	2	Changed eventName.	\N	5
52	2016-11-26 07:23:36.763839+00	ad07	ad07	2	Changed eventName.	\N	5
53	2016-11-26 07:23:43.6188+00	ad05	ad05	2	No fields changed.	\N	5
57	2016-11-26 10:58:56.630876+00	py01	py01	2	Changed requirements.	\N	6
58	2016-11-26 11:08:57.647946+00	ad07	ad07	2	Changed eventName.	\N	1
59	2016-11-26 11:09:12.322949+00	ad06	ad06	2	Changed eventName.	\N	1
60	2016-11-26 11:09:17.469825+00	ad07	ad07	2	No fields changed.	\N	6
61	2016-11-26 11:09:25.85573+00	ad05	ad05	2	Changed eventName.	\N	1
62	2016-11-26 11:09:40.757611+00	ad05	ad05	2	No fields changed.	\N	1
63	2016-11-26 11:09:54.758015+00	ad04	ad04	2	Changed eventName.	\N	1
64	2016-11-26 11:10:11.881026+00	ad02	ad02	2	Changed eventName.	\N	1
65	2016-11-26 11:10:23.592591+00	ad01	ad01	2	Changed eventName.	\N	1
66	2016-11-26 12:14:54.61395+00	ad02	ad02	2	Changed ratingLink and fbLink.	\N	5
67	2016-11-26 12:15:53.977345+00	ad01	ad01	2	Changed ratingLink and fbLink.	\N	5
68	2016-11-26 12:32:30.021727+00	ad06	ad06	2	Changed ratingLink and fbLink.	\N	1
69	2016-11-26 12:52:31.302758+00	ad03	ad03	2	Changed ratingLink and fbLink.	\N	5
70	2016-11-26 12:53:10.496915+00	ad04	ad04	2	Changed ratingLink and fbLink.	\N	5
71	2016-11-26 12:53:30.568086+00	ad05	ad05	2	Changed ratingLink and fbLink.	\N	5
72	2016-11-26 12:54:10.490531+00	ad07	ad07	2	Changed ratingLink and fbLink.	\N	5
73	2016-11-26 12:56:16.491914+00	ad02	ad02	2	No fields changed.	\N	5
74	2016-11-26 13:01:31.235333+00	ad03	ad03	2	Changed eventName.	\N	5
75	2016-11-26 13:02:48.319564+00	ad01	ad01	2	No fields changed.	\N	5
76	2016-11-27 16:02:17.777002+00	ad05	ad05	2	Changed ag.	\N	1
77	2016-11-27 16:02:31.182547+00	ad04	ad04	2	Changed ag.	\N	1
78	2016-11-27 16:58:41.194233+00	ad05	ad05	2	Changed info.	\N	1
79	2016-11-27 17:01:17.406517+00	bps01	bps01	2	Changed ratingLink and info.	\N	1
85	2016-11-28 10:57:56.23847+00	cs03	cs03	1	Added.	\N	1
86	2016-11-28 18:17:47.745424+00	ad01	ad01	2	Changed ratingLink.	\N	5
87	2016-11-28 18:18:27.414835+00	ad02	ad02	2	Changed ratingLink.	\N	5
88	2016-11-28 18:19:06.14558+00	ad03	ad03	2	Changed ratingLink.	\N	5
89	2016-11-28 18:19:32.895176+00	ad04	ad04	2	Changed ratingLink.	\N	5
90	2016-11-28 18:19:47.248669+00	ad05	ad05	2	Changed ratingLink.	\N	5
91	2016-11-28 18:20:09.531837+00	ad06	ad06	2	Changed ratingLink.	\N	5
92	2016-11-28 18:20:26.432586+00	ad07	ad07	2	Changed ratingLink.	\N	5
112	2016-11-29 10:22:47.319129+00	cs03	cs03	2	Changed ratingLink and venue.	\N	1
116	2016-12-01 07:54:42.922711+00	ad05	ad05	3		\N	1
176	2017-01-30 17:58:56.928917+00	ws01	ws01	1	Added.	\N	5
177	2017-02-24 06:12:45.758949+00	tk01	tk01	1	Added.	\N	5
180	2017-03-02 04:15:09.413228+00	cs04	cs04	1	Added.	\N	5
126	2016-12-01 18:19:40.61706+00	4	galleryImages object	1	Added.	\N	5
127	2016-12-01 18:20:04.657164+00	5	galleryImages object	1	Added.	\N	5
128	2016-12-01 18:20:25.137767+00	6	galleryImages object	1	Added.	\N	5
129	2016-12-01 18:20:39.507648+00	7	galleryImages object	1	Added.	\N	5
138	2016-12-02 07:27:12.087672+00	8	galleryImages object	1	Added.	\N	6
139	2016-12-02 07:32:24.895516+00	9	galleryImages object	1	Added.	\N	6
140	2016-12-02 07:34:04.328746+00	10	galleryImages object	1	Added.	\N	6
141	2016-12-02 07:35:20.588649+00	11	galleryImages object	1	Added.	\N	6
142	2016-12-02 07:36:10.150081+00	12	galleryImages object	1	Added.	\N	6
143	2016-12-02 07:37:58.49006+00	13	galleryImages object	1	Added.	\N	6
144	2016-12-02 07:39:50.629614+00	14	galleryImages object	1	Added.	\N	6
145	2016-12-02 07:41:36.537069+00	15	galleryImages object	1	Added.	\N	6
181	2017-03-10 09:58:25.542177+00	94210822	MANALI A PALLEGAR	3		9	1
182	2017-03-10 09:58:25.552564+00	94090301	NAMITA S ULLEGADI	3		9	1
183	2017-03-10 09:58:25.555038+00	94090299	PRATYUSH MISHRA	3		9	1
184	2017-03-10 09:58:25.556972+00	94084602	SANKALPA S	3		9	1
185	2017-03-10 09:58:25.559089+00	94084486	MEDHA	3		9	1
186	2017-03-10 09:58:25.560893+00	94082862	NISHANT KUMAR	3		9	1
187	2017-03-10 09:58:25.562728+00	94082840	VISHWAMBHARA SHETTY	3		9	1
188	2017-03-10 09:58:25.564503+00	94082828	NIHAL SRIVASTAVA	3		9	1
189	2017-03-10 09:58:25.566153+00	94082826	AYUSH GUPTA	3		9	1
190	2017-03-10 09:58:25.567901+00	94082811	AKASH KUMAR	3		9	1
191	2017-03-10 09:58:25.570518+00	94082809	NISHANT	3		9	1
192	2017-03-10 09:58:25.572214+00	94082801	POOJA S	3		9	1
193	2017-03-10 09:58:25.573837+00	94082800	MRIDUL GANGA	3		9	1
194	2017-03-10 09:58:25.575799+00	94082799	ALIP MAJUMDAR	3		9	1
195	2017-03-10 09:58:25.57803+00	94082797	POORNIMA P M	3		9	1
196	2017-03-10 09:58:25.580246+00	94082792	SANGEETHA P	3		9	1
197	2017-03-10 09:58:25.582241+00	94082756	ABHINAV KUMAR	3		9	1
198	2017-03-10 09:58:25.584063+00	94082751	AKSHAY VISHWANATH	3		9	1
199	2017-03-10 09:58:25.585824+00	94082733	CHAITRA RADRASWAMI	3		9	1
200	2017-03-10 09:58:25.588419+00	94082726	ADITYA K PRAMOD	3		9	1
201	2017-03-10 09:58:25.590491+00	94082722	APOORV SACHAN	3		9	1
202	2017-03-10 09:58:25.592533+00	94082721	ATUL KUMAR SHUKLA	3		9	1
203	2017-03-10 09:58:25.594697+00	94082715	AKASH V DESHPANDE	3		9	1
204	2017-03-10 09:58:25.596769+00	94082711	MOHIT UDUPA	3		9	1
205	2017-03-10 09:58:25.59866+00	94082704	N GOUTHAMI	3		9	1
206	2017-03-10 09:58:25.603018+00	94082702	SHIVAPRASAD NJ	3		9	1
207	2017-03-10 09:58:25.607649+00	94082698	PRAJWAL T	3		9	1
208	2017-03-10 09:58:25.61104+00	94082687	AKANSHA AGRAWAL	3		9	1
209	2017-03-10 09:58:25.613244+00	94082686	ASHUTOSH PRIYADARSHI	3		9	1
210	2017-03-10 09:58:25.61541+00	94082682	SUSHANT AGARWAL	3		9	1
211	2017-03-10 09:58:25.61752+00	94082669	KUSHAL S	3		9	1
212	2017-03-10 09:58:25.619589+00	94082643	POOJA SR	3		9	1
213	2017-03-10 09:58:25.621427+00	94082580	MEGHANA S	3		9	1
214	2017-03-10 09:58:25.623302+00	94082367	RAMNATH RAO BEKAL	3		9	1
215	2017-03-10 09:58:25.625773+00	94082355	VINAY BALIGA B	3		9	1
216	2017-03-10 09:58:25.627756+00	94082352	PRATHVI RAO	3		9	1
217	2017-03-10 09:58:25.629519+00	94082335	S VAISHNAVI	3		9	1
218	2017-03-10 09:58:25.631192+00	94082332	KRISHNA M V	3		9	1
219	2017-03-10 09:58:25.633029+00	94082300	MOHAMMED SHAMAIL FARHAN	3		9	1
220	2017-03-10 09:58:25.63467+00	94021101	KAVYA N KUMAR	3		9	1
221	2017-03-10 09:58:25.637977+00	94020733	POOJITH U RAO	3		9	1
222	2017-03-10 09:58:25.639724+00	94020601	BINDU H S	3		9	1
223	2017-03-10 09:58:25.641476+00	94020600	SUDARSHAN R KULKARNI	3		9	1
224	2017-03-10 09:58:25.643251+00	94020598	SURAJ VASHISTA B K	3		9	1
225	2017-03-10 09:58:25.645123+00	94020587	BINDU R N 	3		9	1
226	2017-03-10 09:58:25.646774+00	94020580	V VRUSHANK	3		9	1
227	2017-03-10 09:58:25.648441+00	94020579	PRATYUSH SUMAN	3		9	1
228	2017-03-10 09:58:25.650186+00	94020558	NARENDRA S KAPASHI	3		9	1
229	2017-03-10 09:58:25.651944+00	94020556	SIDDHANT ARORA	3		9	1
230	2017-03-10 09:58:25.653671+00	94020553	BHARGAVI R KAMAT	3		9	1
231	2017-03-10 09:58:25.655421+00	94020520	VINAY S KULKARNI	3		9	1
232	2017-03-10 09:58:25.657125+00	94020508	NIDHI KULKARNI 	3		9	1
233	2017-03-10 09:58:25.65885+00	94020483	KIRAN U KAMATH	3		9	1
234	2017-03-10 09:58:25.660532+00	94020454	DEVANG J	3		9	1
235	2017-03-10 09:58:25.66225+00	94020453	SHARATH C M	3		9	1
236	2017-03-10 09:58:25.663973+00	94020432	VARSHINI NARESH	3		9	1
237	2017-03-10 09:58:25.665646+00	94020297	CHANDANA J U	3		9	1
238	2017-03-10 09:58:25.667332+00	94020265	RACHANA RAMESH	3		9	1
239	2017-03-10 09:58:25.669033+00	94020247	LIKITHA D T	3		9	1
240	2017-03-10 09:58:25.670867+00	94020237	SHASHANK SHAURYA	3		9	1
241	2017-03-10 09:58:25.672545+00	94020231	PRIYADARSHINI N 	3		9	1
242	2017-03-10 09:58:25.674178+00	94020217	SAMHITA GURJAR	3		9	1
243	2017-03-10 09:58:25.67587+00	94020215	RACHANA G	3		9	1
244	2017-03-10 09:58:25.677474+00	94020212	ANJANA G	3		9	1
245	2017-03-10 09:58:25.67914+00	94020207	ANIRUDHA BEEDIKAR	3		9	1
246	2017-03-10 09:58:25.680865+00	94020194	SRIRAM V	3		9	1
247	2017-03-10 09:58:25.682545+00	94020154	NAVEENRAJ M 	3		9	1
248	2017-03-10 09:58:25.684844+00	94020077	GREESHMA BALLAL	3		9	1
249	2017-03-10 09:58:25.686527+00	94020064	SANJANASHREE S	3		9	1
250	2017-03-10 09:58:25.688411+00	94020057	SHRIDHA A R	3		9	1
251	2017-03-10 09:58:25.690438+00	94020053	SHILPA G S	3		9	1
252	2017-03-10 09:58:25.69214+00	94020047	RAKSHA	3		9	1
253	2017-03-10 09:58:25.693864+00	94020021	VINEETHA	3		9	1
254	2017-03-10 09:58:25.695645+00	94020012	BRUNDA M BHARADWAJ	3		9	1
255	2017-03-10 09:58:25.697334+00	94020009	SUDHANVA BS	3		9	1
256	2017-03-10 09:58:25.699112+00	94019907	SMITHA K	3		9	1
257	2017-03-10 09:58:25.700829+00	94019899	MANASA M	3		9	1
258	2017-03-10 09:58:25.702522+00	94019882	NIKITA SINGH	3		9	1
259	2017-03-10 09:58:25.706809+00	94019877	CHANDANA S	3		9	1
260	2017-03-10 09:58:25.712294+00	94019870	MEGHANA D	3		9	1
261	2017-03-10 09:58:25.714122+00	94019862	MANOJ R ASTIKAR	3		9	1
262	2017-03-10 09:58:25.715998+00	94019860	JASPREET SINGH	3		9	1
263	2017-03-10 09:58:25.717793+00	94019859	GHANASHYAM S K	3		9	1
264	2017-03-10 09:58:25.719651+00	94019850	G LIKITHA	3		9	1
265	2017-03-10 09:58:25.722231+00	94019848	CHAITRA H K	3		9	1
266	2017-03-10 09:58:25.724105+00	94019846	NIMISHA K	3		9	1
267	2017-03-10 09:58:25.725827+00	94019838	RAKESH E	3		9	1
268	2017-03-10 09:58:25.727542+00	94019836	PRATHIKSHA M URS	3		9	1
269	2017-03-10 09:58:25.72951+00	94019832	SHIVA M C MAHAN S	3		9	1
270	2017-03-10 09:58:25.731446+00	94019829	SHUBHA R	3		9	1
271	2017-03-10 09:58:25.73321+00	94019826	GANGA K M 	3		9	1
272	2017-03-10 09:58:25.735096+00	94019825	SAVINAY KARIYAPPA	3		9	1
273	2017-03-10 09:58:25.73727+00	94019824	JYOTHSNA J DESHPANDE	3		9	1
274	2017-03-10 09:58:25.739139+00	94019819	SRINIVAS G	3		9	1
275	2017-03-10 09:58:25.740983+00	94019818	K AISHWARYA	3		9	1
276	2017-03-10 09:58:25.742769+00	94019815	ROHAN M ASHLESH	3		9	1
277	2017-03-10 09:58:25.74665+00	94019811	SHRAVAN N	3		9	1
278	2017-03-10 09:58:25.748644+00	94019808	AKSHAR VIBHAV	3		9	1
279	2017-03-10 09:58:25.751262+00	94019805	V APARAJITHEN	3		9	1
280	2017-03-10 09:58:25.752979+00	94019801	NEHA ZAFAR	3		9	1
281	2017-03-10 09:58:36.022983+00	94019796	ANISH ARALIKATTI	3		9	1
282	2017-03-10 09:58:36.027688+00	94019792	SUMANTH S A	3		9	1
283	2017-03-10 09:58:36.033095+00	94019787	BIPUL JHA	3		9	1
284	2017-03-10 09:58:36.035449+00	94019776	NAMRATA B	3		9	1
285	2017-03-10 09:58:36.039381+00	94019774	SHIKHA SINHA	3		9	1
286	2017-03-10 09:58:36.041601+00	94019762	PIYUSH RAI	3		9	1
287	2017-03-10 09:58:36.044053+00	94019761	G SHREYAS PAI	3		9	1
288	2017-03-10 09:58:36.047424+00	94019759	ROHITH HARITATSA	3		9	1
289	2017-03-10 09:58:36.049599+00	94019747	SHASHANK SIMHA M R	3		9	1
290	2017-03-10 09:58:36.051744+00	94019745	SANJANA RAJ R V	3		9	1
291	2017-03-10 09:58:36.057344+00	94019732	RASHMI K T 	3		9	1
292	2017-03-10 09:58:36.066785+00	94019727	B K ARPITA	3		9	1
293	2017-03-10 09:58:36.069651+00	94019723	NIRUSHA N NAYAK	3		9	1
294	2017-03-10 09:58:36.072396+00	94019718	SHASHANK VATTAM	3		9	1
295	2017-03-10 09:58:36.074793+00	94019716	AKSHAT JAIN	3		9	1
296	2017-03-10 09:58:36.077661+00	94019714	NIDHI URS	3		9	1
297	2017-03-10 09:58:36.079784+00	94019710	SUSHMITHA M K	3		9	1
298	2017-03-10 09:58:36.082129+00	94019695	SAMPREETH R	3		9	1
299	2017-03-10 09:58:36.084492+00	94019694	ROHIT N SHREENIVAS	3		9	1
300	2017-03-10 09:58:36.086834+00	94019690	SHREYA GOPALAKRISHNA	3		9	1
301	2017-03-10 09:58:36.089216+00	94019688	SUBRAHMANYA H M 	3		9	1
302	2017-03-10 09:58:36.091478+00	94019687	RASHMI S M	3		9	1
303	2017-03-10 09:58:36.093667+00	94019682	SUDHANSHU SHARMA	3		9	1
304	2017-03-10 09:58:36.095689+00	94019680	SADHANA JANARDHANA	3		9	1
305	2017-03-10 09:58:36.097674+00	94019667	AISHWARYA VERMA	3		9	1
306	2017-03-10 09:58:36.099437+00	94019650	MEGHANA G S	3		9	1
307	2017-03-10 09:58:36.101193+00	94019635	KAREN JANE CONCESSAO	3		9	1
308	2017-03-10 09:58:36.108517+00	94019608	JENEENA MARIA MONTEIRO	3		9	1
309	2017-03-10 09:58:36.110438+00	94019603	TEJAS B	3		9	1
310	2017-03-10 09:58:36.11222+00	94019587	RAGHOTTAM J JOSHI	3		9	1
311	2017-03-10 09:58:36.114099+00	94019581	VINAY PANDHARIWAL	3		9	1
312	2017-03-10 09:58:36.11582+00	94019572	VISHRUTH M	3		9	1
313	2017-03-10 09:58:36.117674+00	94019522	LIKHITHA SHREE K S	3		9	1
314	2017-03-10 09:58:36.119437+00	94019486	YASH AGGARWAL	3		9	1
315	2017-03-10 09:58:36.121264+00	94019479	POOJA UMESH	3		9	1
316	2017-03-10 09:58:36.123025+00	94019478	SANJAY KASHYAP J	3		9	1
317	2017-03-10 09:58:36.124836+00	94019458	SHRIHARSHA M	3		9	1
318	2017-03-10 09:58:36.126672+00	94019455	VIJAYALAKSHMI R A 	3		9	1
319	2017-03-10 09:58:36.128406+00	94019452	LIKHITHA R	3		9	1
320	2017-03-10 09:58:36.131087+00	94019451	PRANEETH P	3		9	1
321	2017-03-10 09:58:36.133105+00	94019449	SYEDA FARHEEN FAIYAZ	3		9	1
322	2017-03-10 09:58:36.135618+00	94019445	MOHIT S	3		9	1
323	2017-03-10 09:58:36.137638+00	94019443	ADITH BHARADWAJ	3		9	1
324	2017-03-10 09:58:36.139317+00	94019434	VARSHINI P BALLARI	3		9	1
325	2017-03-10 09:58:36.141051+00	94019432	RAKSHIT DESHPANDE	3		9	1
326	2017-03-10 09:58:36.142797+00	94019426	NARASIMHA MAHESH NADIG	3		9	1
327	2017-03-10 09:58:36.144601+00	94019425	ARVIND RAJU	3		9	1
328	2017-03-10 09:58:36.146503+00	94019423	VATSALA SINHA	3		9	1
329	2017-03-10 09:58:36.148278+00	94019419	SHASHANK HEGDE	3		9	1
330	2017-03-10 09:58:36.150028+00	94019415	NAKUL BALIGA	3		9	1
331	2017-03-10 09:58:36.151699+00	94019409	DEEKSHITH A	3		9	1
332	2017-03-10 09:58:36.15344+00	94019406	ANIRUDH R KOWSHIK	3		9	1
333	2017-03-10 09:58:36.155319+00	94019401	SATHVIK S	3		9	1
334	2017-03-10 09:58:36.157249+00	94019400	PRAJWAL R SHELLAGI	3		9	1
335	2017-03-10 09:58:36.159027+00	94019398	AKSHIT MISHRA	3		9	1
336	2017-03-10 09:58:36.160975+00	94019397	BHASKAR SINGH	3		9	1
337	2017-03-10 09:58:36.162767+00	94019391	SUMANTH RAJ S	3		9	1
338	2017-03-10 09:58:36.1646+00	94019380	SANJAY KUMAR N P	3		9	1
339	2017-03-10 09:58:36.173581+00	94019379	SHIVA SHANKAR IYER	3		9	1
340	2017-03-10 09:58:36.175821+00	94019378	KUMAR RISHAV	3		9	1
341	2017-03-10 09:58:36.178027+00	94019374	AKASH V	3		9	1
342	2017-03-10 09:58:36.179847+00	94019372	NISCHAY D	3		9	1
343	2017-03-10 09:58:36.181632+00	94019371	PRANAB N	3		9	1
344	2017-03-10 09:58:36.183538+00	94019364	SRISHANTH S AMIN	3		9	1
345	2017-03-10 09:58:36.186744+00	94019356	PRASHANT V PATIL 	3		9	1
346	2017-03-10 09:58:36.188678+00	94019355	S SUSHMA	3		9	1
347	2017-03-10 09:58:36.190382+00	94019353	HARSHAVARDHAN KUMAR	3		9	1
348	2017-03-10 09:58:36.192316+00	94019339	KRUPADEVI M G	3		9	1
349	2017-03-10 09:58:36.194133+00	94019294	APOORVA M	3		9	1
350	2017-03-10 09:58:36.195926+00	94019159	ABHISHEK  KULKARNI 	3		9	1
351	2017-03-10 09:58:36.197666+00	94019148	NAREN R	3		9	1
352	2017-03-10 09:58:36.199398+00	94019092	MANTHAN C S	3		9	1
353	2017-03-10 09:58:36.201178+00	94019054	MONISHA GOWDA	3		9	1
354	2017-03-10 09:58:36.202994+00	93994741	YASHWANTH R	3		9	1
355	2017-03-10 09:58:36.204749+00	93926465	RAM PRASAD E NAIK	3		9	1
356	2017-03-10 09:58:36.206493+00	93658993	ADITYA SINHA	3		9	1
357	2017-03-10 09:58:36.208401+00	93626452	MILAN MENEZES	3		9	1
358	2017-03-10 10:13:47.65801+00	94210822	MANALI A PALLEGAR	3		9	1
359	2017-03-10 10:13:47.662537+00	94090301	NAMITA S ULLEGADI	3		9	1
360	2017-03-10 10:13:47.665125+00	94090299	PRATYUSH MISHRA	3		9	1
361	2017-03-10 10:13:47.667298+00	94084602	SANKALPA S	3		9	1
362	2017-03-10 10:13:47.671291+00	94084486	MEDHA	3		9	1
363	2017-03-10 10:13:47.673261+00	94082862	NISHANT KUMAR	3		9	1
364	2017-03-10 10:13:47.675123+00	94082840	VISHWAMBHARA SHETTY	3		9	1
365	2017-03-10 10:13:47.676984+00	94082828	NIHAL SRIVASTAVA	3		9	1
366	2017-03-10 10:13:47.678891+00	94082826	AYUSH GUPTA	3		9	1
367	2017-03-10 10:13:47.680686+00	94082811	AKASH KUMAR	3		9	1
368	2017-03-10 10:13:47.682426+00	94082809	NISHANT	3		9	1
369	2017-03-10 10:13:47.684371+00	94082801	POOJA S	3		9	1
370	2017-03-10 10:13:47.686238+00	94082800	MRIDUL GANGA	3		9	1
371	2017-03-10 10:13:47.687964+00	94082799	ALIP MAJUMDAR	3		9	1
372	2017-03-10 10:13:47.697406+00	94082797	POORNIMA P M	3		9	1
373	2017-03-10 10:13:47.699693+00	94082792	SANGEETHA P	3		9	1
374	2017-03-10 10:13:47.70144+00	94082756	ABHINAV KUMAR	3		9	1
375	2017-03-10 10:13:47.703282+00	94082751	AKSHAY VISHWANATH	3		9	1
376	2017-03-10 10:13:47.705304+00	94082733	CHAITRA RADRASWAMI	3		9	1
377	2017-03-10 10:13:47.707161+00	94082726	ADITYA K PRAMOD	3		9	1
378	2017-03-10 10:13:47.71727+00	94082722	APOORV SACHAN	3		9	1
379	2017-03-10 10:13:47.719618+00	94082721	ATUL KUMAR SHUKLA	3		9	1
380	2017-03-10 10:13:47.721694+00	94082715	AKASH V DESHPANDE	3		9	1
381	2017-03-10 10:13:47.723592+00	94082711	MOHIT UDUPA	3		9	1
382	2017-03-10 10:13:47.72545+00	94082704	N GOUTHAMI	3		9	1
383	2017-03-10 10:13:47.727467+00	94082702	SHIVAPRASAD NJ	3		9	1
384	2017-03-10 10:13:47.729487+00	94082698	PRAJWAL T	3		9	1
385	2017-03-10 10:13:47.731753+00	94082687	AKANSHA AGRAWAL	3		9	1
386	2017-03-10 10:13:47.733715+00	94082686	ASHUTOSH PRIYADARSHI	3		9	1
387	2017-03-10 10:13:47.73561+00	94082682	SUSHANT AGARWAL	3		9	1
388	2017-03-10 10:13:47.7375+00	94082669	KUSHAL S	3		9	1
389	2017-03-10 10:13:47.739484+00	94082643	POOJA SR	3		9	1
390	2017-03-10 10:13:47.741261+00	94082580	MEGHANA S	3		9	1
391	2017-03-10 10:13:47.743114+00	94082367	RAMNATH RAO BEKAL	3		9	1
392	2017-03-10 10:13:47.744916+00	94082355	VINAY BALIGA B	3		9	1
393	2017-03-10 10:13:47.746672+00	94082352	PRATHVI RAO	3		9	1
394	2017-03-10 10:13:47.748498+00	94082335	S VAISHNAVI	3		9	1
395	2017-03-10 10:13:47.752463+00	94082332	KRISHNA M V	3		9	1
396	2017-03-10 10:13:47.754706+00	94082300	MOHAMMED SHAMAIL FARHAN	3		9	1
397	2017-03-10 10:13:47.756592+00	94021101	KAVYA N KUMAR	3		9	1
398	2017-03-10 10:13:47.758557+00	94020733	POOJITH U RAO	3		9	1
399	2017-03-10 10:13:47.760246+00	94020601	BINDU H S	3		9	1
400	2017-03-10 10:13:47.762067+00	94020600	SUDARSHAN R KULKARNI	3		9	1
401	2017-03-10 10:13:47.763905+00	94020598	SURAJ VASHISTA B K	3		9	1
402	2017-03-10 10:13:47.76577+00	94020587	BINDU R N 	3		9	1
403	2017-03-10 10:13:47.767647+00	94020580	V VRUSHANK	3		9	1
404	2017-03-10 10:13:47.769554+00	94020579	PRATYUSH SUMAN	3		9	1
405	2017-03-10 10:13:47.77176+00	94020558	NARENDRA S KAPASHI	3		9	1
406	2017-03-10 10:13:47.775116+00	94020556	SIDDHANT ARORA	3		9	1
407	2017-03-10 10:13:47.777356+00	94020553	BHARGAVI R KAMAT	3		9	1
408	2017-03-10 10:13:47.779205+00	94020520	VINAY S KULKARNI	3		9	1
409	2017-03-10 10:13:47.781128+00	94020508	NIDHI KULKARNI 	3		9	1
410	2017-03-10 10:13:47.783045+00	94020483	KIRAN U KAMATH	3		9	1
411	2017-03-10 10:13:47.784821+00	94020454	DEVANG J	3		9	1
412	2017-03-10 10:13:47.78662+00	94020453	SHARATH C M	3		9	1
413	2017-03-10 10:13:47.788581+00	94020432	VARSHINI NARESH	3		9	1
414	2017-03-10 10:13:47.790349+00	94020297	CHANDANA J U	3		9	1
415	2017-03-10 10:13:47.792123+00	94020265	RACHANA RAMESH	3		9	1
416	2017-03-10 10:13:47.793982+00	94020247	LIKITHA D T	3		9	1
417	2017-03-10 10:13:47.804241+00	94020237	SHASHANK SHAURYA	3		9	1
418	2017-03-10 10:13:47.806794+00	94020231	PRIYADARSHINI N 	3		9	1
419	2017-03-10 10:13:47.808663+00	94020217	SAMHITA GURJAR	3		9	1
420	2017-03-10 10:13:47.810515+00	94020215	RACHANA G	3		9	1
421	2017-03-10 10:13:47.812313+00	94020212	ANJANA G	3		9	1
422	2017-03-10 10:13:47.814137+00	94020207	ANIRUDHA BEEDIKAR	3		9	1
423	2017-03-10 10:13:47.824857+00	94020194	SRIRAM V	3		9	1
424	2017-03-10 10:13:47.827694+00	94020154	NAVEENRAJ M 	3		9	1
425	2017-03-10 10:13:47.83004+00	94020077	GREESHMA BALLAL	3		9	1
426	2017-03-10 10:13:47.832106+00	94020064	SANJANASHREE S	3		9	1
427	2017-03-10 10:13:47.833966+00	94020057	SHRIDHA A R	3		9	1
428	2017-03-10 10:13:47.835865+00	94020053	SHILPA G S	3		9	1
429	2017-03-10 10:13:47.837734+00	94020047	RAKSHA	3		9	1
430	2017-03-10 10:13:47.839702+00	94020021	VINEETHA	3		9	1
431	2017-03-10 10:13:47.842051+00	94020012	BRUNDA M BHARADWAJ	3		9	1
432	2017-03-10 10:13:47.843927+00	94020009	SUDHANVA BS	3		9	1
433	2017-03-10 10:13:47.845807+00	94019907	SMITHA K	3		9	1
434	2017-03-10 10:13:47.847749+00	94019899	MANASA M	3		9	1
435	2017-03-10 10:13:47.84966+00	94019882	NIKITA SINGH	3		9	1
436	2017-03-10 10:13:47.851523+00	94019877	CHANDANA S	3		9	1
437	2017-03-10 10:13:47.85329+00	94019870	MEGHANA D	3		9	1
438	2017-03-10 10:13:47.855014+00	94019862	MANOJ R ASTIKAR	3		9	1
439	2017-03-10 10:13:47.856776+00	94019860	JASPREET SINGH	3		9	1
440	2017-03-10 10:13:47.85854+00	94019859	GHANASHYAM S K	3		9	1
441	2017-03-10 10:13:47.86033+00	94019850	G LIKITHA	3		9	1
442	2017-03-10 10:13:47.862102+00	94019848	CHAITRA H K	3		9	1
443	2017-03-10 10:13:47.864659+00	94019846	NIMISHA K	3		9	1
444	2017-03-10 10:13:47.866456+00	94019838	RAKESH E	3		9	1
445	2017-03-10 10:13:47.868581+00	94019836	PRATHIKSHA M URS	3		9	1
446	2017-03-10 10:13:47.87062+00	94019832	SHIVA M C MAHAN S	3		9	1
447	2017-03-10 10:13:47.873813+00	94019829	SHUBHA R	3		9	1
448	2017-03-10 10:13:47.875765+00	94019826	GANGA K M 	3		9	1
449	2017-03-10 10:13:47.877521+00	94019825	SAVINAY KARIYAPPA	3		9	1
450	2017-03-10 10:13:47.880274+00	94019824	JYOTHSNA J DESHPANDE	3		9	1
451	2017-03-10 10:13:47.882012+00	94019819	SRINIVAS G	3		9	1
452	2017-03-10 10:13:47.883766+00	94019818	K AISHWARYA	3		9	1
453	2017-03-10 10:13:47.885539+00	94019815	ROHAN M ASHLESH	3		9	1
454	2017-03-10 10:13:47.887293+00	94019811	SHRAVAN N	3		9	1
455	2017-03-10 10:13:47.889154+00	94019808	AKSHAR VIBHAV	3		9	1
456	2017-03-10 10:13:47.89096+00	94019805	V APARAJITHEN	3		9	1
457	2017-03-10 10:13:47.893821+00	94019801	NEHA ZAFAR	3		9	1
458	2017-03-10 10:13:47.895656+00	94019796	ANISH ARALIKATTI	3		9	1
459	2017-03-10 10:13:47.897599+00	94019792	SUMANTH S A	3		9	1
460	2017-03-10 10:13:47.899362+00	94019787	BIPUL JHA	3		9	1
461	2017-03-10 10:13:47.902168+00	94019776	NAMRATA B	3		9	1
462	2017-03-10 10:13:47.910593+00	94019774	SHIKHA SINHA	3		9	1
463	2017-03-10 10:13:47.913051+00	94019762	PIYUSH RAI	3		9	1
464	2017-03-10 10:13:47.915145+00	94019761	G SHREYAS PAI	3		9	1
465	2017-03-10 10:13:47.917266+00	94019759	ROHITH HARITATSA	3		9	1
466	2017-03-10 10:13:47.919309+00	94019747	SHASHANK SIMHA M R	3		9	1
467	2017-03-10 10:13:47.921752+00	94019745	SANJANA RAJ R V	3		9	1
468	2017-03-10 10:13:47.931982+00	94019732	RASHMI K T 	3		9	1
469	2017-03-10 10:13:47.935205+00	94019727	B K ARPITA	3		9	1
470	2017-03-10 10:13:47.937413+00	94019723	NIRUSHA N NAYAK	3		9	1
471	2017-03-10 10:13:47.939736+00	94019718	SHASHANK VATTAM	3		9	1
472	2017-03-10 10:13:47.942744+00	94019716	AKSHAT JAIN	3		9	1
473	2017-03-10 10:13:47.945109+00	94019714	NIDHI URS	3		9	1
474	2017-03-10 10:13:47.947186+00	94019710	SUSHMITHA M K	3		9	1
475	2017-03-10 10:13:47.949217+00	94019695	SAMPREETH R	3		9	1
476	2017-03-10 10:13:47.952892+00	94019694	ROHIT N SHREENIVAS	3		9	1
477	2017-03-10 10:13:47.955073+00	94019690	SHREYA GOPALAKRISHNA	3		9	1
478	2017-03-10 10:13:47.95827+00	94019688	SUBRAHMANYA H M 	3		9	1
479	2017-03-10 10:13:47.960224+00	94019687	RASHMI S M	3		9	1
480	2017-03-10 10:13:47.96247+00	94019682	SUDHANSHU SHARMA	3		9	1
481	2017-03-10 10:13:47.964523+00	94019680	SADHANA JANARDHANA	3		9	1
482	2017-03-10 10:13:47.966374+00	94019667	AISHWARYA VERMA	3		9	1
483	2017-03-10 10:13:47.968364+00	94019650	MEGHANA G S	3		9	1
484	2017-03-10 10:13:47.970405+00	94019635	KAREN JANE CONCESSAO	3		9	1
485	2017-03-10 10:13:47.972366+00	94019608	JENEENA MARIA MONTEIRO	3		9	1
486	2017-03-10 10:13:47.974228+00	94019603	TEJAS B	3		9	1
487	2017-03-10 10:13:47.976072+00	94019587	RAGHOTTAM J JOSHI	3		9	1
488	2017-03-10 10:13:47.978922+00	94019581	VINAY PANDHARIWAL	3		9	1
489	2017-03-10 10:13:47.981211+00	94019572	VISHRUTH M	3		9	1
490	2017-03-10 10:13:47.983046+00	94019522	LIKHITHA SHREE K S	3		9	1
491	2017-03-10 10:13:47.985419+00	94019486	YASH AGGARWAL	3		9	1
492	2017-03-10 10:13:47.987293+00	94019479	POOJA UMESH	3		9	1
493	2017-03-10 10:13:47.989092+00	94019478	SANJAY KASHYAP J	3		9	1
494	2017-03-10 10:13:47.991324+00	94019458	SHRIHARSHA M	3		9	1
495	2017-03-10 10:13:47.993139+00	94019455	VIJAYALAKSHMI R A 	3		9	1
496	2017-03-10 10:13:47.994883+00	94019452	LIKHITHA R	3		9	1
497	2017-03-10 10:13:47.996654+00	94019451	PRANEETH P	3		9	1
498	2017-03-10 10:13:47.998459+00	94019449	SYEDA FARHEEN FAIYAZ	3		9	1
499	2017-03-10 10:13:48.001362+00	94019445	MOHIT S	3		9	1
500	2017-03-10 10:13:48.003364+00	94019443	ADITH BHARADWAJ	3		9	1
501	2017-03-10 10:13:48.005129+00	94019434	VARSHINI P BALLARI	3		9	1
502	2017-03-10 10:13:48.006902+00	94019432	RAKSHIT DESHPANDE	3		9	1
503	2017-03-10 10:13:48.008695+00	94019426	NARASIMHA MAHESH NADIG	3		9	1
504	2017-03-10 10:13:48.018081+00	94019425	ARVIND RAJU	3		9	1
505	2017-03-10 10:13:48.020298+00	94019423	VATSALA SINHA	3		9	1
506	2017-03-10 10:13:48.02221+00	94019419	SHASHANK HEGDE	3		9	1
507	2017-03-10 10:13:48.024424+00	94019415	NAKUL BALIGA	3		9	1
508	2017-03-10 10:13:48.026668+00	94019409	DEEKSHITH A	3		9	1
509	2017-03-10 10:13:48.028978+00	94019406	ANIRUDH R KOWSHIK	3		9	1
510	2017-03-10 10:13:48.038426+00	94019401	SATHVIK S	3		9	1
511	2017-03-10 10:13:48.041049+00	94019400	PRAJWAL R SHELLAGI	3		9	1
512	2017-03-10 10:13:48.043126+00	94019398	AKSHIT MISHRA	3		9	1
513	2017-03-10 10:13:48.045107+00	94019397	BHASKAR SINGH	3		9	1
514	2017-03-10 10:13:48.046988+00	94019391	SUMANTH RAJ S	3		9	1
515	2017-03-10 10:13:48.048801+00	94019380	SANJAY KUMAR N P	3		9	1
516	2017-03-10 10:13:48.05068+00	94019379	SHIVA SHANKAR IYER	3		9	1
517	2017-03-10 10:13:48.052915+00	94019378	KUMAR RISHAV	3		9	1
518	2017-03-10 10:13:48.054719+00	94019374	AKASH V	3		9	1
519	2017-03-10 10:13:48.056515+00	94019372	NISCHAY D	3		9	1
520	2017-03-10 10:13:48.058369+00	94019371	PRANAB N	3		9	1
521	2017-03-10 10:13:48.060233+00	94019364	SRISHANTH S AMIN	3		9	1
522	2017-03-10 10:13:48.06234+00	94019356	PRASHANT V PATIL 	3		9	1
523	2017-03-10 10:13:48.064138+00	94019355	S SUSHMA	3		9	1
524	2017-03-10 10:13:48.065985+00	94019353	HARSHAVARDHAN KUMAR	3		9	1
525	2017-03-10 10:13:48.067861+00	94019339	KRUPADEVI M G	3		9	1
526	2017-03-10 10:13:48.069793+00	94019294	APOORVA M	3		9	1
527	2017-03-10 10:13:48.071516+00	94019159	ABHISHEK  KULKARNI 	3		9	1
528	2017-03-10 10:13:48.073251+00	94019148	NAREN R	3		9	1
529	2017-03-10 10:13:48.075202+00	94019092	MANTHAN C S	3		9	1
530	2017-03-10 10:13:48.076958+00	94019054	MONISHA GOWDA	3		9	1
531	2017-03-10 10:13:48.078743+00	93994741	YASHWANTH R	3		9	1
532	2017-03-10 10:13:48.081014+00	93926465	RAM PRASAD E NAIK	3		9	1
533	2017-03-10 10:13:48.082865+00	93658993	ADITYA SINHA	3		9	1
534	2017-03-10 10:13:48.084687+00	93626452	MILAN MENEZES	3		9	1
535	2017-03-10 10:19:55.130074+00	94217039	RANJITHA M N	1	Added.	9	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 535, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	parent	bulletin
9	parent	user
10	parent	execom
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-08-09 13:54:21.977571+00
2	auth	0001_initial	2016-08-09 13:54:22.070732+00
3	admin	0001_initial	2016-08-09 13:54:22.104204+00
4	admin	0002_logentry_remove_auto_add	2016-08-09 13:54:22.124095+00
5	contenttypes	0002_remove_content_type_name	2016-08-09 13:54:22.167738+00
6	auth	0002_alter_permission_name_max_length	2016-08-09 13:54:22.185176+00
7	auth	0003_alter_user_email_max_length	2016-08-09 13:54:22.202981+00
8	auth	0004_alter_user_username_opts	2016-08-09 13:54:22.220286+00
9	auth	0005_alter_user_last_login_null	2016-08-09 13:54:22.238839+00
10	auth	0006_require_contenttypes_0002	2016-08-09 13:54:22.241043+00
11	auth	0007_alter_validators_add_error_messages	2016-08-09 13:54:22.255516+00
12	parent	0001_initial	2016-08-09 13:54:22.302575+00
13	parent	0002_auto_20160725_1115	2016-08-09 13:54:22.415346+00
14	sessions	0001_initial	2016-08-09 13:54:22.43147+00
15	parent	0003_auto_20161128_2318	2016-11-28 18:01:30.756242+00
16	parent	0002_auto_20170310_1059	2017-03-10 05:34:18.527049+00
17	parent	0002_auto_20170310_1108	2017-03-10 05:41:51.746086+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('django_migrations_id_seq', 17, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
zqxpa1993csd7huycnobl44sb1deeujg	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-08-23 13:56:44.331889+00
8boy8vhplt36gwvtzn2lb3vzwjoyq1zg	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-08-26 04:26:34.525179+00
hd1mfxz3ptbb46nhpdci15275mggnkgl	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-08-29 04:47:46.9902+00
scqsowend4j7awpxf5nq5eydsofwzclj	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-09-15 08:48:38.786213+00
qzp31kt49seh8thvwc79djqsx37ojg4t	ZDg2MDk4NWZkZGQzNzExNzFjM2Q0ZWE1NjMyN2U2YzVhNGZiZGM5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YzQ5OTUxOGM4MjdkNDA2ZDZkMTUxOWExMjg2OTA4M2UxMzAwZDQiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-09-29 12:40:30.779825+00
qlfdix7oobs3l6b6ye3rn4r73bc97xsl	YjM5NWFlMDEyNmI5M2ZhZTVjNDRhZTEwMDFiZWU2ZTliNTkwM2I2MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YzQ5OTUxOGM4MjdkNDA2ZDZkMTUxOWExMjg2OTA4M2UxMzAwZDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2016-09-30 10:18:31.541709+00
1i1juroblmglulopayor9pwgap7ynrxy	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-10-04 04:36:19.55558+00
hb83rl3tl8bsb0wrlx5enm8kwab9bvh1	YjM5NWFlMDEyNmI5M2ZhZTVjNDRhZTEwMDFiZWU2ZTliNTkwM2I2MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YzQ5OTUxOGM4MjdkNDA2ZDZkMTUxOWExMjg2OTA4M2UxMzAwZDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2016-10-05 17:18:37.782373+00
kb6kd941xkj1mqzk1fgpdi41toe8zbdt	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-10-05 20:15:29.849809+00
m4d5m0vxtjj28vnh5e2b868y9ket8hs0	YjM5NWFlMDEyNmI5M2ZhZTVjNDRhZTEwMDFiZWU2ZTliNTkwM2I2MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YzQ5OTUxOGM4MjdkNDA2ZDZkMTUxOWExMjg2OTA4M2UxMzAwZDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2016-10-20 18:21:31.639383+00
gbg0ucqy4orcfj9djgqndw86b86ygooa	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-09 11:18:31.579571+00
h26sfdzopahjjoyj4wtgjaen8qbkbn9b	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-09 15:24:03.650065+00
8ccf79bytr1qd35w7k0j1zu7fcp3sfzv	MzU1ODYyZmNiOTE1OTQ5NDUwZWNiMTI1NjYzOGQ2ZjE1ZDU2ZjA3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwMzkzZTZkODczNTlhYWExNDE1Njc0YTY0Nzg5NGI0YjgxOGU3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-12-09 15:27:26.693216+00
7zjtn7u3ny4nervogvl54cyvpl6ewtq4	ZjQ2NjIxOGJiZDRiYjMzZjI5YzI0YzdkYTc4OTlhNjZjZWNmMDdkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjYyYzgzMzAzNWYwMjBlNjFhNGMxMzdmYWU2N2E3ZWJhODU4MjA0Y2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2016-12-10 10:58:27.426315+00
m367rh7jgj08rd9pgu24c9jr0xex76h8	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-10 11:06:54.673712+00
fu8yom5ldhs4n3atta115w513ds6n75z	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-11 16:00:25.74572+00
f8yjy6hwv8kbo29ggiphkcq4sxkar668	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-12 10:51:44.755121+00
1o0ybz8wwpxg5ysbqtcicefrm8ac7gzf	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-12 18:07:13.942569+00
5i3y4q18pzrs0ooorhbpcrq2ug6isqr6	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-12 18:53:53.582144+00
oy5ipyzxb9qjk9ql52ei989c6s4b3pxi	MzU1ODYyZmNiOTE1OTQ5NDUwZWNiMTI1NjYzOGQ2ZjE1ZDU2ZjA3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwMzkzZTZkODczNTlhYWExNDE1Njc0YTY0Nzg5NGI0YjgxOGU3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-12-12 18:54:21.163971+00
cqxt0nbyf0u0s591ptefcrsx4n8xcc86	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-14 03:26:32.000376+00
gqbvxk2mlc3zgm16oekikr07cvat8b50	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-15 06:13:43.875914+00
8ljjfoabu3t6l5ja0amytccp9nlfc1zm	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-15 12:50:32.773179+00
o1v6g0hfidixh63z4ojbalp6ufeq6odz	MzU1ODYyZmNiOTE1OTQ5NDUwZWNiMTI1NjYzOGQ2ZjE1ZDU2ZjA3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwMzkzZTZkODczNTlhYWExNDE1Njc0YTY0Nzg5NGI0YjgxOGU3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-12-15 17:34:24.290242+00
nkxablo0tyxaod8m5idzzksyyitrz7nd	MzU1ODYyZmNiOTE1OTQ5NDUwZWNiMTI1NjYzOGQ2ZjE1ZDU2ZjA3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwMzkzZTZkODczNTlhYWExNDE1Njc0YTY0Nzg5NGI0YjgxOGU3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-12-17 18:07:16.97655+00
atgu4xcl1qeazhdc6zciwa1th5lnso3v	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-19 05:42:35.185436+00
d2j0b2vui2w0nk5hq8f0hv4bma6fhu1y	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-01-02 16:27:21.157834+00
eck7cjvkumqqx2vbczcjnm9udb0mws0l	MGI4ZmY0M2M4NmRhMGQwOGRmNjQ1Yzg1OWNmZWYxYmMwY2Y5ZmI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkYmNlYjQyNmE2NzU5ZWQzNzIzZDkyMjMwM2JiN2FkNzQwMjliMGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-01-02 16:36:26.977862+00
k0q6k49z4wozeinsaonhnmdztijt41it	M2MxNjc0ZDYxNjBjZjU4NWEwMmEyNTk4NTZmOTBjNDZmMzdkODQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFiMmI2Zjk2MDE5ZWM0MjYyYWVjNTdlZWJhMmY4ZDQ0M2Q0ZjE2ZDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-01-02 18:21:02.344564+00
fpvbrtfj2mntby750f4wo48jd3db3vhx	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-01-09 12:39:43.06352+00
l162bdu4gd5nk1l9tlghx7jl997n6tr4	NDIwN2ViY2Y1NjEzNTZjNTJmNTA5YjQxZDM1NGI2OGVkMWUwODIwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MmQ4ZTZmZGMwMTc0OWEwZjU5ZmJjZWFkNGUxZGYxNTIwZTY1NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-01-12 02:12:25.851267+00
b330s5han7l2w8ledbmn065ei4gy65dx	ZjQ2NjIxOGJiZDRiYjMzZjI5YzI0YzdkYTc4OTlhNjZjZWNmMDdkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjYyYzgzMzAzNWYwMjBlNjFhNGMxMzdmYWU2N2E3ZWJhODU4MjA0Y2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2017-01-19 06:59:28.937347+00
s8brzywg29iahjbmbrmutde0dolhelky	MzU1ODYyZmNiOTE1OTQ5NDUwZWNiMTI1NjYzOGQ2ZjE1ZDU2ZjA3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwMzkzZTZkODczNTlhYWExNDE1Njc0YTY0Nzg5NGI0YjgxOGU3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2017-03-10 05:53:56.178725+00
\.


--
-- Data for Name: parent_bulletin; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY parent_bulletin (id, "theLine", "theLink", "subjectsTo") FROM stdin;
3	IEEE WIE International Summit at Pune on 23-24 September	http://www.ieee-wie-summit-pune2016.org/	3
4	IEEE 84th vehicular technology conference(VTC-Fall) on 18-21 september 2016 in canada.	http://www.ieeevtc.org/vtc2016fall/	3
5	Humanitarian Technology Conference from 21 to 23 December 2016 at Agra India	http://www.ieeehtc2016.com	2
6	Meet Steve Wozniak, co-founder of Apple, and Grady Booch, Chief Scientist of Software Engineering at IBM, at TechIgnite in San Fransisco CA from 21-22 march 2017	https://www.computer.org/web/about/whats-new	3
7	NISB Odd semester fest Adroit about to begin.	http://adroit.nisb.in	0
8	NISB Conducting an Industrial Visit to CISCO	http://nisb.in/events	0
9	IEEE Step 2016, Bangalore Section aka IEEE Spark 2016	http://www.ieeespark.in	1
10	IEEE Smarttech workshop in Bangalore on 18th and 19th November	http://www.ieeesmarttech.com/home.html	1
11	All India Computer Society Congress to be held in Hyderabad	https://enotice.vtools.ieee.org/public/15314	2
12	IEEE Bangalore AGM 2017 on 8th Jan at J N Tata Auditorium, IISc, Bangalore	https://lm.facebook.com/l.php?u=https%3A%2F%2Fin.explara.com%2Fe%2Fieee-bangalore-section-agm-2017&h=ATNRgnWsXcO4DlqPbsmu42OYkKN2Z0KW6SrsQQqhQdfwWFC9QfPY3wBs8m73l8btOG0Q2Ody8laDuZeL_6ZMAOayttlc7K_DwCU	1
\.


--
-- Name: parent_bulletin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('parent_bulletin_id_seq', 12, true);


--
-- Data for Name: parent_execom; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY parent_execom (id, name, email, photo, mtype, post, phone) FROM stdin;
1	Rajashimha Reddy	in.reddy.r@ieee.org	http://mridulganga.github.io/nisb-cdn/img/team/rsimha.jpg	2	Chairperson	890445535
2	Dr. Rohini Nagapadma	.	http://mridulganga.github.io/nisb-cdn/img/team/defaultf.png	1	Branch Counsellor	.
4	Tejas R	tejas.r.in@ieee.org	http://mridulganga.github.io/nisb-cdn/img/team/tejas.jpg	2	Vice Chairperson	.
6	Mridul Ganga	mridul.kepler@gmail.com	http://mridulganga.github.io/nisb-cdn/img/team/default.png	3	Web Master	9916385511
7	Chetan Kulkarni	kulkarnichetan49@gmail.com	http://mridulganga.github.io/nisb-cdn/img/team/Chetan.JPG	2	Secretary	.
8	Sheetal Pamecha	sheetal.pamecha08@ieee.org	http://mridulganga.github.io/nisb-cdn/img/team/sheetal.jpg	2	Treasurer	.
5	Abhinav Kumar	abhinav395.ak@gmail.com	http://mridulganga.github.io/nisb-cdn/img/team/abhinav.jpg	3	Database Admin	9740352307
9	Shubham	shubham.k.1995@ieee.org	http://mridulganga.github.io/nisb-cdn/img/team/shubham.jpg	2	Secretary(Memb. Development)	8553365571
10	Mohd Sanad Zaki Rizvi	in.mohdsanadzaki.rizvi@ieee.org	http://mridulganga.github.io/nisb-cdn/img/team/sanad.jpg	2	SAC Coordinator	.
11	J Aditya	.	http://mridulganga.github.io/nisb-cdn/img/team/aj.jpg	2	Computer Society, Vice Chair	.
12	Arpana Debnath	.	http://mridulganga.github.io/nisb-cdn/img/team/arpana.jpg	2	Computer Society, Chairperson	.
3	Mr. M J Yogesh	yogeshmj.nie@gmail.com	http://mridulganga.github.io/nisb-cdn/img/team/default.png	1	Faculty Advisor	.
13	Varsha Rao	varsha.r@ieee.org	https://docs.google.com/uc?id=0B9vyxQWY2nNCRHVhY0J0X0VCUDlldGZIT0hubkJQQ2k0ckIw	2	WIE Chairperson	XXXXXXXXXX
14	Anarghya Nagesh	anarghyanagesh@gmail.com	https://docs.google.com/uc?id=0B9vyxQWY2nNCUHoxWGxSRlBBYUZoMkJMYWVmTlBMeXpYSjd3	3	Even Manager	8197590387
15	Trapthi R Shetty	tarpthi.shetty31@ieee.org	https://docs.google.com/uc?id=0B9vyxQWY2nNCN25qX3hhQlJJTVZjemZucUljT3RCb2N6Wm9z	3	Member Services Lead	8151918099
16	Milan Menezes	milanmenezes@computer.org	https://docs.google.com/uc?id=0B9vyxQWY2nNCWFl5SndwUXZMM1BaXzI2QTlCbk84TE9KZmJR	3	Web Master	9481211903
17	Raksha M	rakshamitthur@ieee.org	https://docs.google.com/uc?id=0B9vyxQWY2nNCeGw0WW0zVTB5OFlJVTg1eThERUxQRVdSdUg0	3	IEEE Points Lead	9900617737
18	Limita V Shetty	limita.shetty@ieee.org	https://docs.google.com/uc?id=0B9vyxQWY2nNCRmJGZXFkYXlrak5lOGNUZTc1TnlxY0xBSnhN	3	HR Lead	9008234655
19	Raj Abhishek	raj21abhishek@gmail.com	https://docs.google.com/uc?id=0B9vyxQWY2nNCVVVTRVVMNWRCaElYeG9UMGgwdFBxb1RLc3Aw	3	Section Editor	xxxxxxxxxx
21	Sudhanshu Sharma	sudhanshusharma@ieee.org	http://mridulganga.github.io/nisb-cdn/img/team/sudhanshu.jpg	3	Hardware Lead	9008726274
\.


--
-- Name: parent_execom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin7tcldss
--

SELECT pg_catalog.setval('parent_execom_id_seq', 21, true);


--
-- Data for Name: parent_user; Type: TABLE DATA; Schema: public; Owner: admin7tcldss
--

COPY parent_user (ieee_num, name, "isCS", "emailAddress", phno, sem, branch) FROM stdin;
94011923	VINAYA R NAYAK	f	vinayanayak1996@gmail.com	9900450931	3	ISE
94019723	NIRUSHA N NAYAK	f	nirushanayak31@gmail.com	9901013231	2	ISE
94019688	SUBRAHMANYA H M 	f	subrahmanya7121@gmail.com	7760760121	2	ISE
94019710	SUSHMITHA M K	f	mksushmitha1997@gmail.com	9886805828	2	ECE
94019714	NIDHI URS	f	nidhiurs58028@gmail.com	7406477603	2	ECE
94019745	SANJANA RAJ R V	f	rvsanjanaraj@gmail.com	8970400256	2	ECE
94019732	RASHMI K T 	f	rashmi.kt03@gmail.com	9731524882	2	ECE
94019695	SAMPREETH R	t	sampreeth1998@gmail.com	9449472805	1	CSE
94019759	ROHITH HARITATSA	f	rohith.haritatsa@gmail.com	7204748929	1	MECH
94019761	G SHREYAS PAI	f	shreyaspaig@gmail.com	8277650135	2	IP
94019762	PIYUSH RAI	t	raipiyushonline@gmail.com	8762125332	3	ISE
94019805	V APARAJITHEN	f	aparswami@gmail.com	9481432150	2	ISE
94019808	AKSHAR VIBHAV	t	akshar.vibhav@gmail.com	7000151730	1	CSE
94019819	SRINIVAS G	f	srinivasg21097@gmail.com	9483036884	2	ISE
94019825	SAVINAY KARIYAPPA	f	savinaysav@gmail.com	9482110589	2	ISE
94019815	ROHAN M ASHLESH	t	rohanmashlesh@gmail.com	9739626466	1	ISE
94019792	SUMANTH S A	t	sa.sumanth@gmail.com	8762785892	1	CSE
94019796	ANISH ARALIKATTI	t	anisharalikatti24@gmail.com	9158039455	1	CSE
94019859	GHANASHYAM S K	t	ghassamghatti1@gmail.com	9423004439	1	CSE
94019862	MANOJ R ASTIKAR	t	manojastikar80@gmail.com	9731620955	1	CSE
94019899	MANASA M	f	maanukala1998@gmail.com	9449839054	1	ECE
94019846	NIMISHA K	f	nimisha.k.97@gmail.com	9538485660	1	ECE
94019870	MEGHANA D	f	meghanameghsd@gmail.com	8147252757	1	ECE
94019848	CHAITRA H K	f	chaitrahk11@gmail.com	9741299220	1	ECE
94019882	NIKITA SINGH	f	nikita.soj@gmail.com	9471894971	1	ECE
94019907	SMITHA K	f	smithakedila@gmail.com	9481384451	1	ECE
94019850	G LIKITHA	f	glikithachowdary@gmail.com	9738057591	1	ECE
94019372	NISCHAY D	t	nischayd75@gmail.com	9108877936	1	CSE
94019443	ADITH BHARADWAJ	t	adithbharadwaj@gmail.com	8762058742	1	CSE
94019445	MOHIT S	f	bablu12mohit@gmail.com	8951012398	1	CSE
93994741	YASHWANTH R	t	chawatyash@gmail.com	8971220965	1	ECE
94019451	PRANEETH P	t	praneeth.p1998@gmail.com	9535746739	1	CSE
94019486	YASH AGGARWAL	t	aggarwal.yash2011@gmail.com	9557753634	1	CSE
93926465	RAM PRASAD E NAIK	t	ramprasade10@gmail.com	9886856449	1	CSE
94019811	SHRAVAN N	t	harshashravan1998@gmail.com	9902126160	1	CSE
94019826	GANGA K M 	t	gangakm1@gmail.com	8277247828	1	ECE
94019787	BIPUL JHA	t	bipuljha143@gmail.com	8527274787	1	CSE
94019774	SHIKHA SINHA	t	shikha120in@gmail.com	7349340487	1	EEE
94019838	RAKESH E	t	rakesh.e1998@gmail.com	9448989016	1	EEE
94019832	SHIVA M C MAHAN S	f	shivamcmahan57@gmail.com	9739550857	1	EEE
94019836	PRATHIKSHA M URS	t	prathikshaurs@gmail.com	8050271708	1	CSE
94020432	VARSHINI NARESH	t	varshijun7@gmail.com	8762483957	1	CSE
94020483	KIRAN U KAMATH	t	kirankamat.mgm@gmail.com	9972925056	1	ISE
94020508	NIDHI KULKARNI 	t	kulkarni.nidhi@yahoo.com	9481660286	1	EEE
94020454	DEVANG J	t	devang.j1998@gmail.com	8105798618	1	ISE
94020558	NARENDRA S KAPASHI	t	skapashinarendra@gmail.com	7795085044	1	ISE
94020520	VINAY S KULKARNI	t	vnkulkarni5@gmail.com	9448410802	1	ECE
94020579	PRATYUSH SUMAN	t	pratyush.suman@gmail.com	8093224758	1	CSE
94020580	V VRUSHANK	t	iamvrushank@gmail.com	9449821165	1	CSE
94020598	SURAJ VASHISTA B K	t	bksurajvashista@gmail.com	7406187604	1	CSE
94020600	SUDARSHAN R KULKARNI	t	sudarshankul500@gmail.com	8867910502	1	CSE
94020587	BINDU R N 	t	bindurn2015@gmail.com	9035927252	1	CSE
94020601	BINDU H S	t	binduhs2016@gmail.com	8861407672	1	ECE
94020553	BHARGAVI R KAMAT	t	bhargavi.kamat98@gmail.com	7996882121	1	CSE
94020556	SIDDHANT ARORA	t	sidsidarora.sa@gmail.com	8126423424	1	ISE
94019572	VISHRUTH M	t	vishruth24@gmail.com	9591591024	1	ISE
94019581	VINAY PANDHARIWAL	t	pwalvinay@gmail.com	7899093234	1	ISE
94019587	RAGHOTTAM J JOSHI	f	raghottam882@gmail.com	7259874067	1	ISE
94019603	TEJAS B	f	tejasb868@gmail.com	9481616094	1	MECH
94019608	JENEENA MARIA MONTEIRO	f	jeneenamaria4@gmail.com	8197924543	1	ISE
94019650	MEGHANA G S	f	meghanamoni12@gmail.com	9632190469	1	ISE
94019667	AISHWARYA VERMA	f	aishverma.1111@gmail.com	9740511631	1	ISE
94019635	KAREN JANE CONCESSAO	f	karenjaneconcessao@gmail.com	9483198363	1	ISE
94019718	SHASHANK VATTAM	f	vattamshashank@gmail.com	9964826615	1	ISE
94019680	SADHANA JANARDHANA	f	jsadhana123@gmail.com	8496024426	1	ISE
94019687	RASHMI S M	f	roxyrocks398@gmail.com	7795010164	1	ISE
94019690	SHREYA GOPALAKRISHNA	f	sanjugshreya@gmail.com	7338540328	1	ISE
94019747	SHASHANK SIMHA M R	f	shashanksimha183@gmail.com	9482038408	1	ECE
94019716	AKSHAT JAIN	t	akshatj210@gmail.com	9986580630	1	CSE
94019397	BHASKAR SINGH	t	bhaskarsingh161197@gmail.com	9986602930	1	CSE
94019398	AKSHIT MISHRA	t	7akshitmishra@gmail.com	9451852812	1	CSE
94019353	HARSHAVARDHAN KUMAR	t	harshvardhankumar22@gmail.com	7549384040	1	CSE
94019401	SATHVIK S	f	sathvik.sureshbg@gmail.com	8867611208	1	ECE
94019364	SRISHANTH S AMIN	f	srishanth.1997@gmail.com	8296366753	1	ECE
94019356	PRASHANT V PATIL 	t	paulsep2198@gmail.com	9739647610	1	ISE
94019419	SHASHANK HEGDE	f	shashankv099@gmail.com	9513290527	1	ECE
94019391	SUMANTH RAJ S	t	papusraju@gmail.com	7338604280	1	ISE
94019478	SANJAY KASHYAP J	t	kikkerijagadish@yahoo.com	9483231442	1	ISE
94019458	SHRIHARSHA M	t	shriharsha05@gmail.com	9483904242	1	ISE
94019432	RAKSHIT DESHPANDE	t	rakshitdeshpande07@gmail.com	8147960663	1	ISE
94019374	AKASH V	t	akashvenu827@gmail.com	7338590405	1	CSE
94019371	PRANAB N	t	pranab2014@gmail.com	9448320822	2	MCA
94019425	ARVIND RAJU	f	arvindraju98@gmail.com	8123439875	1	ECE
94020077	GREESHMA BALLAL	f	greeshmaballal1998@gmail.com	8747807998	1	EEE
94020217	SAMHITA GURJAR	f	samhitagurjar90@gmail.com	9036937658	1	ECE
94020207	ANIRUDHA BEEDIKAR	f	anibeedi@gmail.com	7795983220	1	ISE
94020194	SRIRAM V	t	sriram4798v@gmail.com	8861694047	1	ISE
94020212	ANJANA G	f	anjanagrao111@gmail.com	9482986421	3	EEE
94020453	SHARATH C M	f	sharathcm007@gmail.com	9036844306	3	ECE
94020215	RACHANA G	f	rachanagalebhe3010@gmail.com	9738049627	3	CSE
94020237	SHASHANK SHAURYA	t	ssshauryaa@gmail.com	8235627455	1	CSE
94020154	NAVEENRAJ M 	f	naveenrajm97@gmail.com	9844682853	2	ISE
94020231	PRIYADARSHINI N 	f	priyadharshini1509@gmail.com	8147192328	3	CSE
94020265	RACHANA RAMESH	f	rachanar.286@gmail.com	9611914793	3	CSE
94020297	CHANDANA J U	f	chandanashashi523@gmail.com	8553168590	1	ISE
94020247	LIKITHA D T	f	likhithadt2011@gmail.com	9739827020	1	ISE
94019294	APOORVA M	f	apoorva5kashyap@gmail.com	9036850249	1	ISE
94019339	KRUPADEVI M G	f	krupadevimg@gmail.com	9980484464	1	ISE
94019378	KUMAR RISHAV	f	vashirramuk@gmail.com	7411556085	1	MECH
94019379	SHIVA SHANKAR IYER	f	shivmoto97@yahoo.co.in	9731317845	1	IP
94019380	SANJAY KUMAR N P	f	sanjayneshvi@gmail.com	7899839917	1	ISE
94019400	PRAJWAL R SHELLAGI	f	prajwalshellagi@gmail.com	9482777805	1	CSE
94019355	S SUSHMA	f	somalapuramsushma@gmail.com	9741646333	1	ISE
94020057	SHRIDHA A R	f	shridharohil98@gmail.com	9731070977	1	ISE
94020047	RAKSHA	f	nairyraksha@gmail.com	8296553063	1	ISE
94020021	VINEETHA	f	vineethashetty222@gmail.com	7348849668	1	ISE
94020064	SANJANASHREE S	f	shreesanjana30@gmail.com	9964998390	2	ISE
94020053	SHILPA G S	f	gsshilpa94@gmail.com	8951674416	2	ISE
94021101	KAVYA N KUMAR	f	kavnk6@gmail.com	9008106116	3	CSE
94020009	SUDHANVA BS	f	sudhanvabs97@gmail.com	8867364619	2	CSE
94020012	BRUNDA M BHARADWAJ	f	brundabharadwaj22@gmail.com	9731787159	1	ISE
94019479	POOJA UMESH	f	upooja06@gmail.com	8884247033	1	ISE
94019455	VIJAYALAKSHMI R A 	f	vijayalakshmirevur@gmail.com	9972934632	1	ISE
94019522	LIKHITHA SHREE K S	f	likku.anu@gmail.com	8050256096	1	ISE
94019682	SUDHANSHU SHARMA	f	sudhanshu.logichive@gmail.com	9008726274	2	ECE
94019727	B K ARPITA	f	anjanadevibk@gmail.com	9740263856	2	ECE
94020733	POOJITH U RAO	f	poojithumeshrao@yahoo.co.in	8867680767	2	ECE
94019694	ROHIT N SHREENIVAS	f	rohitshreenivas51097@gmail.com	9880896098	2	ECE
94019801	NEHA ZAFAR	f	shenayakhan2@gmail.com	8722761513	1	CSE
94019818	K AISHWARYA	f	aishwaryahebbar123@gmail.com	8130471533	1	CSE
94019824	JYOTHSNA J DESHPANDE	t	jyothsnajdeshpande@gmail.com	9480554263	1	CSE
94019829	SHUBHA R	f	shubharajashekar@gmail.com	7204529494	3	CSE
94019860	JASPREET SINGH	t	jaspreetsingh7197@gmail.com	8884602298	1	CSE
94019776	NAMRATA B	f	bnamrata187@gmail.com	9481819860	1	ISE
94019877	CHANDANA S	f	chandanamurthi1998@gmail.com	9620156658	1	ISE
94019054	MONISHA GOWDA	f	monishagowdasweety@gmail.com	7022918629	1	ISE
94019092	MANTHAN C S	f	manu.manthan1998@gmail.com	9964227154	1	ECE
94019159	ABHISHEK  KULKARNI 	f	abhishekgk1708@gmail.com	7795569617	1	ECE
94019148	NAREN R	t	narenrajendra@yahoo.com	9449833954	1	ECE
94019406	ANIRUDH R KOWSHIK	f	anirudhkowshik007@gmail.com	9620977540	1	CSE
94019409	DEEKSHITH A	t	deekshith27anand@gmail.com	9844489105	1	CSE
94019423	VATSALA SINHA	f	molly.vatsala23@gmail.com	9686407513	3	ECE
94019426	NARASIMHA MAHESH NADIG	t	narasimhamnadig@gmail.com	7349066331	1	CSE
94019415	NAKUL BALIGA	f	nakulbaliga98@gmail.com	9739004833	1	ISE
94019434	VARSHINI P BALLARI	f	varshinips7@gmail.com	9740799398	2	CSE
94019449	SYEDA FARHEEN FAIYAZ	f	syeda09farheen@gmail.com	9741020691	2	CSE
94019452	LIKHITHA R	f	likhitha.ramaprasad@gmail.com	9901019747	2	CSE
94082580	MEGHANA S	f	meghanasuresh28@gmail.com	9902151563	2	ECE
94082643	POOJA SR	t	poosr1998@gmail.com	9731587916	1	CSE
94082682	SUSHANT AGARWAL	t	sushantagrawal65@outlook.com	7337724527	1	ISE
94082669	KUSHAL S	f	kushalshankar1@gmail.com	9481321909	1	CSE
94082698	PRAJWAL T	f	tkushal216@gmail.com	8197322462	1	ISE
94082686	ASHUTOSH PRIYADARSHI	f	ashutoshpriyadarshiardor@gmail.com	8095743867	1	ISE
94082702	SHIVAPRASAD NJ	f	shivaprasadnj996@gmail.com	8151948435	1	CIVIL
94082687	AKANSHA AGRAWAL	f	aakankshaa2606@gmail.com	9686037220	2	CSE
94084486	MEDHA	f	medha28@yahoo.com	9482190697	3	CSE
93626452	MILAN MENEZES	t	milanmenzes@gmail.com	9481211903	2	CSE
94082704	N GOUTHAMI	f	gousmiley@gmail.com	9632210190	2	ECE
94082721	ATUL KUMAR SHUKLA	t	atulshukla928927@gmail.com	8431906831	1	CSE
94082722	APOORV SACHAN	t	sachanapoorv@rediffmail.com	9434988598	1	CSE
94082751	AKSHAY VISHWANATH	f	akshayvishwanath12@gmail.com	9886811602	1	ECE
94082809	NISHANT	f	nishantkodambal@gmail.com	9632507404	3	CSE
94082715	AKASH V DESHPANDE	f	akashdeshpande54@gmail.com	8880111810	1	ECE
94082799	ALIP MAJUMDAR	f	alip.majumder@gmail.com	9734769387	1	ECE
94082756	ABHINAV KUMAR	f	abhinav395.ak@gmail.com	9740352307	2	ISE
94082800	MRIDUL GANGA	f	mridul.kepler@gmail.com	9916385511	2	ISE
94082300	MOHAMMED SHAMAIL FARHAN	f	shamailfarhan@gmail.com	8105511483	2	ISE
94082332	KRISHNA M V	f	krishnamaganti97@gmail.com	7899223874	2	ISE
94082335	S VAISHNAVI	f	bhatvaishnavis@gmail.com	9008830991	2	ECE
94082367	RAMNATH RAO BEKAL	f	ramnathraobekal@gmail.com	9164047702	2	ECE
94082352	PRATHVI RAO	f	prathvirao0@gmail.com	8277633636	2	ECE
94082355	VINAY BALIGA B	f	vinaybaliga@yahoo.in	9449998959	2	ECE
94082726	ADITYA K PRAMOD	f	adityapramod1212@gmail.com	7795782376	2	CSE
94082711	MOHIT UDUPA	f	mohitudupa@gmail.com	8792866945	2	CSE
94082733	CHAITRA RADRASWAMI	f	chaitrarudraswami@gmail.com	9731371404	1	ECE
94084602	SANKALPA S	f	sankalpas610@gmail.com	7411648527	1	ECE
94082797	POORNIMA P M	f	poornimapm1999@gmail.com	8151858774	1	ECE
94082801	POOJA S	f	poojasnaik99@gmail.com	9740899438	1	ECE
94082840	VISHWAMBHARA SHETTY	f	vishwambharashetty123@gmail.com	9740475993	2	CIVIL
94082811	AKASH KUMAR	f	akashkkr.kmr@gmail.com	9739231053	2	ISE
94082826	AYUSH GUPTA	f	ayush.gupta348@gmail.com	8971867366	1	CSE
94082828	NIHAL SRIVASTAVA	f	mr.nihalnc@gmail.com	9031775439	1	ECE
94082792	SANGEETHA P	f	sangeethap087@gmail.com	9164821425	1	ECE
94082862	NISHANT KUMAR	f	nk7661927463@gmail.com	8892350185	2	ECE
93658993	ADITYA SINHA	t	adityasinha1997@rediffmail.com	7899023255	2	CSE
94090299	PRATYUSH MISHRA	t	pmmysuru@gmail.com	9599699632	1	ECE
94090301	NAMITA S ULLEGADI	f	nsullegaddi@gmail.com	8277016241	2	ECE
94210822	MANALI A PALLEGAR	f	manaliap123@gmail.com	8139942414	2	ECE
94216975	NIRANJAN BHAT	t	nj1498@gmail.com	9481982853	1	ECE
94217039	RANJITHA M N	f	ranjithamn136@gmail.com	9620250117	3	ECE
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: parent_bulletin_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY parent_bulletin
    ADD CONSTRAINT parent_bulletin_pkey PRIMARY KEY (id);


--
-- Name: parent_bulletin_theLine_key; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY parent_bulletin
    ADD CONSTRAINT "parent_bulletin_theLine_key" UNIQUE ("theLine");


--
-- Name: parent_bulletin_theLink_key; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY parent_bulletin
    ADD CONSTRAINT "parent_bulletin_theLink_key" UNIQUE ("theLink");


--
-- Name: parent_execom_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY parent_execom
    ADD CONSTRAINT parent_execom_pkey PRIMARY KEY (id);


--
-- Name: parent_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin7tcldss; Tablespace: 
--

ALTER TABLE ONLY parent_user
    ADD CONSTRAINT parent_user_pkey PRIMARY KEY (ieee_num);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: parent_bulletin_theLine_035b06ab_like; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX "parent_bulletin_theLine_035b06ab_like" ON parent_bulletin USING btree ("theLine" text_pattern_ops);


--
-- Name: parent_bulletin_theLink_7478fbe4_like; Type: INDEX; Schema: public; Owner: admin7tcldss; Tablespace: 
--

CREATE INDEX "parent_bulletin_theLink_7478fbe4_like" ON parent_bulletin USING btree ("theLink" varchar_pattern_ops);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin7tcldss
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

