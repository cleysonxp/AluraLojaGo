PGDMP     6    8            
    z         
   alura_loja    15.0    15.0     ?           0    0    ENCODING    ENCODING         SET client_encoding = 'LATIN1';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16397 
   alura_loja    DATABASE     ?   CREATE DATABASE alura_loja WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE alura_loja;
                postgres    false            ?            1259    16399    produtos    TABLE     ?   CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character varying,
    descricao character varying,
    preco numeric,
    quantidade integer
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            ?            1259    16398    produtos_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    215            ?           0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    214            e           2604    16402    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?          0    16399    produtos 
   TABLE DATA           J   COPY public.produtos (id, nome, descricao, preco, quantidade) FROM stdin;
    public          postgres    false    215   ?
       ?           0    0    produtos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produtos_id_seq', 7, true);
          public          postgres    false    214            g           2606    16406    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    215            ?   4   x?3?t??K??-?,?WH??崴?4?2?t??{	?R????F\1z\\\ ?w?     