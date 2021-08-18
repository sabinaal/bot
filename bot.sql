--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: access_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.access_keys (
    user_id integer NOT NULL,
    access_key integer NOT NULL
);


ALTER TABLE public.access_keys OWNER TO postgres;

--
-- Name: access_keys_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.access_keys_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.access_keys_user_id_seq OWNER TO postgres;

--
-- Name: access_keys_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.access_keys_user_id_seq OWNED BY public.access_keys.user_id;


--
-- Name: api_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_keys (
    user_id integer NOT NULL,
    api_key integer
);


ALTER TABLE public.api_keys OWNER TO postgres;

--
-- Name: api_keys_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_keys_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_keys_user_id_seq OWNER TO postgres;

--
-- Name: api_keys_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_keys_user_id_seq OWNED BY public.api_keys.user_id;


--
-- Name: bot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bot (
    bot_id integer NOT NULL,
    bot_name character(255) NOT NULL,
    bot_token character varying(500) NOT NULL,
    date_create timestamp without time zone NOT NULL,
    platform integer NOT NULL,
    settings_bot integer NOT NULL,
    bot_path character varying(500) NOT NULL,
    date_update timestamp without time zone NOT NULL,
    status_id integer NOT NULL
);


ALTER TABLE public.bot OWNER TO postgres;

--
-- Name: bot_bot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bot_bot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bot_bot_id_seq OWNER TO postgres;

--
-- Name: bot_bot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bot_bot_id_seq OWNED BY public.bot.bot_id;


--
-- Name: messenger_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messenger_list (
    messenger_id integer NOT NULL,
    bot_name character(70) NOT NULL
);


ALTER TABLE public.messenger_list OWNER TO postgres;

--
-- Name: messenger_list_messenger_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messenger_list_messenger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messenger_list_messenger_id_seq OWNER TO postgres;

--
-- Name: messenger_list_messenger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messenger_list_messenger_id_seq OWNED BY public.messenger_list.messenger_id;


