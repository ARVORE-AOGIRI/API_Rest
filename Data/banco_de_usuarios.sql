PGDMP                     
    |            banco_de_usuarios    15.8    15.8     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16631    banco_de_usuarios    DATABASE     �   CREATE DATABASE banco_de_usuarios WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE banco_de_usuarios;
                postgres    false            �            1259    16633    usuario    TABLE       CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome_completo character varying(200) NOT NULL,
    username character varying(100),
    email character varying(50) NOT NULL,
    senha text NOT NULL,
    telefone character varying(15) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16632    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    215                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    214            e           2604    16636 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    16633    usuario 
   TABLE DATA           V   COPY public.usuario (id, nome_completo, username, email, senha, telefone) FROM stdin;
    public          postgres    false    215   �                  0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 7, true);
          public          postgres    false    214            g           2606    16644    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    215            i           2606    16640    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215            k           2606    16642    usuario usuario_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_username_key;
       public            postgres    false    215            �   �   x�UNK
� ]Ϝ"'c��@��'�fPi�1z���]��+�J�} w���oġ����Oj6!�1�'=��[L�e�tp��Q�8���*٦��m>�W�!�Ej�֨�pd�S���sZ�� �~]W��r��G�c�<�     