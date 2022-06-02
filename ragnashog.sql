--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-0ubuntu0.20.04.1)

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
-- Name: PropertyBonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PropertyBonus" (
    id integer NOT NULL,
    "defPropertyId" integer NOT NULL,
    "atkPropertyId" integer NOT NULL,
    bonus integer NOT NULL
);


ALTER TABLE public."PropertyBonus" OWNER TO postgres;

--
-- Name: PropertyBonus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PropertyBonus_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PropertyBonus_id_seq" OWNER TO postgres;

--
-- Name: PropertyBonus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PropertyBonus_id_seq" OWNED BY public."PropertyBonus".id;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Name: borders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borders (
    id integer NOT NULL,
    "mapEntranceId" integer NOT NULL,
    "mapExitId" integer NOT NULL,
    location text
);


ALTER TABLE public.borders OWNER TO postgres;

--
-- Name: borders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.borders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.borders_id_seq OWNER TO postgres;

--
-- Name: borders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.borders_id_seq OWNED BY public.borders.id;


--
-- Name: itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itens (
    id integer NOT NULL,
    name text NOT NULL,
    category text NOT NULL,
    description text NOT NULL,
    weight integer NOT NULL,
    defense integer,
    slot integer,
    effects text,
    price integer NOT NULL,
    "isEquip" boolean NOT NULL,
    "propertyId" integer NOT NULL,
    level integer,
    "reqClass" text[],
    "reqLevel" integer,
    attack integer,
    "position" text,
    "cardImageUrl" text,
    "imageUrl" text NOT NULL,
    "spriteUrl" text NOT NULL
);


ALTER TABLE public.itens OWNER TO postgres;

--
-- Name: itensMonsters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."itensMonsters" (
    id integer NOT NULL,
    "itemId" integer NOT NULL,
    "monsterId" integer NOT NULL,
    "dropRate" double precision NOT NULL
);


ALTER TABLE public."itensMonsters" OWNER TO postgres;

--
-- Name: itensMonsters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."itensMonsters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."itensMonsters_id_seq" OWNER TO postgres;

--
-- Name: itensMonsters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."itensMonsters_id_seq" OWNED BY public."itensMonsters".id;


--
-- Name: itens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itens_id_seq OWNER TO postgres;

--
-- Name: itens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itens_id_seq OWNED BY public.itens.id;