--
-- Name: pay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pay (
    plugin_id integer NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.pay OWNER TO postgres;

--
-- Name: plugins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plugins (
    plugin_id integer NOT NULL,
    pl_name character(255) NOT NULL,
    price integer NOT NULL,
    deskription character varying(1200) NOT NULL,
    pl_version double precision NOT NULL,
    compatible json NOT NULL
);


ALTER TABLE public.plugins OWNER TO postgres;

--
-- Name: plugins_plugin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plugins_plugin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plugins_plugin_id_seq OWNER TO postgres;

--
-- Name: plugins_plugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plugins_plugin_id_seq OWNED BY public.plugins.plugin_id;


--
-- Name: prices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prices (
    plugin_id integer NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.prices OWNER TO postgres;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.settings (
    bot_id integer NOT NULL,
    user_id integer NOT NULL,
    settings_id integer NOT NULL,
    param json NOT NULL
);


ALTER TABLE public.settings OWNER TO postgres;

--
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    status_id integer NOT NULL,
    item boolean NOT NULL
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- Name: statuses_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statuses_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_status_id_seq OWNER TO postgres;

--
-- Name: statuses_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statuses_status_id_seq OWNED BY public.statuses.status_id;


--
-- Name: transaction_chek; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction_chek (
    user_id integer NOT NULL,
    bot_id integer NOT NULL,
    price_end integer NOT NULL
);


ALTER TABLE public.transaction_chek OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name character(30),
    last_name character(30),
    user_date date NOT NULL,
    access_key integer NOT NULL,
    api_key integer NOT NULL,
    user_password character(255) NOT NULL,
    photo character(255) NOT NULL,
    email character(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: access_keys user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys ALTER COLUMN user_id SET DEFAULT nextval('public.access_keys_user_id_seq'::regclass);


--
-- Name: api_keys user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys ALTER COLUMN user_id SET DEFAULT nextval('public.api_keys_user_id_seq'::regclass);


--
-- Name: bot bot_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot ALTER COLUMN bot_id SET DEFAULT nextval('public.bot_bot_id_seq'::regclass);


--
-- Name: messenger_list messenger_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messenger_list ALTER COLUMN messenger_id SET DEFAULT nextval('public.messenger_list_messenger_id_seq'::regclass);


--
-- Name: plugins plugin_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins ALTER COLUMN plugin_id SET DEFAULT nextval('public.plugins_plugin_id_seq'::regclass);


--
-- Name: statuses status_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses ALTER COLUMN status_id SET DEFAULT nextval('public.statuses_status_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: access_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.access_keys (user_id, access_key) FROM stdin;
1	11
2	12
\.


--
-- Data for Name: api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.api_keys (user_id, api_key) FROM stdin;
1	22
2	33
\.


--
-- Data for Name: bot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bot (bot_id, bot_name, bot_token, date_create, platform, settings_bot, bot_path, date_update, status_id) FROM stdin;
1	Telegram                                                                                                                                                                                                                                                       	Botfather	2011-04-17 00:00:00	1	77	/var/www/publick/BEIS/bot/src/bot_name_1/	2017-03-17 00:00:00	6
\.


--
-- Data for Name: messenger_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messenger_list (messenger_id, bot_name) FROM stdin;
1	Telegram                                                              
2	Vk                                                                    
3	WhatsApp                                                              
\.


--
-- Data for Name: pay; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pay (plugin_id, price) FROM stdin;
\.


--
-- Data for Name: plugins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plugins (plugin_id, pl_name, price, deskription, pl_version, compatible) FROM stdin;
\.


--
-- Data for Name: prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prices (plugin_id, price) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.settings (bot_id, user_id, settings_id, param) FROM stdin;
\.


--
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statuses (status_id, item) FROM stdin;
\.


--
-- Data for Name: transaction_chek; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaction_chek (user_id, bot_id, price_end) FROM stdin;
1	1	1500
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, first_name, last_name, user_date, access_key, api_key, user_password, photo, email) FROM stdin;
1	Александр                     	Гудков                        	2011-04-17	11	22	qweasd                                                                                                                                                                                                                                                         	/var/www/publick/bot/access/img/photo.png                                                                                                                                                                                                                      	alek34@mail.ru                                                                                                                                                                                                                                                 
2	Анна                          	Герасимова                    	2013-03-15	12	33	opqwe                                                                                                                                                                                                                                                          	/var/www/public/bot/key/img/photo.png                                                                                                                                                                                                                          	ann8@mail.ru                                                                                                                                                                                                                                                   
\.


--
-- Name: access_keys_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.access_keys_user_id_seq', 1, false);


--
-- Name: api_keys_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_keys_user_id_seq', 3, true);


--
-- Name: bot_bot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bot_bot_id_seq', 1, false);


--
-- Name: messenger_list_messenger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messenger_list_messenger_id_seq', 1, false);


--
-- Name: plugins_plugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plugins_plugin_id_seq', 1, false);


--
-- Name: statuses_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statuses_status_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- Name: access_keys access_keys_access_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_access_key_key UNIQUE (access_key);


--
-- Name: access_keys access_keys_access_key_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_access_key_key1 UNIQUE (access_key);


--
-- Name: api_keys api_keys_api_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_api_key_key UNIQUE (api_key);


--
-- Name: api_keys api_keys_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_user_id_key UNIQUE (user_id);


--
-- Name: bot bot_bot_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot
    ADD CONSTRAINT bot_bot_name_key UNIQUE (bot_name);


--
-- Name: bot bot_bot_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot
    ADD CONSTRAINT bot_bot_path_key UNIQUE (bot_path);


--
-- Name: bot bot_bot_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot
    ADD CONSTRAINT bot_bot_token_key UNIQUE (bot_token);


--
-- Name: bot bot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot
    ADD CONSTRAINT bot_pkey PRIMARY KEY (bot_id);


--
-- Name: bot bot_status_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot
    ADD CONSTRAINT bot_status_id_key UNIQUE (status_id);


--
-- Name: messenger_list messenger_list_bot_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messenger_list
    ADD CONSTRAINT messenger_list_bot_name_key UNIQUE (bot_name);


--
-- Name: messenger_list messenger_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messenger_list
    ADD CONSTRAINT messenger_list_pkey PRIMARY KEY (messenger_id);


--
-- Name: pay pay_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pay
    ADD CONSTRAINT pay_pkey PRIMARY KEY (plugin_id);


--
-- Name: pay pay_price_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pay
    ADD CONSTRAINT pay_price_key UNIQUE (price);


--
-- Name: plugins plugins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins
    ADD CONSTRAINT plugins_pkey PRIMARY KEY (plugin_id);


--
-- Name: prices prices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_pkey PRIMARY KEY (plugin_id);


--
-- Name: settings settings_settings_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_settings_id_key UNIQUE (settings_id);


--
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (status_id);


--
-- Name: users users_access_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_access_key_key UNIQUE (access_key);


--
-- Name: users users_api_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_api_key_key UNIQUE (api_key);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_id_key UNIQUE (user_id);


--
-- Name: access_keys access_keys_access_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_access_key_fkey FOREIGN KEY (access_key) REFERENCES public.users(access_key);


--
-- Name: access_keys access_keys_access_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_access_key_fkey1 FOREIGN KEY (access_key) REFERENCES public.users(access_key);


--
-- Name: access_keys access_keys_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: access_keys access_keys_user_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_user_id_fkey1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: api_keys api_keys_api_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_api_key_fkey FOREIGN KEY (api_key) REFERENCES public.users(api_key);


--
-- Name: api_keys api_keys_api_key_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_api_key_fkey1 FOREIGN KEY (api_key) REFERENCES public.users(api_key);


--
-- Name: api_keys api_keys_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: api_keys api_keys_user_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_user_id_fkey1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: bot bot_bot_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bot
    ADD CONSTRAINT bot_bot_name_fkey FOREIGN KEY (bot_name) REFERENCES public.messenger_list(bot_name);


--
-- Name: plugins plugins_plugin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins
    ADD CONSTRAINT plugins_plugin_id_fkey FOREIGN KEY (plugin_id) REFERENCES public.pay(plugin_id);


--
-- Name: plugins plugins_plugin_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins
    ADD CONSTRAINT plugins_plugin_id_fkey1 FOREIGN KEY (plugin_id) REFERENCES public.prices(plugin_id);


--
-- Name: plugins plugins_plugin_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins
    ADD CONSTRAINT plugins_plugin_id_fkey2 FOREIGN KEY (plugin_id) REFERENCES public.prices(plugin_id);


--
-- Name: plugins plugins_price_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins
    ADD CONSTRAINT plugins_price_fkey FOREIGN KEY (price) REFERENCES public.pay(price);


--
-- Name: settings settings_bot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_bot_id_fkey FOREIGN KEY (bot_id) REFERENCES public.bot(bot_id);


--
-- Name: settings settings_bot_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_bot_id_fkey1 FOREIGN KEY (bot_id) REFERENCES public.bot(bot_id);


--
-- Name: settings settings_bot_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_bot_id_fkey2 FOREIGN KEY (bot_id) REFERENCES public.bot(bot_id);


--
-- Name: settings settings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: settings settings_user_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_user_id_fkey1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: statuses statuses_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.bot(status_id);


--
-- Name: statuses statuses_status_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_status_id_fkey1 FOREIGN KEY (status_id) REFERENCES public.bot(status_id);


--
-- Name: transaction_chek transaction_chek_bot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction_chek
    ADD CONSTRAINT transaction_chek_bot_id_fkey FOREIGN KEY (bot_id) REFERENCES public.bot(bot_id);


--
-- Name: transaction_chek transaction_chek_bot_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction_chek
    ADD CONSTRAINT transaction_chek_bot_id_fkey1 FOREIGN KEY (bot_id) REFERENCES public.bot(bot_id);


--
-- Name: transaction_chek transaction_chek_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction_chek
    ADD CONSTRAINT transaction_chek_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: transaction_chek transaction_chek_user_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction_chek
    ADD CONSTRAINT transaction_chek_user_id_fkey1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

