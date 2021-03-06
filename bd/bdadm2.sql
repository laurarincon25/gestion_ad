PGDMP                           w         
   admgestion    10.5    10.5 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            !           1262    29354 
   admgestion    DATABASE     �   CREATE DATABASE admgestion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE admgestion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            "           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            #           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    31363    carrera_documento    TABLE       CREATE TABLE public.carrera_documento (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    documento_id integer NOT NULL,
    precio double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.carrera_documento;
       public         postgres    false    3            �            1259    31361    carrera_documento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.carrera_documento_id_seq;
       public       postgres    false    3    234            $           0    0    carrera_documento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.carrera_documento_id_seq OWNED BY public.carrera_documento.id;
            public       postgres    false    233            �            1259    31347    carreras    TABLE     �   CREATE TABLE public.carreras (
    id integer NOT NULL,
    carrera character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.carreras;
       public         postgres    false    3            �            1259    31345    carreras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carreras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.carreras_id_seq;
       public       postgres    false    230    3            %           0    0    carreras_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.carreras_id_seq OWNED BY public.carreras.id;
            public       postgres    false    229            �            1259    31138 	   data_rows    TABLE       CREATE TABLE public.data_rows (
    id integer NOT NULL,
    data_type_id integer NOT NULL,
    field character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    required boolean DEFAULT false NOT NULL,
    browse boolean DEFAULT true NOT NULL,
    read boolean DEFAULT true NOT NULL,
    edit boolean DEFAULT true NOT NULL,
    add boolean DEFAULT true NOT NULL,
    delete boolean DEFAULT true NOT NULL,
    details text,
    "order" integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.data_rows;
       public         postgres    false    3            �            1259    31136    data_rows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.data_rows_id_seq;
       public       postgres    false    3    204            &           0    0    data_rows_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.data_rows_id_seq OWNED BY public.data_rows.id;
            public       postgres    false    203            �            1259    31122 
   data_types    TABLE     �  CREATE TABLE public.data_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    display_name_singular character varying(255) NOT NULL,
    display_name_plural character varying(255) NOT NULL,
    icon character varying(255),
    model_name character varying(255),
    description character varying(255),
    generate_permissions boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    server_side smallint DEFAULT '0'::smallint NOT NULL,
    controller character varying(255),
    policy_name character varying(255),
    details text
);
    DROP TABLE public.data_types;
       public         postgres    false    3            �            1259    31120    data_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_types_id_seq;
       public       postgres    false    3    202            '           0    0    data_types_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_types_id_seq OWNED BY public.data_types.id;
            public       postgres    false    201            �            1259    31339 
   documentos    TABLE     �   CREATE TABLE public.documentos (
    id integer NOT NULL,
    "Nombre" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.documentos;
       public         postgres    false    3            �            1259    31337    documentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.documentos_id_seq;
       public       postgres    false    228    3            (           0    0    documentos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.documentos_id_seq OWNED BY public.documentos.id;
            public       postgres    false    227            �            1259    31404    item_servicios    TABLE     �   CREATE TABLE public.item_servicios (
    id integer NOT NULL,
    servicio_id integer,
    nombre character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.item_servicios;
       public         postgres    false    3            �            1259    31402    item_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.item_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.item_servicios_id_seq;
       public       postgres    false    242    3            )           0    0    item_servicios_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.item_servicios_id_seq OWNED BY public.item_servicios.id;
            public       postgres    false    241            �            1259    31170 
   menu_items    TABLE       CREATE TABLE public.menu_items (
    id integer NOT NULL,
    menu_id integer,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    target character varying(255) DEFAULT '_self'::character varying NOT NULL,
    icon_class character varying(255),
    color character varying(255),
    parent_id integer,
    "order" integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    route character varying(255),
    parameters text
);
    DROP TABLE public.menu_items;
       public         postgres    false    3            �            1259    31168    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public       postgres    false    208    3            *           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
            public       postgres    false    207            �            1259    31160    menus    TABLE     �   CREATE TABLE public.menus (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.menus;
       public         postgres    false    3            �            1259    31158    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public       postgres    false    3    206            +           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
            public       postgres    false    205            �            1259    31085 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    31083    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197    3            ,           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    31382    pagos    TABLE     2  CREATE TABLE public.pagos (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    "uuidSoli" character varying(255) NOT NULL,
    pago character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pagos;
       public         postgres    false    3            �            1259    31380    pagos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pagos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pagos_id_seq;
       public       postgres    false    238    3            -           0    0    pagos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pagos_id_seq OWNED BY public.pagos.id;
            public       postgres    false    237            �            1259    31104    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    31317    perfils    TABLE     v  CREATE TABLE public.perfils (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    biography character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.perfils;
       public         postgres    false    3            �            1259    31315    perfils_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perfils_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.perfils_id_seq;
       public       postgres    false    3    224            .           0    0    perfils_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.perfils_id_seq OWNED BY public.perfils.id;
            public       postgres    false    223            �            1259    31224    permission_role    TABLE     j   CREATE TABLE public.permission_role (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         postgres    false    3            �            1259    31214    permissions    TABLE     �   CREATE TABLE public.permissions (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    table_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            �            1259    31212    permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    3    214            /           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    213            �            1259    31296    post_tag    TABLE     �   CREATE TABLE public.post_tag (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.post_tag;
       public         postgres    false    3            �            1259    31294    post_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.post_tag_id_seq;
       public       postgres    false    3    220            0           0    0    post_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.post_tag_id_seq OWNED BY public.post_tag.id;
            public       postgres    false    219            �            1259    31328 	   programas    TABLE       CREATE TABLE public.programas (
    id integer NOT NULL,
    carrera character varying(255) NOT NULL,
    pensum character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    nrotelefono character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.programas;
       public         postgres    false    3            �            1259    31326    programas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.programas_id_seq;
       public       postgres    false    3    226            1           0    0    programas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.programas_id_seq OWNED BY public.programas.id;
            public       postgres    false    225            �            1259    31187    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            �            1259    31185    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    210    3            2           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    209            �            1259    31355 	   servicios    TABLE     �   CREATE TABLE public.servicios (
    id integer NOT NULL,
    servicio character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.servicios;
       public         postgres    false    3            �            1259    31353    servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.servicios_id_seq;
       public       postgres    false    232    3            3           0    0    servicios_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.servicios_id_seq OWNED BY public.servicios.id;
            public       postgres    false    231            �            1259    31200    settings    TABLE     -  CREATE TABLE public.settings (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    value text,
    details text,
    type character varying(255) NOT NULL,
    "order" integer DEFAULT 1 NOT NULL,
    "group" character varying(255)
);
    DROP TABLE public.settings;
       public         postgres    false    3            �            1259    31198    settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.settings_id_seq;
       public       postgres    false    212    3            4           0    0    settings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;
            public       postgres    false    211            �            1259    31393    solicitud_servicios    TABLE     .  CREATE TABLE public.solicitud_servicios (
    id integer NOT NULL,
    user_id integer NOT NULL,
    servicios json NOT NULL,
    observaciones character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.solicitud_servicios;
       public         postgres    false    3            �            1259    31391    solicitud_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.solicitud_servicios_id_seq;
       public       postgres    false    3    240            5           0    0    solicitud_servicios_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.solicitud_servicios_id_seq OWNED BY public.solicitud_servicios.id;
            public       postgres    false    239            �            1259    31371 
   solicituds    TABLE       CREATE TABLE public.solicituds (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    users_id integer NOT NULL,
    documentos json NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.solicituds;
       public         postgres    false    3            �            1259    31369    solicituds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicituds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.solicituds_id_seq;
       public       postgres    false    3    236            6           0    0    solicituds_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.solicituds_id_seq OWNED BY public.solicituds.id;
            public       postgres    false    235            �            1259    31304    sugerencias    TABLE     �   CREATE TABLE public.sugerencias (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sugerencias;
       public         postgres    false    3            �            1259    31302    sugerencias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sugerencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sugerencias_id_seq;
       public       postgres    false    222    3            7           0    0    sugerencias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sugerencias_id_seq OWNED BY public.sugerencias.id;
            public       postgres    false    221            �            1259    31253    translations    TABLE     d  CREATE TABLE public.translations (
    id integer NOT NULL,
    table_name character varying(255) NOT NULL,
    column_name character varying(255) NOT NULL,
    foreign_key integer NOT NULL,
    locale character varying(255) NOT NULL,
    value text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.translations;
       public         postgres    false    3            �            1259    31251    translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.translations_id_seq;
       public       postgres    false    217    3            8           0    0    translations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;
            public       postgres    false    216            �            1259    31277 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         postgres    false    3            �            1259    31093    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    avatar character varying(255) DEFAULT 'users/default.png'::character varying,
    role_id integer,
    settings text
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    31091    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    3    199            9           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198            #           2604    31366    carrera_documento id    DEFAULT     |   ALTER TABLE ONLY public.carrera_documento ALTER COLUMN id SET DEFAULT nextval('public.carrera_documento_id_seq'::regclass);
 C   ALTER TABLE public.carrera_documento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    234    234            !           2604    31350    carreras id    DEFAULT     j   ALTER TABLE ONLY public.carreras ALTER COLUMN id SET DEFAULT nextval('public.carreras_id_seq'::regclass);
 :   ALTER TABLE public.carreras ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    229    230                       2604    31141    data_rows id    DEFAULT     l   ALTER TABLE ONLY public.data_rows ALTER COLUMN id SET DEFAULT nextval('public.data_rows_id_seq'::regclass);
 ;   ALTER TABLE public.data_rows ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            	           2604    31125    data_types id    DEFAULT     n   ALTER TABLE ONLY public.data_types ALTER COLUMN id SET DEFAULT nextval('public.data_types_id_seq'::regclass);
 <   ALTER TABLE public.data_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202                        2604    31342    documentos id    DEFAULT     n   ALTER TABLE ONLY public.documentos ALTER COLUMN id SET DEFAULT nextval('public.documentos_id_seq'::regclass);
 <   ALTER TABLE public.documentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            '           2604    31407    item_servicios id    DEFAULT     v   ALTER TABLE ONLY public.item_servicios ALTER COLUMN id SET DEFAULT nextval('public.item_servicios_id_seq'::regclass);
 @   ALTER TABLE public.item_servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241    242                       2604    31173    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    208    208                       2604    31163    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206                       2604    31088    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            %           2604    31385    pagos id    DEFAULT     d   ALTER TABLE ONLY public.pagos ALTER COLUMN id SET DEFAULT nextval('public.pagos_id_seq'::regclass);
 7   ALTER TABLE public.pagos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238                       2604    31320 
   perfils id    DEFAULT     h   ALTER TABLE ONLY public.perfils ALTER COLUMN id SET DEFAULT nextval('public.perfils_id_seq'::regclass);
 9   ALTER TABLE public.perfils ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224                       2604    31217    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214                       2604    31299    post_tag id    DEFAULT     j   ALTER TABLE ONLY public.post_tag ALTER COLUMN id SET DEFAULT nextval('public.post_tag_id_seq'::regclass);
 :   ALTER TABLE public.post_tag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220                       2604    31331    programas id    DEFAULT     l   ALTER TABLE ONLY public.programas ALTER COLUMN id SET DEFAULT nextval('public.programas_id_seq'::regclass);
 ;   ALTER TABLE public.programas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226                       2604    31190    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            "           2604    31358    servicios id    DEFAULT     l   ALTER TABLE ONLY public.servicios ALTER COLUMN id SET DEFAULT nextval('public.servicios_id_seq'::regclass);
 ;   ALTER TABLE public.servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231    232                       2604    31203    settings id    DEFAULT     j   ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);
 :   ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212            &           2604    31396    solicitud_servicios id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_servicios ALTER COLUMN id SET DEFAULT nextval('public.solicitud_servicios_id_seq'::regclass);
 E   ALTER TABLE public.solicitud_servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    240    240            $           2604    31374    solicituds id    DEFAULT     n   ALTER TABLE ONLY public.solicituds ALTER COLUMN id SET DEFAULT nextval('public.solicituds_id_seq'::regclass);
 <   ALTER TABLE public.solicituds ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    236    236                       2604    31307    sugerencias id    DEFAULT     p   ALTER TABLE ONLY public.sugerencias ALTER COLUMN id SET DEFAULT nextval('public.sugerencias_id_seq'::regclass);
 =   ALTER TABLE public.sugerencias ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222                       2604    31256    translations id    DEFAULT     r   ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);
 >   ALTER TABLE public.translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217                       2604    31096    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199                      0    31363    carrera_documento 
   TABLE DATA               i   COPY public.carrera_documento (id, carrera_id, documento_id, precio, created_at, updated_at) FROM stdin;
    public       postgres    false    234   ��                 0    31347    carreras 
   TABLE DATA               G   COPY public.carreras (id, carrera, created_at, updated_at) FROM stdin;
    public       postgres    false    230   ��       �          0    31138 	   data_rows 
   TABLE DATA               �   COPY public.data_rows (id, data_type_id, field, type, display_name, required, browse, read, edit, add, delete, details, "order") FROM stdin;
    public       postgres    false    204   i�       �          0    31122 
   data_types 
   TABLE DATA               �   COPY public.data_types (id, name, slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) FROM stdin;
    public       postgres    false    202   4�                 0    31339 
   documentos 
   TABLE DATA               J   COPY public.documentos (id, "Nombre", created_at, updated_at) FROM stdin;
    public       postgres    false    228   d�                 0    31404    item_servicios 
   TABLE DATA               Y   COPY public.item_servicios (id, servicio_id, nombre, created_at, updated_at) FROM stdin;
    public       postgres    false    242   �       �          0    31170 
   menu_items 
   TABLE DATA               �   COPY public.menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, parameters) FROM stdin;
    public       postgres    false    208   �       �          0    31160    menus 
   TABLE DATA               A   COPY public.menus (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    206   ��       �          0    31085 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   ��                 0    31382    pagos 
   TABLE DATA               Z   COPY public.pagos (id, uuid, "uuidSoli", pago, email, created_at, updated_at) FROM stdin;
    public       postgres    false    238   :�       �          0    31104    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    200   {�       	          0    31317    perfils 
   TABLE DATA               h   COPY public.perfils (id, name, lastname, address, phone, biography, created_at, updated_at) FROM stdin;
    public       postgres    false    224   ��                  0    31224    permission_role 
   TABLE DATA               A   COPY public.permission_role (permission_id, role_id) FROM stdin;
    public       postgres    false    215   ��       �          0    31214    permissions 
   TABLE DATA               R   COPY public.permissions (id, key, table_name, created_at, updated_at) FROM stdin;
    public       postgres    false    214   _�                 0    31296    post_tag 
   TABLE DATA               >   COPY public.post_tag (id, created_at, updated_at) FROM stdin;
    public       postgres    false    220   ��                 0    31328 	   programas 
   TABLE DATA               q   COPY public.programas (id, carrera, pensum, descripcion, nrotelefono, email, created_at, updated_at) FROM stdin;
    public       postgres    false    226   ��       �          0    31187    roles 
   TABLE DATA               O   COPY public.roles (id, name, display_name, created_at, updated_at) FROM stdin;
    public       postgres    false    210   l�                 0    31355 	   servicios 
   TABLE DATA               Q   COPY public.servicios (id, servicio, status, created_at, updated_at) FROM stdin;
    public       postgres    false    232   ��       �          0    31200    settings 
   TABLE DATA               a   COPY public.settings (id, key, display_name, value, details, type, "order", "group") FROM stdin;
    public       postgres    false    212   {�                 0    31393    solicitud_servicios 
   TABLE DATA               t   COPY public.solicitud_servicios (id, user_id, servicios, observaciones, status, created_at, updated_at) FROM stdin;
    public       postgres    false    240   ��                 0    31371 
   solicituds 
   TABLE DATA               d   COPY public.solicituds (id, uuid, users_id, documentos, status, created_at, updated_at) FROM stdin;
    public       postgres    false    236   q�                 0    31304    sugerencias 
   TABLE DATA               W   COPY public.sugerencias (id, descripcion, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    222   ��                 0    31253    translations 
   TABLE DATA               w   COPY public.translations (id, table_name, column_name, foreign_key, locale, value, created_at, updated_at) FROM stdin;
    public       postgres    false    217   4�                 0    31277 
   user_roles 
   TABLE DATA               6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public       postgres    false    218   Q�       �          0    31093    users 
   TABLE DATA               }   COPY public.users (id, name, email, password, remember_token, created_at, updated_at, avatar, role_id, settings) FROM stdin;
    public       postgres    false    199   ~�       :           0    0    carrera_documento_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.carrera_documento_id_seq', 30, true);
            public       postgres    false    233            ;           0    0    carreras_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.carreras_id_seq', 6, true);
            public       postgres    false    229            <           0    0    data_rows_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_rows_id_seq', 38, true);
            public       postgres    false    203            =           0    0    data_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_types_id_seq', 7, true);
            public       postgres    false    201            >           0    0    documentos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.documentos_id_seq', 5, true);
            public       postgres    false    227            ?           0    0    item_servicios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.item_servicios_id_seq', 2, true);
            public       postgres    false    241            @           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 14, true);
            public       postgres    false    207            A           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menus_id_seq', 1, true);
            public       postgres    false    205            B           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 34, true);
            public       postgres    false    196            C           0    0    pagos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pagos_id_seq', 4, true);
            public       postgres    false    237            D           0    0    perfils_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.perfils_id_seq', 1, true);
            public       postgres    false    223            E           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 41, true);
            public       postgres    false    213            F           0    0    post_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_tag_id_seq', 1, false);
            public       postgres    false    219            G           0    0    programas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programas_id_seq', 2, true);
            public       postgres    false    225            H           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
            public       postgres    false    209            I           0    0    servicios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.servicios_id_seq', 1, true);
            public       postgres    false    231            J           0    0    settings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.settings_id_seq', 10, true);
            public       postgres    false    211            K           0    0    solicitud_servicios_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.solicitud_servicios_id_seq', 9, true);
            public       postgres    false    239            L           0    0    solicituds_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.solicituds_id_seq', 8, true);
            public       postgres    false    235            M           0    0    sugerencias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sugerencias_id_seq', 4, true);
            public       postgres    false    221            N           0    0    translations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.translations_id_seq', 1, false);
            public       postgres    false    216            O           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
            public       postgres    false    198            c           2606    31368 (   carrera_documento carrera_documento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.carrera_documento
    ADD CONSTRAINT carrera_documento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.carrera_documento DROP CONSTRAINT carrera_documento_pkey;
       public         postgres    false    234            _           2606    31352    carreras carreras_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carreras DROP CONSTRAINT carreras_pkey;
       public         postgres    false    230            6           2606    31152    data_rows data_rows_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_pkey;
       public         postgres    false    204            0           2606    31133 !   data_types data_types_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_name_unique;
       public         postgres    false    202            2           2606    31131    data_types data_types_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_pkey;
       public         postgres    false    202            4           2606    31135 !   data_types data_types_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_slug_unique;
       public         postgres    false    202            ]           2606    31344    documentos documentos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.documentos DROP CONSTRAINT documentos_pkey;
       public         postgres    false    228            k           2606    31409 "   item_servicios item_servicios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.item_servicios
    ADD CONSTRAINT item_servicios_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.item_servicios DROP CONSTRAINT item_servicios_pkey;
       public         postgres    false    242            <           2606    31179    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public         postgres    false    208            8           2606    31167    menus menus_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_name_unique;
       public         postgres    false    206            :           2606    31165    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public         postgres    false    206            )           2606    31090    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            g           2606    31390    pagos pagos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_pkey;
       public         postgres    false    238            Y           2606    31325    perfils perfils_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.perfils
    ADD CONSTRAINT perfils_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.perfils DROP CONSTRAINT perfils_pkey;
       public         postgres    false    224            J           2606    31238 $   permission_role permission_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public         postgres    false    215    215            G           2606    31222    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    214            U           2606    31301    post_tag post_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.post_tag
    ADD CONSTRAINT post_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.post_tag DROP CONSTRAINT post_tag_pkey;
       public         postgres    false    220            [           2606    31336    programas programas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT programas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.programas DROP CONSTRAINT programas_pkey;
       public         postgres    false    226            >           2606    31197    roles roles_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_unique;
       public         postgres    false    210            @           2606    31195    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    210            a           2606    31360    servicios servicios_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public         postgres    false    232            B           2606    31211    settings settings_key_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_unique UNIQUE (key);
 F   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_key_unique;
       public         postgres    false    212            D           2606    31209    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public         postgres    false    212            i           2606    31401 ,   solicitud_servicios solicitud_servicios_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.solicitud_servicios
    ADD CONSTRAINT solicitud_servicios_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.solicitud_servicios DROP CONSTRAINT solicitud_servicios_pkey;
       public         postgres    false    240            e           2606    31379    solicituds solicituds_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.solicituds
    ADD CONSTRAINT solicituds_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.solicituds DROP CONSTRAINT solicituds_pkey;
       public         postgres    false    236            W           2606    31309    sugerencias sugerencias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_pkey;
       public         postgres    false    222            M           2606    31261    translations translations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_pkey;
       public         postgres    false    217            O           2606    31263 J   translations translations_table_name_column_name_foreign_key_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique UNIQUE (table_name, column_name, foreign_key, locale);
 t   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique;
       public         postgres    false    217    217    217    217            Q           2606    31291    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public         postgres    false    218    218            +           2606    31103    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    199            -           2606    31101    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199            .           1259    31110    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    200            H           1259    31239 #   permission_role_permission_id_index    INDEX     h   CREATE INDEX permission_role_permission_id_index ON public.permission_role USING btree (permission_id);
 7   DROP INDEX public.permission_role_permission_id_index;
       public         postgres    false    215            K           1259    31240    permission_role_role_id_index    INDEX     \   CREATE INDEX permission_role_role_id_index ON public.permission_role USING btree (role_id);
 1   DROP INDEX public.permission_role_role_id_index;
       public         postgres    false    215            E           1259    31223    permissions_key_index    INDEX     L   CREATE INDEX permissions_key_index ON public.permissions USING btree (key);
 )   DROP INDEX public.permissions_key_index;
       public         postgres    false    214            R           1259    31293    user_roles_role_id_index    INDEX     R   CREATE INDEX user_roles_role_id_index ON public.user_roles USING btree (role_id);
 ,   DROP INDEX public.user_roles_role_id_index;
       public         postgres    false    218            S           1259    31292    user_roles_user_id_index    INDEX     R   CREATE INDEX user_roles_user_id_index ON public.user_roles USING btree (user_id);
 ,   DROP INDEX public.user_roles_user_id_index;
       public         postgres    false    218            m           2606    31153 (   data_rows data_rows_data_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES public.data_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_data_type_id_foreign;
       public       postgres    false    204    2866    202            n           2606    31180 %   menu_items menu_items_menu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_menu_id_foreign;
       public       postgres    false    208    206    2874            o           2606    31227 5   permission_role permission_role_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_foreign;
       public       postgres    false    215    2887    214            p           2606    31232 /   permission_role permission_role_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_foreign;
       public       postgres    false    2880    210    215            s           2606    31310 '   sugerencias sugerencias_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_user_id_foreign;
       public       postgres    false    222    2861    199            r           2606    31285 %   user_roles user_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_foreign;
       public       postgres    false    210    218    2880            q           2606    31280 %   user_roles user_roles_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_foreign;
       public       postgres    false    2861    199    218            l           2606    31272    users users_role_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public       postgres    false    210    199    2880                 x�}��q�0C�Di`3���H�!7W1�1�`I=�L�R��byI|�I?i%-����F69��N��C�bH���5�����^h��l���l�©� 6�+��֔R������V���2ʣ�,��OUHS���	�Q)Y�eV�Cj�{���dWFY)����C+��܍O�B�8�N�a��ohQ�Wv�:��c�i�1zD)z��;݇>���q>}좈KZ�?�?}��ǟBƕeV����/Ji��         �   x�m��
�0�٧��d���ܼA�^B%Ph���s�{�YfQ���T�Pu~�%� �B�)��J��{B�����9,���W�10�P[nrL���B�N���Z~����1ײ#��ʷ4��<Z��n�����Dc8� >?xU�      �   �  x��T�o�0~�����i�1��[�LS�5���O��N�
�[T���Mʢ����|w�}GAq��}���,�B��]��. 2�r���V��x�b
��81�o�l�(� ����-dt4�*�DV���/y�uj��<3��[���m��x�Pr�x0�/Ny�X���q�dI#<�>�NI��ӐZ��x$���(Nَ��YlۥO�T�^@��lW(H��@�Xd�S����~7�٢W'O�������Q ����ShKӜ/�b�����C��6�� W(�}�YLG�z�X�f�6e�(.�}���/B��K�3�!2�dxRkʲ�g�-�_���B������S�C�軝�P�`B@�D�,������u{���+�R1$���(�;��Zw���S�^hY��R�@�ۤ�5�d��}�a2F�R��\�y
��9�C`���%�j^���x�%�cW�m(;�twpS�R�
r��x}�S�@Ȥ�ԢZ4^����5�S��|�����G`�(c��{ �w��M}P��O��p���bEYV�wH�!�r��X����m��)�������VOmF�R4>�� ��FV���]M���'JG��}�t|�h��}<���v�)��׳{��zL��٘�G�;+5<�UEQ#g>�����v�X����m���
�z�+%X��IS�      �      x���OK�0���OQ�l%���MV𴋈zXJ��mJ�
E��fӔ��t//ɛa�G��\i��F�hx�}��UԘ���i{��2x�;Yr�m?����H�	�nX���L=HQw���1y�i�;�V<��t� e�������\;}4j�l�,�����,͠ȕ�*?����[9:�w���-;�4�i]����'�YH6,��f=2���J���C!Ew�W�r^Y�F����g����_�x���e�,�SϤ_����uv�!��{�	K��[_F��A|���         �   x�m�=!��z�s�5�K��`3�$�`����#B��7×�����`|[_�F�%W3��)�J��{�T���s�2��63�}��|$�)�f+�陋�?�7v�/�wʔÐP���������:����B���</ �(@Q�           x���MN�0���)|����dW*!�`K6S� #ǃ&.�g�E�R#��e���}��3��� F�G/߰�(��}e�nWJ����v�v�m:���2��ԇ.`�ئ��!e�.�;���6�Hm;�;�.i����I�(3�'�һL�-'����6_�X��_@���L��h��q!��!y!�~ϰz;o�K��0`���ŭ���<����ئ���y���`�l}�>	>�R[wJ�4�4[퀾}������k~���_@��      �   ~  x����n�0�sy
^ C)��6u�.�ඛ�Rm�D��-���kK���e���|�ߏ?-@ ��ӞaN ���_�)�T(�n�$1̣F1
Td�"]�����Zw� Q/��xH��',��F.�sVք~k)�]P.��Ue���4��1�b���S���"�h��F�d
yc��i�V����냹ه�	�MYʽJ!۝��ͨ�� s�$�cA�Q�u�����Q�Z���il�b�wŮwV�����q��-�bb��G̬v�z��R)����$n�}7��ڭ�B>3v���
'�u2��_V�s�qG���Gp�>��8/,2x7�6�v�F@���Ш)�l>,N
�L6�"rk���k�6�"�F3Yw��6��fA��`      �   +   x�3�LL����420��50�50V02�25�21�&����� 5[
z      �   C  x�u��� �Of��]VBl�dѦ��Q�~%�̴m��w���6�%4P6�#G�U�r��yԟE�kN�My�e�$��:	��V6�~O��&y�5k��O����_�9�����q�%�ȴ�0H�l��z��}rd��:��K�{RQ��sa�̂d�&��^hw5���p�9`ӿ���CM֠�V�+���Bj#�rw�7S�@�t�{��v;�Q�`��1A_K%�E�I$������]%`E �,W�/{����c[��ϬU�U���϶�:�5P#����;���qL��֯9�Uiڬ�� ��]��H��d벲��*�L=�EяՀ�)�ic\fF-M���i�N��5���
��~�SL���������D
�kp�A�ſ����Ӏ�Z�j�ʐ��=5��pújŭ|.	�	Fd���F��^G�*C�����|�Rv�-,�����:;;uU�
LO-Ma�q��q	���g��#`G�Q9�]mz(0�a.�r���M�5'��(-ɡ����C�BpV����&lS����I͵�4�!�Ì���U��c�=�k��������zn         1  x���=n�0�g����e�S�G�B�%.;H��=}�&ES C2t�7|���CS���S� %� �Ж�,�ze����:z$m�
dILP��g@�{W���rؗ�m�R�v�����O���S���BA��-���@�kP���pR��� Ɗƚ�g0���gk�C1k�K�L���I�{.��Q���!M6�-֐�	Y�?/�9k(�fW�cz��k:�����9��\�m.�$�Q�0�IN�]v+����C�n;�Uĵ�D�-�X�".ùH�qt��^|��*ǽ�����/k^��i� �XĒ      �      x������ � �      	   K   x�3��M,*�H���/H��tNL*MI,J�40143��4662䬨��420��50�54Q04�26�22�&����� �-�          \   x�ι�P��*�0��c{���0��(��M㖶�ٮv�����8L�V��Z��^ !�0�#�0�#�0"� �"� �"��X��>3/16      �   e  x���_�� ���S����z�=A��5[K����"lk}��B&~a�'j��:	�6W8~Kh�O�>�;ƫ,��b�F�'k��\CrOJщZX�N=�*و5d�ɳno��5l�굷�֥p�����Ph	B��	HuQ�^}Qܺ�f�Y(��n����.��v����*c����1[(v�u� ,�E�tY�u���B�,v��0�I�0��EB�"!{�Z��zY^Sa�2�B���i�Kʊ�*�s5�n���o��c���`�f��>�ó�ix�L��������8ӗ�o�̞G��2�ek�|`-<m'�ҷq�k������ُ��.�����y���?&2�=            x������ � �         k   x���;
�0E�zfn@y21�r!6AE~ *d�� ��)�����uO)f��T���x��>�Q���Ŵ6㱑�t5��m��2~��J)�����/�a�7�,�      �   ~   x�3�LL����t���%E�%�E�F������
F�V�fV&��ĸ�8K�S�8��rsBAlb�s��'�敤r�@i4U�V�F�ĸL8��LJ�JL�/:�3�S@�EfY>�nclb\1z\\\ ��B         q   x�3�t�IM.)�L�LIL�4�420��50�50V02�21�24�&�e���V���Z���������D���� ����1�cQIfriN~�BJ����DLL��L��q��qqq ר)�      �   '  x�}�OO�0����.�:��P�r��Ҕ5!�Hc�d�}{�8� n��{�Ϋ��A�A#�c,���,�����*f��{�߃FK��9��aNَcz�J�9A5A
Q�斛}н_��7m�Zv���<��ChV,��n���-7Q��,�'�F^9�YMj�XP\f�C"
�	�t�p����i<�:��Y�	!۔�m%<h���I�Z���4� i�u�b��x�-=�s$�&��G���MlL~]gMu�E��6��]���l�H�'�o7ȝ8g��^ʢ(� �D�7         �   x�u�M
�0���)�{ˌM��UZAS�L��#�b�����}���bw�(���b��Y���Dp!����6$h��x�r�9��n2���'��%`�R`E�	����ױ0{׻�G�h��s��)��d�c�9��}�JJ hRY��(�c\��v�U��$B�c�y���S%         @  x�����T1E��+FS�q���
�%�-��f����"�(H���":E��5��s'>b�r� 04� ���&P"��н?���o_�o��GF�! � �Hx�<:�T8ś������Ș��	p����)I�1ON�lq�T��4�Vz�m��ty�j���Nv�d��OW�>�_r�SԊR��O�Fꇼʡ#ǀ4V��/���r�ʺc�W��H��^���"�y�(�{.��.��&�1�]W�f��>�XB�2tN�hp�+�yq�eH���鯞���h4�I/w� ո&�/.͘��O����4�|��+��o���9��         c   x�m�;� D��Sp�.�{Bc���G��Q^�z��0,ǚ��#�,��`�����9tP ���pϡ�S6S�\_!*��C��{3J�Y%��"^��+�            x������ � �            x�3�4�2�4�2�4�2�4����� ��      �   D  x�m�K��@���+:���Y�/l@D�Ƹ)�x(o(;�ߧ���$ڛs��J�~�\�*�_�_�+LQ��^�R�l���vJ�B�����������>�M������.�/�渳t��آ��;�8�&|`v�Uڜ�k1!"i�`�Õ)֙b+���s���l�ȺR,�/xa�������	|zC�����Yz����YM��⨏~�{(�}������D*��茳GN}�(�{-�-�R�i��m�rW-xij^�[�p��VHY��@� \7�P]x�2��_���}��T��JN|�*u�`w�[a�DUfۉ���@��srO,'�̱?z��U=�q�H��ER��/{�:�����<�rPTdj1�23;�+}��J�pk��"p��n܈�[H����]�@�����R���2�����������M ����σ�"�F�C#,����������b�XNJ�u��(�(ND�JՌ�2Sߖ���ݹ��v'2�Sϡ�8�i<�<�u7L
I3�d:�W.xyԢc�M4
t��l�����#��;t^���;�!��è���0n�����z ���     