--
-- Name: maps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maps (
    id integer NOT NULL,
    name text NOT NULL,
    "imageUrl" text NOT NULL,
    "regionId" integer NOT NULL,
    "isDungeon" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.maps OWNER TO postgres;

--
-- Name: mapsMonsters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."mapsMonsters" (
    id integer NOT NULL,
    "mapId" integer NOT NULL,
    "monsterId" integer NOT NULL,
    "spawnRate" integer NOT NULL,
    qty integer NOT NULL
);


ALTER TABLE public."mapsMonsters" OWNER TO postgres;

--
-- Name: mapsMonsters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."mapsMonsters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."mapsMonsters_id_seq" OWNER TO postgres;

--
-- Name: mapsMonsters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."mapsMonsters_id_seq" OWNED BY public."mapsMonsters".id;


--
-- Name: maps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.maps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maps_id_seq OWNER TO postgres;

--
-- Name: maps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.maps_id_seq OWNED BY public.maps.id;


--
-- Name: monsters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.monsters (
    id integer NOT NULL,
    name text NOT NULL,
    "spriteUrl" text NOT NULL,
    "statsId" integer NOT NULL
);


ALTER TABLE public.monsters OWNER TO postgres;

--
-- Name: monstersSkills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."monstersSkills" (
    id integer NOT NULL,
    "skillId" integer NOT NULL,
    "monsterId" integer NOT NULL,
    "castTime" integer NOT NULL
);


ALTER TABLE public."monstersSkills" OWNER TO postgres;

--
-- Name: monstersSkills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."monstersSkills_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."monstersSkills_id_seq" OWNER TO postgres;

--
-- Name: monstersSkills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."monstersSkills_id_seq" OWNED BY public."monstersSkills".id;


--
-- Name: monsters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.monsters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monsters_id_seq OWNER TO postgres;

--
-- Name: monsters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.monsters_id_seq OWNED BY public.monsters.id;


--
-- Name: properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.properties (
    id integer NOT NULL,
    name text NOT NULL,
    level integer NOT NULL
);


ALTER TABLE public.properties OWNER TO postgres;

--
-- Name: properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.properties_id_seq OWNER TO postgres;

--
-- Name: properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.properties_id_seq OWNED BY public.properties.id;


--
-- Name: races; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.races (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.races OWNER TO postgres;

--
-- Name: races_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.races_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.races_id_seq OWNER TO postgres;

--
-- Name: races_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.races_id_seq OWNED BY public.races.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: sizes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sizes (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.sizes OWNER TO postgres;

--
-- Name: sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sizes_id_seq OWNER TO postgres;

--
-- Name: sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sizes_id_seq OWNED BY public.sizes.id;


--
-- Name: skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skills (
    id integer NOT NULL,
    name text NOT NULL,
    "skillLevel" integer NOT NULL,
    "propertyId" integer NOT NULL
);


ALTER TABLE public.skills OWNER TO postgres;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skills_id_seq OWNER TO postgres;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats (
    id integer NOT NULL,
    "attackMin" integer NOT NULL,
    "attackMax" integer NOT NULL,
    "mAttackMin" integer NOT NULL,
    "mAttackMax" integer NOT NULL,
    "expBase" integer NOT NULL,
    "expJob" integer NOT NULL,
    level integer NOT NULL,
    hp integer NOT NULL,
    def integer NOT NULL,
    "mDef" integer NOT NULL,
    str integer NOT NULL,
    agi integer NOT NULL,
    vit integer NOT NULL,
    "int" integer NOT NULL,
    dex integer NOT NULL,
    luk integer NOT NULL,
    flee integer NOT NULL,
    hit integer NOT NULL,
    "isBoss" boolean NOT NULL,
    "isAgressive" boolean NOT NULL,
    "helpAllies" boolean NOT NULL,
    "castDetect" boolean NOT NULL,
    "isLooter" boolean NOT NULL,
    "spawnFixed" boolean NOT NULL,
    "changeTarget" boolean NOT NULL,
    "hideDetect" boolean NOT NULL,
    "propertyId" integer NOT NULL,
    "raceId" integer NOT NULL,
    "sizeId" integer NOT NULL,
    aspd double precision NOT NULL,
    range integer NOT NULL,
    "movSpeed" double precision NOT NULL,
    "isImmobile" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.stats OWNER TO postgres;

--
-- Name: stats_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_id_seq OWNER TO postgres;

--
-- Name: stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_id_seq OWNED BY public.stats.id;


--
-- Name: PropertyBonus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PropertyBonus" ALTER COLUMN id SET DEFAULT nextval('public."PropertyBonus_id_seq"'::regclass);


--
-- Name: borders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borders ALTER COLUMN id SET DEFAULT nextval('public.borders_id_seq'::regclass);


--
-- Name: itens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens ALTER COLUMN id SET DEFAULT nextval('public.itens_id_seq'::regclass);


--
-- Name: itensMonsters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itensMonsters" ALTER COLUMN id SET DEFAULT nextval('public."itensMonsters_id_seq"'::regclass);


--
-- Name: maps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maps ALTER COLUMN id SET DEFAULT nextval('public.maps_id_seq'::regclass);


--
-- Name: mapsMonsters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."mapsMonsters" ALTER COLUMN id SET DEFAULT nextval('public."mapsMonsters_id_seq"'::regclass);


--
-- Name: monsters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monsters ALTER COLUMN id SET DEFAULT nextval('public.monsters_id_seq'::regclass);


--
-- Name: monstersSkills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."monstersSkills" ALTER COLUMN id SET DEFAULT nextval('public."monstersSkills_id_seq"'::regclass);


--
-- Name: properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties ALTER COLUMN id SET DEFAULT nextval('public.properties_id_seq'::regclass);


--
-- Name: races id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.races ALTER COLUMN id SET DEFAULT nextval('public.races_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: sizes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sizes ALTER COLUMN id SET DEFAULT nextval('public.sizes_id_seq'::regclass);


--
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- Name: stats id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats ALTER COLUMN id SET DEFAULT nextval('public.stats_id_seq'::regclass);


--
-- Data for Name: PropertyBonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PropertyBonus" (id, "defPropertyId", "atkPropertyId", bonus) FROM stdin;
40120	39	1	0
40121	40	1	0
40127	6	5	0
40145	24	5	0
40171	10	9	0
40185	24	9	0
40215	14	13	0
40225	24	13	0
40258	17	17	0
40259	18	17	0
40260	19	17	0
40261	20	17	0
40265	24	17	0
40272	31	17	0
40302	21	21	0
40340	19	25	0
40346	25	25	0
40347	26	25	0
40348	27	25	0
40349	28	25	0
40350	29	25	0
40351	30	25	0
40352	31	25	0
40353	32	25	0
40380	19	29	0
40390	29	29	0
40425	24	33	0
40435	34	33	0
40444	3	37	0
40445	4	37	0
40465	24	37	0
40473	32	37	0
40082	1	1	100
40083	2	1	100
40084	3	1	100
40085	4	1	100
40086	5	1	100
40087	6	1	100
40088	7	1	100
40089	8	1	100
40090	9	1	100
40091	10	1	100
40092	11	1	100
40093	12	1	100
40094	13	1	100
40095	14	1	100
40096	15	1	100
40097	16	1	100
40098	17	1	100
40099	18	1	100
40100	19	1	100
40101	20	1	100
40102	21	1	100
40103	22	1	100
40104	23	1	100
40105	24	1	100
40106	25	1	100
40107	26	1	100
40108	27	1	100
40109	28	1	100
40110	29	1	100
40111	30	1	100
40112	31	1	100
40113	32	1	100
40114	33	1	100
40115	34	1	100
40116	35	1	100
40117	36	1	100
40118	37	1	70
40119	38	1	50
40122	1	5	100
40123	2	5	100
40124	3	5	100
40125	4	5	100
40126	5	5	25
40128	7	5	-25
40129	8	5	-50
40130	9	5	90
40131	10	5	80
40132	11	5	70
40133	12	5	60
40134	13	5	150
40135	14	5	175
40136	15	5	200
40137	16	5	200
40138	17	5	100
40139	18	5	100
40140	19	5	100
40141	20	5	75
40142	21	5	75
40143	22	5	50
40144	23	5	25
40146	25	5	100
40147	26	5	100
40148	27	5	125
40149	28	5	150
40150	29	5	100
40151	30	5	75
40152	31	5	50
40153	32	5	25
40154	33	5	100
40155	34	5	100
40156	35	5	100
40157	36	5	100
40158	37	5	100
40159	38	5	100
40160	39	5	100
40161	40	5	100
40162	1	9	100
40163	2	9	100
40164	3	9	100
40165	4	9	100
40166	5	9	175
40167	6	9	175
40168	7	9	200
40169	8	9	200
40170	9	9	25
40172	11	9	-25
40173	12	9	-50
40174	13	9	100
40175	14	9	100
40176	15	9	100
40177	16	9	100
40178	17	9	100
40179	18	9	100
40180	19	9	100
40181	20	9	75
40182	21	9	75
40183	22	9	50
40184	23	9	25
40186	25	9	100
40187	26	9	100
40188	27	9	100
40189	28	9	100
40190	29	9	100
40191	30	9	75
40192	31	9	50
40193	32	9	25
40194	33	9	90
40195	34	9	80
40196	35	9	70
40197	36	9	60
40198	37	9	100
40199	38	9	100
40200	39	9	100
40201	40	9	100
40202	1	13	100
40203	2	13	100
40204	3	13	100
40205	4	13	100
40206	5	13	90
40207	6	13	80
40208	7	13	70
40209	8	13	60
40210	9	13	100
40211	10	13	100
40212	11	13	100
40213	12	13	100
40214	13	13	25
40216	15	13	-25
40217	16	13	-50
40218	17	13	100
40219	18	13	100
40220	19	13	100
40221	20	13	75
40222	21	13	75
40223	22	13	50
40224	23	13	25
40226	25	13	125
40227	26	13	150
40228	27	13	175
40229	28	13	200
40230	29	13	100
40231	30	13	75
40232	31	13	50
40233	32	13	25
40234	33	13	150
40235	34	13	175
40236	35	13	200
40237	36	13	200
40238	37	13	100
40239	38	13	100
40240	39	13	100
40241	40	13	100
40242	1	17	100
40243	2	17	100
40244	3	17	100
40245	4	17	100
40246	5	17	100
40247	6	17	75
40248	7	17	50
40249	8	17	25
40250	9	17	125
40251	10	17	125
40252	11	17	100
40253	12	17	75
40254	13	17	125
40255	14	17	125
40256	15	17	100
40257	16	17	75
40262	21	17	75
40263	22	17	50
40264	23	17	25
40266	25	17	-25
40267	26	17	-50
40268	27	17	-75
40269	28	17	-100
40270	29	17	50
40271	30	17	25
40273	32	17	-25
40274	33	17	125
40275	34	17	125
40276	35	17	100
40277	36	17	75
40278	37	17	100
40279	38	17	75
40280	39	17	50
40281	40	17	25
40282	1	21	100
40283	2	21	100
40284	3	21	100
40285	4	21	100
40286	5	21	100
40287	6	21	100
40288	7	21	100
40289	8	21	75
40290	9	21	100
40291	10	21	100
40292	11	21	100
40293	12	21	75
40294	13	21	100
40295	14	21	100
40296	15	21	100
40297	16	21	75
40298	17	21	100
40299	18	21	100
40300	19	21	125
40301	20	21	125
40303	22	21	-25
40304	23	21	-50
40305	24	21	-100
40306	25	21	150
40307	26	21	175
40308	27	21	200
40309	28	21	200
40310	29	21	125
40311	30	21	150
40312	31	21	175
40313	32	21	200
40314	33	21	100
40315	34	21	100
40316	35	21	100
40317	36	21	75
40318	37	21	100
40319	38	21	100
40320	39	21	100
40321	40	21	100
40322	1	25	100
40323	2	25	100
40324	3	25	100
40325	4	25	100
40326	5	25	100
40327	6	25	75
40328	7	25	50
40329	8	25	25
40330	9	25	100
40331	10	25	75
40332	11	25	50
40333	12	25	25
40334	13	25	100
40335	14	25	75
40336	15	25	50
40337	16	25	25
40338	17	25	50
40339	18	25	25
40341	20	25	-25
40342	21	25	100
40343	22	25	125
40344	23	25	150
40345	24	25	175
40354	33	25	100
40355	34	25	75
40356	35	25	50
40357	36	25	25
40358	37	25	100
40359	38	25	100
40360	39	25	100
40361	40	25	100
40362	1	29	100
40363	2	29	100
40364	3	29	100
40365	4	29	100
40366	5	29	100
40367	6	29	100
40368	7	29	100
40369	8	29	75
40370	9	29	100
40371	10	29	100
40372	11	29	100
40373	12	29	75
40374	13	29	100
40375	14	29	100
40376	15	29	100
40377	16	29	75
40378	17	29	50
40379	18	29	25
40381	20	29	-25
40382	21	29	125
40383	22	29	150
40384	23	29	175
40385	24	29	200
40386	25	29	-25
40387	26	29	-50
40388	27	29	-75
40389	28	29	-100
40391	30	29	-25
40392	31	29	-50
40393	32	29	-100
40394	33	29	100
40395	34	29	100
40396	35	29	100
40397	36	29	75
40398	37	29	125
40399	38	29	150
40400	39	29	175
40401	40	29	200
40402	1	33	100
40403	2	33	100
40404	3	33	100
40405	4	33	100
40406	5	33	100
40407	6	33	100
40408	7	33	100
40409	8	33	100
40410	9	33	150
40411	10	33	175
40412	11	33	200
40413	12	33	200
40414	13	33	90
40415	14	33	80
40416	15	33	70
40417	16	33	60
40418	17	33	100
40419	18	33	100
40420	19	33	100
40421	20	33	75
40422	21	33	75
40423	22	33	50
40424	23	33	25
40426	25	33	100
40427	26	33	100
40428	27	33	100
40429	28	33	50
40430	29	33	100
40431	30	33	75
40432	31	33	50
40433	32	33	25
40434	33	33	25
40436	35	33	-25
40437	36	33	-50
40438	37	33	100
40439	38	33	100
40440	39	33	100
40441	40	33	100
40442	1	37	70
40443	2	37	50
40446	5	37	100
40447	6	37	75
40448	7	37	50
40449	8	37	25
40450	9	37	100
40451	10	37	75
40452	11	37	50
40453	12	37	25
40454	13	37	100
40455	14	37	75
40456	15	37	50
40457	16	37	25
40458	17	37	100
40459	18	37	75
40460	19	37	50
40461	20	37	25
40462	21	37	75
40463	22	37	50
40464	23	37	25
40466	25	37	100
40467	26	37	125
40468	27	37	150
40469	28	37	175
40470	29	37	75
40471	30	37	50
40472	31	37	25
40474	33	37	100
40475	34	37	75
40476	35	37	50
40477	36	37	25
40481	40	37	200
40478	37	37	125
40479	38	37	150
40480	39	37	175
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
87336b96-1003-41b5-8ef3-3c80e557cc11	5408fe12ef886a0089543938a21d1a6ff0d29c572b73ba0ccb253792015146d1	2022-05-11 23:22:13.228371-03	20220512022212_create_database	\N	\N	2022-05-11 23:22:13.090137-03	1
8abba650-a8cd-418a-a63c-b02942413df7	e925296c22704f14cfd0ada3110a247f288bcdb8dcc4a3a66672580a08f786e1	2022-05-11 23:40:52.503845-03	20220512024051_add_aspd_and_range_for_stats	\N	\N	2022-05-11 23:40:52.486487-03	1
8619ce1b-bdc9-4378-9269-24402f480bdb	f12c6d47f36e9a5a539708699ef26cddc1ccf0c2e5aa8f0dac4ff48fc3f6502e	2022-05-11 23:50:06.845753-03	20220512025006_add_mov_speed_at_stats_table	\N	\N	2022-05-11 23:50:06.8282-03	1
546af485-d93b-48ad-a5d4-b8c6cbecdd5f	cc9b41119f930245b8f62056d4590063ab63cf9b37a50c45f754aa4723cda16c	2022-05-11 23:58:15.298358-03	20220512025814_add_level_req_level_adn_req_class_at_item_table	\N	\N	2022-05-11 23:58:15.283257-03	1
50b9a789-d5e5-4ac6-9c03-7e7feace75bb	417cd163de5a2e29693511911d47bd9c68607287af283db4cc7a2f8b7ef23106	2022-05-11 23:59:07.812171-03	20220512025906_fix_typo	\N	\N	2022-05-11 23:59:07.791536-03	1
d5606f7d-4e83-4f2f-ab84-e231ffc959a1	7474d983d222797959b4cb669eb724be193fdcab2f07f249083bad5a8ef3f85d	2022-05-12 00:07:41.787592-03	20220512030740_	\N	\N	2022-05-12 00:07:41.161933-03	1
d58f5d75-9b5c-4f0e-b9f6-714c43855e06	36e960d683a7395f808510537a714d41f101ab9ff130feed510d7c01967ec7d8	2022-05-12 00:16:28.661072-03	20220512031627_add_images_for_itens_with_default_for_test	\N	\N	2022-05-12 00:16:28.639151-03	1
e98c9034-2aae-4a0e-8afe-9df0c72e1399	83338da77c4a10a64cdac6147197eb4e318ca137b11cea137fc477065e691a6b	2022-05-12 00:21:08.827002-03	20220512032107_removing_default_for_images	\N	\N	2022-05-12 00:21:08.813559-03	1
59b3eaf3-9dda-438e-aa01-be48a9654011	ca13a30d6adb2c8a4246502158fe4f2b25d1c76ae08b11b9673f4b9d2bd7f628	2022-05-12 00:24:26.599234-03	20220512032425_change_drop_rate_to_float	\N	\N	2022-05-12 00:24:26.572658-03	1
6387f343-27c3-4079-908d-ef60ce933e29	6b25f99778c320cc203b0549cc1f23f45bcba6efbc904b934c6a85d8bfb6ed53	2022-05-12 17:58:55.786468-03	20220512205854_add_is_immobile_for_stats	\N	\N	2022-05-12 17:58:55.767845-03	1
835ea23d-e2c3-4949-bfdf-4ab886fa7b04	06c9cb82dc8b14480881929f5ee1296e748e0fc70fb03ceeae07170c4b06c604	2022-05-17 21:54:22.329348-03	20220518005419_create_property_bonus_table	\N	\N	2022-05-17 21:54:21.216441-03	1
31f92a9e-c545-4e15-ba80-36c30fa3160a	6433b5b24ea00eb58275e3b4c5437cc1a296eb16b7b6004ec4462cb6140bfbc6	2022-05-20 04:50:50.460899-03	20220520075047_location_and_is_dungeon	\N	\N	2022-05-20 04:50:49.616804-03	1
\.


--
-- Data for Name: borders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borders (id, "mapEntranceId", "mapExitId", location) FROM stdin;
1	1	2	S
2	2	1	N
3	3	2	E
4	2	3	W
\.


--
-- Data for Name: itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itens (id, name, category, description, weight, defense, slot, effects, price, "isEquip", "propertyId", level, "reqClass", "reqLevel", attack, "position", "cardImageUrl", "imageUrl", "spriteUrl") FROM stdin;
17	Clava	Maça	Um porrete robusto e pesado, barato mas eficiente. Arraste esta arma para a janela de equipamento para utilizar.	70	\N	4	Indestrutível em batalha.	60	t	1	1	{Aprendizes,Super-Aprendizes,Espadachins,Noviços,Mercadores}	2	23	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1502	https://www.divine-pride.net/img/items/item/bRO/1502
18	Erva Verde	Consumível	Uma erva medicinal que medica veneno. Dê um clique duplo no item para usar.	3	\N	\N	Remove Envenenamento.	5	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/511	https://www.divine-pride.net/img/items/item/bRO/511
19	Clava	Maça	Um porrete robusto e pesado, barato mas eficiente. Arraste esta arma para a janela de equipamento para utilizar.	70	\N	3	Indestrutível em batalha.	60	t	1	1	{Aprendizes,Super-Aprendizes,Espadachins,Noviços,Mercadores}	2	23	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1502	https://www.divine-pride.net/img/items/item/bRO/1502
20	Carta Fabre	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	Máx. HP +100, VIT +1	10	f	1	\N	{}	\N	\N	Armamento	https://static.divine-pride.net/images/items/cards/4002.png	https://www.divine-pride.net/img/items/collection/bRO/4002	https://www.divine-pride.net/img/items/item/bRO/4002
21	Carta Pupa	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	Máx. HP +700	10	f	1	\N	{}	\N	\N	Armadura	https://static.divine-pride.net/images/items/cards/4003.png	https://www.divine-pride.net/img/items/collection/bRO/4003	https://www.divine-pride.net/img/items/item/bRO/4003
8	Carta Poring	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	SOR +2, Esquiva Perfeita +1	10	f	1	\N	{}	\N	\N	Armadura	https://static.divine-pride.net/images/items/cards/4001.png	https://www.divine-pride.net/img/items/collection/bRO/4001	https://www.divine-pride.net/img/items/item/bRO/4001
7	Maçã Verde	Consumível	Maçã azeda ainda não amadurecida.	5	\N	\N	Comida favorita do Poring.	500	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/619	https://www.divine-pride.net/img/items/item/bRO/619
6	Asa de Mosca	Consumível	\tPar de asas de mosca encantadas com magia.	5	\N	\N	Dê clique duplo neste item para ser transportar até um local aleatório no mapa.	125	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/601	https://www.divine-pride.net/img/items/item/bRO/601
5	Maçã	Consumível	Misterioso líquido pegajoso.	2	\N	\N	Recupera cerca de 16 a 22 de HP.	7	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/512	https://www.divine-pride.net/img/items/item/bRO/512
22	Minério de Ferro	Etc.	Minério ferroso. Depois de refinado, forma o Ferro	20	\N	\N	\N	18	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/1002	https://www.divine-pride.net/img/items/item/bRO/1002
3	Faca	Adaga	Uma simples faca. Arraste esta arma para sua janela de equipamento para usar.	40	\N	4	\N	25	t	1	1	{Aprendiz,Espadachim,Mago,Arqueiro,Mercador,Gatuno}	0	17	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1202	https://www.divine-pride.net/img/items/item/bRO/1202
23	Casca	Etc.	Casca dura arrancada de monstro.	1	\N	\N	\N	5	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/935	https://www.divine-pride.net/img/items/item/bRO/935
9	Trevo	Etc.	Planta com três folhas em formato de coração. Crescem flores brancas entre junho e julho.	1	\N	\N	\N	3	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/705	https://www.divine-pride.net/img/items/item/bRO/705
10	Pluma	Etc.	Plumas muito macias. Usadas para vestuários de alta qualidade.	1	\N	\N	\N	7	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/949	https://www.divine-pride.net/img/items/item/bRO/949
11	Nariz de Palhaço	Equipamento para a cabeça	Um nariz vermelho de palhaço. Arraste para a janela de equipamento para alterar sua aparência.	10	0	\N	\N	10	t	1	\N	{Todas}	\N	\N	Baixo	\N	https://www.divine-pride.net/img/items/collection/bRO/2262	https://www.divine-pride.net/img/items/item/bRO/2262
12	Espada	Espada	Espada simples, de uma mão só. Arraste esta arma para sua janela de equipamento para usar.	50	\N	4	\N	50	t	1	1	{Aprendiz,Espadachim,Mercador,Gatuno}	2	25	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1102	https://www.divine-pride.net/img/items/item/bRO/1102
13	Cenoura	Consumível	Vegetal de cor avermelhada. Tem um sabor doce e um aroma particular. Dê um clique duplo no item para usar.	2	\N	\N	Recupera cerca de 18 a 20 de HP.	7	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/515	https://www.divine-pride.net/img/items/item/bRO/515
14	Cenoura Arco-Íris	Consumível	Cenoura colorida, que exala um perfume agradável.	5	\N	\N	Comida favorita do Lunático.	1250	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/622	https://www.divine-pride.net/img/items/item/bRO/622
15	Carta Lunático	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	SOR +1, Crítico +1, Esquiva Perfeita +1	10	f	1	\N	{}	\N	\N	Armamento	https://static.divine-pride.net/images/items/cards/4006.png	https://www.divine-pride.net/img/items/collection/bRO/4006	https://www.divine-pride.net/img/items/item/bRO/4006
4	Muco Pegajoso	Etc.	Misterioso líquido pegajoso.	1	\N	\N	\N	26	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/938	https://www.divine-pride.net/img/items/item/bRO/938
16	Felpa	Etc.	Pelugem de pequenos monstros. Usado para linhas e tecidos.	1	\N	\N	\N	3	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/914	https://www.divine-pride.net/img/items/item/bRO/914
24	Vembrassa	Escudo	Escudo quadrado, pequeno mas efetivo para bloquear ataques inimigos. Arraste para a janela de equipamento para utilizar.	30	20	1	\N	250	t	1	\N	{Todas}	\N	\N	Mão Esquerda	\N	https://www.divine-pride.net/img/items/collection/bRO/2102	https://www.divine-pride.net/img/items/item/bRO/2102
25	Crisálida	Etc.	Pele deixada pela larva.	1	\N	\N	\N	3	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/915	https://www.divine-pride.net/img/items/item/bRO/915
26	Fracon	Etc.	Liga metálica necessária para fortalecer armas. Use isto para aprimorar armas de nível 1.	20	\N	\N	\N	75	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/1010	https://www.divine-pride.net/img/items/item/bRO/1010
1	Jellopy	Etc.	Pequena cristalização formada por alguns monstros.	1	\N	\N	\N	2	f	1	\N	\N	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/909	https://www.divine-pride.net/img/items/item/bRO/909
27	Couro de Animal	Etc.	Couro tirado de animal. Usado para produção de roupas ou cobertas.	1	\N	\N	\N	13	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/919	https://www.divine-pride.net/img/items/item/bRO/919
28	Machado	Machado	Machado comum. Lento, mas poderoso. Arraste esta arma para a janela de equipamento para usar.	80	\N	4	Indestrutível em batalha.	250	t	1	1	{Aprendiz,SuperAprendiz,Espadachim,Mercador}	3	38	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1302	https://www.divine-pride.net/img/items/item/bRO/1302
29	Carne	Consumível	Apetitoso naco de carne assada. Dê um clique duplo no item para usar.	15	\N	\N	Recupera cerca de 70 a 100 de HP.	25	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/517	https://www.divine-pride.net/img/items/item/bRO/517
30	Leite Doce	Consumível	Leite adocicado.	5	\N	\N	Comida favorita do Bebê Selvagem.	3500	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/627	https://www.divine-pride.net/img/items/item/bRO/627
31	Carta Bebê Selvagem	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	Adiciona a cada ataque 5% de chance de causar Atordoamento no inimigo.	10	f	1	\N	{}	\N	\N	Armamento	https://static.divine-pride.net/images/items/cards/4017.png	https://www.divine-pride.net/img/items/collection/bRO/4017	https://www.divine-pride.net/img/items/item/bRO/4017
32	Perna de Gafanhoto	Etc.	\tPerna traseira arrancada de rocker.	1	\N	\N	\N	13	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/940	https://www.divine-pride.net/img/items/item/bRO/940
33	Violão da Mãe Terra	Instrumento Musical	De acordo com a lenda, esse estranho violão pode ser usado para se comunicar com as pedras e até mesmo com a própria terra.	90	\N	\N	\N	10	t	33	3	{Bardo}	27	110	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1916	https://www.divine-pride.net/img/items/item/bRO/1916
34	Antenas Verdes	Topo	Antenas verdes de inseto.	10	3	\N	\N	10	t	1	\N	{Todas}	\N	\N	Equipamento para a cabeça	\N	https://www.divine-pride.net/img/items/collection/bRO/2298	https://www.divine-pride.net/img/items/item/bRO/2298
35	Azagaia	Lança	Lança geralmente usada para arremessar.	70	\N	4	\N	75	t	1	1	{Espadachim}	4	28	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1402	https://www.divine-pride.net/img/items/item/bRO/1402
36	Boneco de Rocker	Etc.	Boneco feito à semelhança de um rocker, o gafanhoto. Fazendeiros os odeiam pois eles fazem sons irritantes nos campos, mas é bastante popular devido à sua aparência boba e inofensiva.	10	\N	\N	\N	1500	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/752	https://www.divine-pride.net/img/items/item/bRO/752
37	Hinalle	Etc.	\tPlanta comum com ligeiras propriedades curativas. Embora não tenha aroma, as folhas podem dar uma sensação de grande prazer.	1	\N	\N	\N	187	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/703	https://www.divine-pride.net/img/items/item/bRO/703
38	Carta Rocker	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	DES +1, ATQ +5	10	f	1	\N	{}	\N	\N	Armadura	https://static.divine-pride.net/images/items/cards/4021.png	https://www.divine-pride.net/img/items/collection/bRO/4021	https://www.divine-pride.net/img/items/item/bRO/4021
39	Chapéu Romântico	Equipamento para a cabeça	Chapéu branco de abas, muito usado por jovens cavalheiros em ocasiões especiais.	40	5	\N	\N	7500	t	1	\N	{}	\N	\N	Topo	\N	https://www.divine-pride.net/img/items/collection/bRO/2247	https://www.divine-pride.net/img/items/item/bRO/2247
40	Esmeralda	Etc.	Jóia de cor verde brilhante, pedra símbolo do mês de maio.	10	\N	\N	\N	2250	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/721	https://www.divine-pride.net/img/items/item/bRO/721
41	Reencarnação do Anjo	Calçado	Sandálias divinas usadas pelo Anjo Guardião dos Super Aprendizes.	70	8	1	Máx. HP +100.	5000	t	1	\N	{Aprendiz}	54	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/2420	https://www.divine-pride.net/img/items/item/bRO/2420
42	Partículas de Luz	Etc.	Grãos feitos de pequenos cristais dourados que brilham como o sol.	1	\N	\N	\N	750	f	1	\N	{}	\N	\N	\N	\N	https://www.divine-pride.net/img/items/collection/bRO/7938	https://www.divine-pride.net/img/items/item/bRO/7938
43	Violão Brisa Gentil	Instrumento Musical	Um violão mágico que enche aquele que o toca com um grande desejo de viajar.	90	\N	\N	\N	10	t	9	3	{Bardo}	27	110	Mão Direita	\N	https://www.divine-pride.net/img/items/collection/bRO/1917	https://www.divine-pride.net/img/items/item/bRO/1917
44	Carta Vocal	Carta	Combine com um item para utilizar sua propriedade.	1	\N	\N	DEFM +3. Conjunto [Carta Rocker] Esquiva +18.	10	f	1	\N	{}	\N	\N	Capa	https://static.divine-pride.net/images/items/cards/4211.png	https://www.divine-pride.net/img/items/collection/bRO/4211	https://www.divine-pride.net/img/items/item/bRO/4211
\.


--
-- Data for Name: itensMonsters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."itensMonsters" (id, "itemId", "monsterId", "dropRate") FROM stdin;
1	1	1	70
2	3	1	1
3	4	1	4
4	5	1	10
5	6	1	5
6	7	1	0.2
7	8	1	0.2
8	9	2	70
9	10	2	30
10	11	2	0.04
11	12	2	1
12	6	2	5
13	13	2	30
14	14	2	0.2
15	15	2	0.2
16	16	3	70
17	10	3	10
18	17	3	0.8
19	6	3	5
20	18	3	30
21	9	3	10
22	19	3	2
23	20	3	0.2
24	26	4	6
25	25	4	70
26	4	4	7
27	24	4	0.2
28	23	4	10
29	6	4	5
30	22	4	5
31	21	4	0.01
32	27	5	45
33	28	5	0.5
34	29	5	2.5
35	6	5	5
36	10	5	4.25
37	26	5	0.4
38	30	5	0.2
39	31	5	0.01
40	32	6	80
41	33	6	0.05
42	34	6	0.05
43	35	6	0.8
44	6	6	5
45	36	6	0.1
46	37	6	0.1
47	38	6	0.01
48	39	7	0.25
49	32	7	40
50	40	7	5
51	36	7	7.5
52	41	7	5
53	42	7	2.5
54	43	7	0.05
55	44	7	0.01
\.


--
-- Data for Name: maps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.maps (id, name, "imageUrl", "regionId", "isDungeon") FROM stdin;
3	prt_fild07	https://www.divine-pride.net/img/map/original/prt_fild07	1	f
1	Prontera	https://www.divine-pride.net/img/map/original/prontera	1	f
2	prt_fild08	https://www.divine-pride.net/img/map/original/prt_fild08	1	f
\.


--
-- Data for Name: mapsMonsters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."mapsMonsters" (id, "mapId", "monsterId", "spawnRate", qty) FROM stdin;
1	2	1	0	140
2	2	2	0	40
3	2	3	0	40
4	2	4	0	66
5	3	5	0	50
6	3	6	0	150
7	3	7	30	1
\.


--
-- Data for Name: monsters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.monsters (id, name, "spriteUrl", "statsId") FROM stdin;
1	Poring	https://static.ragnaplace.com/db/npc/gif/1002.gif	1
2	Lunático	https://static.ragnaplace.com/db/npc/gif/1063.gif	2
3	Fabre	https://static.ragnaplace.com/db/npc/gif/1007.gif	3
4	Pupa	https://static.ragnaplace.com/db/npc/gif/1008.gif	4
5	Bebê Selvagem	https://static.ragnaplace.com/db/npc/gif/1167.gif	5
6	Rocker	https://static.ragnaplace.com/db/npc/gif/1052.gif	6
7	Vocal	https://static.ragnaplace.com/db/npc/gif/1088.gif	7
\.


--
-- Data for Name: monstersSkills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."monstersSkills" (id, "skillId", "monsterId", "castTime") FROM stdin;
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.properties (id, name, level) FROM stdin;
1	Neutro	1
2	Neutro	2
3	Neutro	3
4	Neutro	4
5	Água	1
6	Água	2
7	Água	3
8	Água	4
9	Vento	1
10	Vento	2
11	Vento	3
12	Vento	4
13	Fogo	1
14	Fogo	2
15	Fogo	3
16	Fogo	4
17	Veneno	1
18	Veneno	2
19	Veneno	3
20	Veneno	4
21	Sagrado	1
22	Sagrado	2
23	Sagrado	3
24	Sagrado	4
25	Maldito	1
26	Maldito	2
27	Maldito	3
28	Maldito	4
29	Sombrio	1
30	Sombrio	2
31	Sombrio	3
32	Sombrio	4
33	Terra	1
34	Terra	2
35	Terra	3
36	Terra	4
37	Fantasma	1
38	Fantasma	2
39	Fantasma	3
40	Fantasma	4
\.


--
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.races (id, name) FROM stdin;
1	Amorfo
2	Dragão
3	Humanoide
4	Planta
5	Bruto
6	Inseto
7	Peixe
8	Demônio
9	Morto-Vivo
10	Anjo
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regions (id, name) FROM stdin;
1	Prontera
2	Geffen
3	Morroc
4	Payon
5	Alberta
6	Izlude
7	Al De Baran
8	Comodo
9	Umbala
10	Lutie
\.


--
-- Data for Name: sizes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sizes (id, name) FROM stdin;
1	Pequeno
2	Médio
3	Grande
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skills (id, name, "skillLevel", "propertyId") FROM stdin;
\.


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats (id, "attackMin", "attackMax", "mAttackMin", "mAttackMax", "expBase", "expJob", level, hp, def, "mDef", str, agi, vit, "int", dex, luk, flee, hit, "isBoss", "isAgressive", "helpAllies", "castDetect", "isLooter", "spawnFixed", "changeTarget", "hideDetect", "propertyId", "raceId", "sizeId", aspd, range, "movSpeed", "isImmobile") FROM stdin;
1	13	16	1	2	150	40	1	60	2	5	6	1	1	0	6	5	177	202	f	f	f	f	t	f	f	f	5	4	2	1.49	1	2.5	f
2	21	26	3	4	150	50	3	55	18	0	10	3	3	0	8	5	181	206	f	f	f	f	f	f	f	f	3	5	1	2.19	1	5	f
3	27	32	13	14	158	65	6	72	24	0	12	5	5	5	12	5	188	211	f	f	f	f	f	f	f	f	33	6	1	1.49	1	2.5	f
4	15	16	9	10	157	55	4	66	24	2	11	1	3	3	8	6	182	205	f	f	f	f	f	f	f	f	33	6	1	1000	1	1	t
5	45	52	23	26	172	105	14	180	22	0	16	8	9	5	21	18	205	222	f	f	f	f	f	f	f	f	33	5	1	1.6	1	2.5	f
6	42	49	28	31	174	110	15	185	16	3	12	18	8	10	17	5	202	233	f	f	f	f	f	f	f	t	33	6	2	1.16	1	5	f
7	151	180	55	62	49	39	18	3317	77	266	77	26	26	30	53	40	241	244	f	t	f	t	f	f	t	t	33	6	2	1.54	1	5	f
\.


--
-- Name: PropertyBonus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PropertyBonus_id_seq"', 40481, true);


--
-- Name: borders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.borders_id_seq', 4, true);


--
-- Name: itensMonsters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."itensMonsters_id_seq"', 55, true);


--
-- Name: itens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itens_id_seq', 44, true);


--
-- Name: mapsMonsters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mapsMonsters_id_seq"', 7, true);


--
-- Name: maps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maps_id_seq', 3, true);


--
-- Name: monstersSkills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."monstersSkills_id_seq"', 1, false);


--
-- Name: monsters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.monsters_id_seq', 7, true);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.properties_id_seq', 40, true);


--
-- Name: races_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.races_id_seq', 10, true);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regions_id_seq', 10, true);


--
-- Name: sizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sizes_id_seq', 3, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skills_id_seq', 1, false);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_id_seq', 7, true);


--
-- Name: PropertyBonus PropertyBonus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PropertyBonus"
    ADD CONSTRAINT "PropertyBonus_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: borders borders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borders
    ADD CONSTRAINT borders_pkey PRIMARY KEY (id);


--
-- Name: itensMonsters itensMonsters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itensMonsters"
    ADD CONSTRAINT "itensMonsters_pkey" PRIMARY KEY (id);


--
-- Name: itens itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens
    ADD CONSTRAINT itens_pkey PRIMARY KEY (id);


--
-- Name: mapsMonsters mapsMonsters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."mapsMonsters"
    ADD CONSTRAINT "mapsMonsters_pkey" PRIMARY KEY (id);


--
-- Name: maps maps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maps
    ADD CONSTRAINT maps_pkey PRIMARY KEY (id);


--
-- Name: monstersSkills monstersSkills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."monstersSkills"
    ADD CONSTRAINT "monstersSkills_pkey" PRIMARY KEY (id);


--
-- Name: monsters monsters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_pkey PRIMARY KEY (id);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: races races_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_pkey PRIMARY KEY (id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: sizes sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sizes
    ADD CONSTRAINT sizes_pkey PRIMARY KEY (id);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: stats stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (id);


--
-- Name: maps_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX maps_name_key ON public.maps USING btree (name);


--
-- Name: races_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX races_name_key ON public.races USING btree (name);


--
-- Name: regions_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX regions_name_key ON public.regions USING btree (name);


--
-- Name: sizes_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sizes_name_key ON public.sizes USING btree (name);


--
-- Name: PropertyBonus PropertyBonus_atkPropertyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PropertyBonus"
    ADD CONSTRAINT "PropertyBonus_atkPropertyId_fkey" FOREIGN KEY ("atkPropertyId") REFERENCES public.properties(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: PropertyBonus PropertyBonus_defPropertyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PropertyBonus"
    ADD CONSTRAINT "PropertyBonus_defPropertyId_fkey" FOREIGN KEY ("defPropertyId") REFERENCES public.properties(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: borders borders_mapEntranceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borders
    ADD CONSTRAINT "borders_mapEntranceId_fkey" FOREIGN KEY ("mapEntranceId") REFERENCES public.maps(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: borders borders_mapExitId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borders
    ADD CONSTRAINT "borders_mapExitId_fkey" FOREIGN KEY ("mapExitId") REFERENCES public.maps(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: itensMonsters itensMonsters_itemId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itensMonsters"
    ADD CONSTRAINT "itensMonsters_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES public.itens(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: itensMonsters itensMonsters_monsterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itensMonsters"
    ADD CONSTRAINT "itensMonsters_monsterId_fkey" FOREIGN KEY ("monsterId") REFERENCES public.monsters(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: itens itens_propertyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens
    ADD CONSTRAINT "itens_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES public.properties(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: mapsMonsters mapsMonsters_mapId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."mapsMonsters"
    ADD CONSTRAINT "mapsMonsters_mapId_fkey" FOREIGN KEY ("mapId") REFERENCES public.maps(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: mapsMonsters mapsMonsters_monsterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."mapsMonsters"
    ADD CONSTRAINT "mapsMonsters_monsterId_fkey" FOREIGN KEY ("monsterId") REFERENCES public.monsters(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: maps maps_regionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maps
    ADD CONSTRAINT "maps_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES public.regions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: monstersSkills monstersSkills_monsterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."monstersSkills"
    ADD CONSTRAINT "monstersSkills_monsterId_fkey" FOREIGN KEY ("monsterId") REFERENCES public.monsters(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: monstersSkills monstersSkills_skillId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."monstersSkills"
    ADD CONSTRAINT "monstersSkills_skillId_fkey" FOREIGN KEY ("skillId") REFERENCES public.skills(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: monsters monsters_statsId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT "monsters_statsId_fkey" FOREIGN KEY ("statsId") REFERENCES public.stats(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: skills skills_propertyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT "skills_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES public.properties(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stats stats_propertyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT "stats_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES public.properties(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stats stats_raceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT "stats_raceId_fkey" FOREIGN KEY ("raceId") REFERENCES public.races(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stats stats_sizeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT "stats_sizeId_fkey" FOREIGN KEY ("sizeId") REFERENCES public.sizes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

