PGDMP         4                {            postgres    15.2    15.2                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3331                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16398    banks    TABLE     V   CREATE TABLE public.banks (
    name character varying(49),
    id bigint NOT NULL
);
    DROP TABLE public.banks;
       public         heap    postgres    false            ?            1259    16401    branches    TABLE     	  CREATE TABLE public.branches (
    ifsc character varying(11) NOT NULL,
    bank_id bigint,
    branch character varying(74),
    address character varying(195),
    city character varying(50),
    district character varying(50),
    state character varying(26)
);
    DROP TABLE public.branches;
       public         heap    postgres    false            ?            1259    16404    bank_branches    VIEW     +  CREATE VIEW public.bank_branches AS
 SELECT branches.ifsc,
    branches.bank_id,
    branches.branch,
    branches.address,
    branches.city,
    branches.district,
    branches.state,
    banks.name AS bank_name
   FROM (public.branches
     JOIN public.banks ON ((branches.bank_id = banks.id)));
     DROP VIEW public.bank_branches;
       public          postgres    false    216    216    216    216    216    215    215    216    216            ?          0    16398    banks 
   TABLE DATA           )   COPY public.banks (name, id) FROM stdin;
    public          postgres    false    215          ?          0    16401    branches 
   TABLE DATA           Y   COPY public.branches (ifsc, bank_id, branch, address, city, district, state) FROM stdin;
    public          postgres    false    216   ;       ?   #   x?qqUpr??V?wS??s?t?4?????? _?      ?      x?????? ? ?     