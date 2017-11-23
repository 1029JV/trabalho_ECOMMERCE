--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

-- Started on 2017-11-16 21:36:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 16585)
-- Name: historico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE historico (
    id_historico integer NOT NULL,
    valor integer,
    quantidade integer,
    datavenda timestamp without time zone,
    id_usuario integer,
    id_produto integer
);


ALTER TABLE historico OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16583)
-- Name: historico_id_historico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE historico_id_historico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE historico_id_historico_seq OWNER TO postgres;

--
-- TOC entry 2827 (class 0 OID 0)
-- Dependencies: 200
-- Name: historico_id_historico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE historico_id_historico_seq OWNED BY historico.id_historico;


--
-- TOC entry 199 (class 1259 OID 16501)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE produto (
    id_produto integer NOT NULL,
    nome character varying,
    tipodeproduto character varying,
    descricao character varying,
    precounitario double precision,
    quantidade integer,
    imagemdoproduto character varying,
    active boolean
);


ALTER TABLE produto OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16499)
-- Name: produto_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE produto_id_produto_seq OWNER TO postgres;

--
-- TOC entry 2828 (class 0 OID 0)
-- Dependencies: 198
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produto_id_produto_seq OWNED BY produto.id_produto;


--
-- TOC entry 197 (class 1259 OID 16483)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    nome character varying,
    rg character varying,
    cpf character varying,
    foto character varying,
    telefone character varying,
    email character varying,
    endereco character varying,
    login character varying,
    senha character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16481)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 2686 (class 2604 OID 16588)
-- Name: historico id_historico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historico ALTER COLUMN id_historico SET DEFAULT nextval('historico_id_historico_seq'::regclass);


--
-- TOC entry 2685 (class 2604 OID 16518)
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto ALTER COLUMN id_produto SET DEFAULT nextval('produto_id_produto_seq'::regclass);


--
-- TOC entry 2684 (class 2604 OID 16519)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 2819 (class 0 OID 16585)
-- Dependencies: 201
-- Data for Name: historico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY historico (id_historico, valor, quantidade, datavenda, id_usuario, id_produto) FROM stdin;
\.


--
-- TOC entry 2817 (class 0 OID 16501)
-- Dependencies: 199
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produto (id_produto, nome, tipodeproduto, descricao, precounitario, quantidade, imagemdoproduto, active) FROM stdin;
16	Brigadeiro	Doce	Doce de chocolate coberto por uma fina camada de açúçar.	0.29999999999999999	100	trufa.png	t
15	Pastel de Forno	Salgado	Salgado de massa fina, sabor de queijo.	0.69999999999999996	400	risole.png	t
13	Brigadeiro preto	Doce	Doce de chocolate coberto por uma fina camada de açucar.	0.29999999999999999	100	coxinha.png	t
14	ççççççççççççç	Doce	Doce de chocolate coberto por uma fina camada de açúcar.	0.29999999999999999	100	coxinha1.png	t
12	Brigadeiro	Doce	Doce de chocolate coberto por uma fina camada de açúcar.	0.29999999999999999	100	brigadeiro.png	f
\.


--
-- TOC entry 2815 (class 0 OID 16483)
-- Dependencies: 197
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id_usuario, nome, rg, cpf, foto, telefone, email, endereco, login, senha) FROM stdin;
10	JoÃ£o Vitor do Nascimento Oliveira	1214141	11255	UC.jpg	000000000	joao_vitor1029@outlook.com	Rua A 52 Quadra A 53 NÃºmero 64 Benedito Bentes 1	1029jv	1029jv
11	OTAVIO NETO	12345678	1234156488	coxinha1.png	15454854854	otavio@gmail.com	Rua A 52 Quadra A 53 NÃºmero 64 Benedito Bentes 1	Teste	123
12	JoÃ£o Vitor do Nascimento Oliveira	683612	000000000002	coxinha.png	Teste	otavio1@gmail.com	Rua A 52 Quadra A 53 NÃºmero 64 Benedito Bentes cancÃ£o 	1234	1234
13	JoÃ£o Vitor do Nascimento Oliveira2	00000002	1234567892	coxinha1.png	123456	Test2e@teste.com	Rua A 52 Quadra A 53 NÃºmero 64 Benedito Bentes cancÃ£o 	abc	123
14	Felix Melo	545454	11121314151	pageErro.png	82999999999	aaa@aaa.com	aaa.aaa	felixmeloo	felixmeloo
15	otavio abilio pimentel neto	12345665	10453793685	canudinho.png	0000000001	cotav2@gmail.com	Rua A 52 Quadra A 53 Numero 64 Benedito Bentes 1	otavioapn1	123456
9	João Vitor do Nascimento Oliveira	0000000	00000000000	KlÃ©cia Katiara Nascimento Moura.doc	000000000	Teste@teste.com	Rua A 52 Quadra A 53 NÃÂÃÂºmero 64 Benedito Bentes 1	joao123	joao123
\.


--
-- TOC entry 2830 (class 0 OID 0)
-- Dependencies: 200
-- Name: historico_id_historico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('historico_id_historico_seq', 1, false);


--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 198
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produto_id_produto_seq', 16, true);


--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 15, true);


--
-- TOC entry 2690 (class 2606 OID 16580)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


--
-- TOC entry 2688 (class 2606 OID 16582)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2691 (class 2606 OID 16589)
-- Name: historico historico_id_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historico
    ADD CONSTRAINT historico_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES produto(id_produto);


--
-- TOC entry 2692 (class 2606 OID 16594)
-- Name: historico historico_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historico
    ADD CONSTRAINT historico_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);


-- Completed on 2017-11-16 21:36:45

--
-- PostgreSQL database dump complete
--

