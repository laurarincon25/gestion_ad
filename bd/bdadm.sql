PGDMP         	                 w         
   admgestion    10.5    10.5 �    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            N           1262    18390 
   admgestion    DATABASE     �   CREATE DATABASE admgestion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Bolivarian Republic of Venezuela.1252' LC_CTYPE = 'Spanish_Bolivarian Republic of Venezuela.1252';
    DROP DATABASE admgestion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            O           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            P           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    26493    alumnos    TABLE     J  CREATE TABLE public.alumnos (
    id integer NOT NULL,
    fecha_ingreso date,
    id_persona integer,
    estatus character(1) DEFAULT NULL::bpchar,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
    DROP TABLE public.alumnos;
       public         postgres    false    3            �            1259    26491    alumnos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.alumnos_id_seq;
       public       postgres    false    199    3            Q           0    0    alumnos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.alumnos_id_seq OWNED BY public.alumnos.id;
            public       postgres    false    198            �            1259    27504    carrera_documento    TABLE       CREATE TABLE public.carrera_documento (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    documento_id integer NOT NULL,
    precio double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.carrera_documento;
       public         postgres    false    3            �            1259    27502    carrera_documento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.carrera_documento_id_seq;
       public       postgres    false    3    242            R           0    0    carrera_documento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.carrera_documento_id_seq OWNED BY public.carrera_documento.id;
            public       postgres    false    241            �            1259    27485    carreras    TABLE     �   CREATE TABLE public.carreras (
    id integer NOT NULL,
    carrera character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.carreras;
       public         postgres    false    3            �            1259    27483    carreras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carreras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.carreras_id_seq;
       public       postgres    false    238    3            S           0    0    carreras_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.carreras_id_seq OWNED BY public.carreras.id;
            public       postgres    false    237            �            1259    27275 	   data_rows    TABLE       CREATE TABLE public.data_rows (
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
       public         postgres    false    3            �            1259    27273    data_rows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.data_rows_id_seq;
       public       postgres    false    212    3            T           0    0    data_rows_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.data_rows_id_seq OWNED BY public.data_rows.id;
            public       postgres    false    211            �            1259    27259 
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
       public         postgres    false    3            �            1259    27257    data_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_types_id_seq;
       public       postgres    false    210    3            U           0    0    data_types_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_types_id_seq OWNED BY public.data_types.id;
            public       postgres    false    209            �            1259    26504    docentes    TABLE     �  CREATE TABLE public.docentes (
    id integer NOT NULL,
    fecha_ingreso date,
    titulo character varying(200) DEFAULT NULL::character varying,
    cargo character varying(200) DEFAULT NULL::character varying,
    id_persona integer,
    estatus character(1) DEFAULT NULL::bpchar,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
    DROP TABLE public.docentes;
       public         postgres    false    3            �            1259    26502    docentes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.docentes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.docentes_id_seq;
       public       postgres    false    201    3            V           0    0    docentes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.docentes_id_seq OWNED BY public.docentes.id;
            public       postgres    false    200            �            1259    27477 
   documentos    TABLE     �   CREATE TABLE public.documentos (
    id integer NOT NULL,
    "Nombre" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.documentos;
       public         postgres    false    3            �            1259    27475    documentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.documentos_id_seq;
       public       postgres    false    236    3            W           0    0    documentos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.documentos_id_seq OWNED BY public.documentos.id;
            public       postgres    false    235            �            1259    27307 
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
       public         postgres    false    3            �            1259    27305    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public       postgres    false    3    216            X           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
            public       postgres    false    215            �            1259    27297    menus    TABLE     �   CREATE TABLE public.menus (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.menus;
       public         postgres    false    3            �            1259    27295    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public       postgres    false    3    214            Y           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
            public       postgres    false    213            �            1259    27222 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    27220    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    205    3            Z           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    204            �            1259    27523    pagos    TABLE     2  CREATE TABLE public.pagos (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    "uuidSoli" character varying(255) NOT NULL,
    pago character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pagos;
       public         postgres    false    3            �            1259    27521    pagos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pagos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pagos_id_seq;
       public       postgres    false    3    246            [           0    0    pagos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pagos_id_seq OWNED BY public.pagos.id;
            public       postgres    false    245            �            1259    27241    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    27455    perfils    TABLE     v  CREATE TABLE public.perfils (
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
       public         postgres    false    3            �            1259    27453    perfils_id_seq    SEQUENCE     �   CREATE SEQUENCE public.perfils_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.perfils_id_seq;
       public       postgres    false    3    232            \           0    0    perfils_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.perfils_id_seq OWNED BY public.perfils.id;
            public       postgres    false    231            �            1259    27361    permission_role    TABLE     j   CREATE TABLE public.permission_role (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         postgres    false    3            �            1259    27351    permissions    TABLE     �   CREATE TABLE public.permissions (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    table_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            �            1259    27349    permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    222    3            ]           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    221            �            1259    26517    personal_administrativos    TABLE     �  CREATE TABLE public.personal_administrativos (
    id integer NOT NULL,
    cargo character varying(200) DEFAULT NULL::character varying,
    id_persona integer,
    estatus character(1) DEFAULT NULL::bpchar,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
 ,   DROP TABLE public.personal_administrativos;
       public         postgres    false    3            �            1259    26515    personal_administrativos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_administrativos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.personal_administrativos_id_seq;
       public       postgres    false    3    203            ^           0    0    personal_administrativos_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.personal_administrativos_id_seq OWNED BY public.personal_administrativos.id;
            public       postgres    false    202            �            1259    26452    personas    TABLE     �  CREATE TABLE public.personas (
    id integer NOT NULL,
    nombre character varying(200) DEFAULT NULL::character varying,
    apellido character varying(200) DEFAULT NULL::character varying,
    cedula character varying(20) NOT NULL,
    fecha_nacimiento date,
    direccion character varying(500) DEFAULT NULL::character varying,
    correo character varying(200) DEFAULT NULL::character varying,
    telefono character varying(20) DEFAULT NULL::character varying,
    id_user integer NOT NULL,
    estatus character(1) DEFAULT NULL::bpchar,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
    DROP TABLE public.personas;
       public         postgres    false    3            �            1259    26450    personas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.personas_id_seq;
       public       postgres    false    3    197            _           0    0    personas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.personas_id_seq OWNED BY public.personas.id;
            public       postgres    false    196            �            1259    27434    post_tag    TABLE     �   CREATE TABLE public.post_tag (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.post_tag;
       public         postgres    false    3            �            1259    27432    post_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.post_tag_id_seq;
       public       postgres    false    3    228            `           0    0    post_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.post_tag_id_seq OWNED BY public.post_tag.id;
            public       postgres    false    227            �            1259    27466 	   programas    TABLE       CREATE TABLE public.programas (
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
       public         postgres    false    3            �            1259    27464    programas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.programas_id_seq;
       public       postgres    false    234    3            a           0    0    programas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.programas_id_seq OWNED BY public.programas.id;
            public       postgres    false    233            �            1259    27324    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            �            1259    27322    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    3    218            b           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    217            �            1259    27493 	   servicios    TABLE     -  CREATE TABLE public.servicios (
    id_ser integer NOT NULL,
    servicio character varying(255) NOT NULL,
    otro_serv character varying(255) NOT NULL,
    observaciones character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.servicios;
       public         postgres    false    3            �            1259    27491    servicios_id_ser_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_id_ser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.servicios_id_ser_seq;
       public       postgres    false    240    3            c           0    0    servicios_id_ser_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.servicios_id_ser_seq OWNED BY public.servicios.id_ser;
            public       postgres    false    239            �            1259    27337    settings    TABLE     -  CREATE TABLE public.settings (
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
       public         postgres    false    3            �            1259    27335    settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.settings_id_seq;
       public       postgres    false    220    3            d           0    0    settings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;
            public       postgres    false    219            �            1259    27512 
   solicituds    TABLE     �   CREATE TABLE public.solicituds (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    users_id integer NOT NULL,
    documentos json NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.solicituds;
       public         postgres    false    3            �            1259    27510    solicituds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicituds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.solicituds_id_seq;
       public       postgres    false    3    244            e           0    0    solicituds_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.solicituds_id_seq OWNED BY public.solicituds.id;
            public       postgres    false    243            �            1259    27442    sugerencias    TABLE     �   CREATE TABLE public.sugerencias (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sugerencias;
       public         postgres    false    3            �            1259    27440    sugerencias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sugerencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sugerencias_id_seq;
       public       postgres    false    230    3            f           0    0    sugerencias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sugerencias_id_seq OWNED BY public.sugerencias.id;
            public       postgres    false    229            �            1259    27391    translations    TABLE     d  CREATE TABLE public.translations (
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
       public         postgres    false    3            �            1259    27389    translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.translations_id_seq;
       public       postgres    false    225    3            g           0    0    translations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;
            public       postgres    false    224            �            1259    27415 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         postgres    false    3            �            1259    27230    users    TABLE     �  CREATE TABLE public.users (
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
       public         postgres    false    3            �            1259    27228    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    207    3            h           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    206                       2604    26496 
   alumnos id    DEFAULT     h   ALTER TABLE ONLY public.alumnos ALTER COLUMN id SET DEFAULT nextval('public.alumnos_id_seq'::regclass);
 9   ALTER TABLE public.alumnos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            H           2604    27533    carrera_documento id    DEFAULT     |   ALTER TABLE ONLY public.carrera_documento ALTER COLUMN id SET DEFAULT nextval('public.carrera_documento_id_seq'::regclass);
 C   ALTER TABLE public.carrera_documento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241    242            F           2604    27534    carreras id    DEFAULT     j   ALTER TABLE ONLY public.carreras ALTER COLUMN id SET DEFAULT nextval('public.carreras_id_seq'::regclass);
 :   ALTER TABLE public.carreras ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            8           2604    27535    data_rows id    DEFAULT     l   ALTER TABLE ONLY public.data_rows ALTER COLUMN id SET DEFAULT nextval('public.data_rows_id_seq'::regclass);
 ;   ALTER TABLE public.data_rows ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211    212            0           2604    27536    data_types id    DEFAULT     n   ALTER TABLE ONLY public.data_types ALTER COLUMN id SET DEFAULT nextval('public.data_types_id_seq'::regclass);
 <   ALTER TABLE public.data_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210                        2604    26507    docentes id    DEFAULT     j   ALTER TABLE ONLY public.docentes ALTER COLUMN id SET DEFAULT nextval('public.docentes_id_seq'::regclass);
 :   ALTER TABLE public.docentes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            E           2604    27537    documentos id    DEFAULT     n   ALTER TABLE ONLY public.documentos ALTER COLUMN id SET DEFAULT nextval('public.documentos_id_seq'::regclass);
 <   ALTER TABLE public.documentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    235    236            ;           2604    27538    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            9           2604    27539    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214            +           2604    27540    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            J           2604    27526    pagos id    DEFAULT     d   ALTER TABLE ONLY public.pagos ALTER COLUMN id SET DEFAULT nextval('public.pagos_id_seq'::regclass);
 7   ALTER TABLE public.pagos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    245    246            C           2604    27541 
   perfils id    DEFAULT     h   ALTER TABLE ONLY public.perfils ALTER COLUMN id SET DEFAULT nextval('public.perfils_id_seq'::regclass);
 9   ALTER TABLE public.perfils ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231    232            ?           2604    27542    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222            &           2604    26520    personal_administrativos id    DEFAULT     �   ALTER TABLE ONLY public.personal_administrativos ALTER COLUMN id SET DEFAULT nextval('public.personal_administrativos_id_seq'::regclass);
 J   ALTER TABLE public.personal_administrativos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203                       2604    26455    personas id    DEFAULT     j   ALTER TABLE ONLY public.personas ALTER COLUMN id SET DEFAULT nextval('public.personas_id_seq'::regclass);
 :   ALTER TABLE public.personas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            A           2604    27543    post_tag id    DEFAULT     j   ALTER TABLE ONLY public.post_tag ALTER COLUMN id SET DEFAULT nextval('public.post_tag_id_seq'::regclass);
 :   ALTER TABLE public.post_tag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227    228            D           2604    27544    programas id    DEFAULT     l   ALTER TABLE ONLY public.programas ALTER COLUMN id SET DEFAULT nextval('public.programas_id_seq'::regclass);
 ;   ALTER TABLE public.programas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    233    234            <           2604    27545    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            G           2604    27546    servicios id_ser    DEFAULT     t   ALTER TABLE ONLY public.servicios ALTER COLUMN id_ser SET DEFAULT nextval('public.servicios_id_ser_seq'::regclass);
 ?   ALTER TABLE public.servicios ALTER COLUMN id_ser DROP DEFAULT;
       public       postgres    false    240    239    240            >           2604    27547    settings id    DEFAULT     j   ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);
 :   ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            I           2604    27548    solicituds id    DEFAULT     n   ALTER TABLE ONLY public.solicituds ALTER COLUMN id SET DEFAULT nextval('public.solicituds_id_seq'::regclass);
 <   ALTER TABLE public.solicituds ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    244    244            B           2604    27549    sugerencias id    DEFAULT     p   ALTER TABLE ONLY public.sugerencias ALTER COLUMN id SET DEFAULT nextval('public.sugerencias_id_seq'::regclass);
 =   ALTER TABLE public.sugerencias ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            @           2604    27550    translations id    DEFAULT     r   ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);
 >   ALTER TABLE public.translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            -           2604    27551    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207                      0    26493    alumnos 
   TABLE DATA               a   COPY public.alumnos (id, fecha_ingreso, id_persona, estatus, created_at, updated_at) FROM stdin;
    public       postgres    false    199   ��       D          0    27504    carrera_documento 
   TABLE DATA               i   COPY public.carrera_documento (id, carrera_id, documento_id, precio, created_at, updated_at) FROM stdin;
    public       postgres    false    242   ��       @          0    27485    carreras 
   TABLE DATA               G   COPY public.carreras (id, carrera, created_at, updated_at) FROM stdin;
    public       postgres    false    238   s�       &          0    27275 	   data_rows 
   TABLE DATA               �   COPY public.data_rows (id, data_type_id, field, type, display_name, required, browse, read, edit, add, delete, details, "order") FROM stdin;
    public       postgres    false    212   ��       $          0    27259 
   data_types 
   TABLE DATA               �   COPY public.data_types (id, name, slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) FROM stdin;
    public       postgres    false    210   ��                 0    26504    docentes 
   TABLE DATA               q   COPY public.docentes (id, fecha_ingreso, titulo, cargo, id_persona, estatus, created_at, updated_at) FROM stdin;
    public       postgres    false    201   r�       >          0    27477 
   documentos 
   TABLE DATA               J   COPY public.documentos (id, "Nombre", created_at, updated_at) FROM stdin;
    public       postgres    false    236   ��       *          0    27307 
   menu_items 
   TABLE DATA               �   COPY public.menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, parameters) FROM stdin;
    public       postgres    false    216   ��       (          0    27297    menus 
   TABLE DATA               A   COPY public.menus (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    214   ;�                 0    27222 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    205   v�       H          0    27523    pagos 
   TABLE DATA               Z   COPY public.pagos (id, uuid, "uuidSoli", pago, email, created_at, updated_at) FROM stdin;
    public       postgres    false    246   ��       "          0    27241    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    208   w      :          0    27455    perfils 
   TABLE DATA               h   COPY public.perfils (id, name, lastname, address, phone, biography, created_at, updated_at) FROM stdin;
    public       postgres    false    232   �      1          0    27361    permission_role 
   TABLE DATA               A   COPY public.permission_role (permission_id, role_id) FROM stdin;
    public       postgres    false    223   �      0          0    27351    permissions 
   TABLE DATA               R   COPY public.permissions (id, key, table_name, created_at, updated_at) FROM stdin;
    public       postgres    false    222   ~                0    26517    personal_administrativos 
   TABLE DATA               j   COPY public.personal_administrativos (id, cargo, id_persona, estatus, created_at, updated_at) FROM stdin;
    public       postgres    false    203   Y                0    26452    personas 
   TABLE DATA               �   COPY public.personas (id, nombre, apellido, cedula, fecha_nacimiento, direccion, correo, telefono, id_user, estatus, created_at, updated_at) FROM stdin;
    public       postgres    false    197   v      6          0    27434    post_tag 
   TABLE DATA               >   COPY public.post_tag (id, created_at, updated_at) FROM stdin;
    public       postgres    false    228   +      <          0    27466 	   programas 
   TABLE DATA               q   COPY public.programas (id, carrera, pensum, descripcion, nrotelefono, email, created_at, updated_at) FROM stdin;
    public       postgres    false    234   H      ,          0    27324    roles 
   TABLE DATA               O   COPY public.roles (id, name, display_name, created_at, updated_at) FROM stdin;
    public       postgres    false    218   �      B          0    27493 	   servicios 
   TABLE DATA               g   COPY public.servicios (id_ser, servicio, otro_serv, observaciones, created_at, updated_at) FROM stdin;
    public       postgres    false    240   >      .          0    27337    settings 
   TABLE DATA               a   COPY public.settings (id, key, display_name, value, details, type, "order", "group") FROM stdin;
    public       postgres    false    220   [      F          0    27512 
   solicituds 
   TABLE DATA               \   COPY public.solicituds (id, uuid, users_id, documentos, created_at, updated_at) FROM stdin;
    public       postgres    false    244   �      8          0    27442    sugerencias 
   TABLE DATA               W   COPY public.sugerencias (id, descripcion, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    230   v      3          0    27391    translations 
   TABLE DATA               w   COPY public.translations (id, table_name, column_name, foreign_key, locale, value, created_at, updated_at) FROM stdin;
    public       postgres    false    225   �      4          0    27415 
   user_roles 
   TABLE DATA               6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public       postgres    false    226   �      !          0    27230    users 
   TABLE DATA               }   COPY public.users (id, name, email, password, remember_token, created_at, updated_at, avatar, role_id, settings) FROM stdin;
    public       postgres    false    207    	      i           0    0    alumnos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alumnos_id_seq', 1, true);
            public       postgres    false    198            j           0    0    carrera_documento_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.carrera_documento_id_seq', 12, true);
            public       postgres    false    241            k           0    0    carreras_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.carreras_id_seq', 4, true);
            public       postgres    false    237            l           0    0    data_rows_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_rows_id_seq', 82, true);
            public       postgres    false    211            m           0    0    data_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_types_id_seq', 9, true);
            public       postgres    false    209            n           0    0    docentes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.docentes_id_seq', 1, false);
            public       postgres    false    200            o           0    0    documentos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.documentos_id_seq', 3, true);
            public       postgres    false    235            p           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 28, true);
            public       postgres    false    215            q           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menus_id_seq', 1, true);
            public       postgres    false    213            r           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 31, true);
            public       postgres    false    204            s           0    0    pagos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pagos_id_seq', 17, true);
            public       postgres    false    245            t           0    0    perfils_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.perfils_id_seq', 1, true);
            public       postgres    false    231            u           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 56, true);
            public       postgres    false    221            v           0    0    personal_administrativos_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.personal_administrativos_id_seq', 1, false);
            public       postgres    false    202            w           0    0    personas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.personas_id_seq', 2, true);
            public       postgres    false    196            x           0    0    post_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_tag_id_seq', 1, false);
            public       postgres    false    227            y           0    0    programas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programas_id_seq', 1, true);
            public       postgres    false    233            z           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
            public       postgres    false    217            {           0    0    servicios_id_ser_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.servicios_id_ser_seq', 1, false);
            public       postgres    false    239            |           0    0    settings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.settings_id_seq', 10, true);
            public       postgres    false    219            }           0    0    solicituds_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.solicituds_id_seq', 4, true);
            public       postgres    false    243            ~           0    0    sugerencias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sugerencias_id_seq', 2, true);
            public       postgres    false    229                       0    0    translations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.translations_id_seq', 1, false);
            public       postgres    false    224            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
            public       postgres    false    206            P           2606    26501    alumnos alumnos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public         postgres    false    199            �           2606    27509 (   carrera_documento carrera_documento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.carrera_documento
    ADD CONSTRAINT carrera_documento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.carrera_documento DROP CONSTRAINT carrera_documento_pkey;
       public         postgres    false    242            �           2606    27490    carreras carreras_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carreras DROP CONSTRAINT carreras_pkey;
       public         postgres    false    238            c           2606    27289    data_rows data_rows_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_pkey;
       public         postgres    false    212            ]           2606    27270 !   data_types data_types_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_name_unique;
       public         postgres    false    210            _           2606    27268    data_types data_types_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_pkey;
       public         postgres    false    210            a           2606    27272 !   data_types data_types_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_slug_unique;
       public         postgres    false    210            R           2606    26514    docentes docentes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_pkey;
       public         postgres    false    201            �           2606    27482    documentos documentos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.documentos DROP CONSTRAINT documentos_pkey;
       public         postgres    false    236            i           2606    27316    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public         postgres    false    216            e           2606    27304    menus menus_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_name_unique;
       public         postgres    false    214            g           2606    27302    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public         postgres    false    214            V           2606    27227    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    205            �           2606    27531    pagos pagos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_pkey;
       public         postgres    false    246            �           2606    27463    perfils perfils_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.perfils
    ADD CONSTRAINT perfils_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.perfils DROP CONSTRAINT perfils_pkey;
       public         postgres    false    232            w           2606    27375 $   permission_role permission_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public         postgres    false    223    223            t           2606    27359    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    222            T           2606    26526 6   personal_administrativos personal_administrativos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.personal_administrativos
    ADD CONSTRAINT personal_administrativos_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.personal_administrativos DROP CONSTRAINT personal_administrativos_pkey;
       public         postgres    false    203            N           2606    26468    personas personas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public         postgres    false    197            �           2606    27439    post_tag post_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.post_tag
    ADD CONSTRAINT post_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.post_tag DROP CONSTRAINT post_tag_pkey;
       public         postgres    false    228            �           2606    27474    programas programas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT programas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.programas DROP CONSTRAINT programas_pkey;
       public         postgres    false    234            k           2606    27334    roles roles_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_unique;
       public         postgres    false    218            m           2606    27332    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    218            �           2606    27501    servicios servicios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id_ser);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public         postgres    false    240            o           2606    27348    settings settings_key_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_unique UNIQUE (key);
 F   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_key_unique;
       public         postgres    false    220            q           2606    27346    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public         postgres    false    220            �           2606    27520    solicituds solicituds_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.solicituds
    ADD CONSTRAINT solicituds_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.solicituds DROP CONSTRAINT solicituds_pkey;
       public         postgres    false    244            �           2606    27447    sugerencias sugerencias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_pkey;
       public         postgres    false    230            z           2606    27399    translations translations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_pkey;
       public         postgres    false    225            |           2606    27401 J   translations translations_table_name_column_name_foreign_key_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique UNIQUE (table_name, column_name, foreign_key, locale);
 t   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique;
       public         postgres    false    225    225    225    225            ~           2606    27429    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public         postgres    false    226    226            X           2606    27240    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    207            Z           2606    27238    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    207            [           1259    27247    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    208            u           1259    27376 #   permission_role_permission_id_index    INDEX     h   CREATE INDEX permission_role_permission_id_index ON public.permission_role USING btree (permission_id);
 7   DROP INDEX public.permission_role_permission_id_index;
       public         postgres    false    223            x           1259    27378    permission_role_role_id_index    INDEX     \   CREATE INDEX permission_role_role_id_index ON public.permission_role USING btree (role_id);
 1   DROP INDEX public.permission_role_role_id_index;
       public         postgres    false    223            r           1259    27360    permissions_key_index    INDEX     L   CREATE INDEX permissions_key_index ON public.permissions USING btree (key);
 )   DROP INDEX public.permissions_key_index;
       public         postgres    false    222            K           1259    26469    personas_cedula_unique    INDEX     T   CREATE UNIQUE INDEX personas_cedula_unique ON public.personas USING btree (cedula);
 *   DROP INDEX public.personas_cedula_unique;
       public         postgres    false    197            L           1259    26470    personas_correo_unique    INDEX     T   CREATE UNIQUE INDEX personas_correo_unique ON public.personas USING btree (correo);
 *   DROP INDEX public.personas_correo_unique;
       public         postgres    false    197                       1259    27431    user_roles_role_id_index    INDEX     R   CREATE INDEX user_roles_role_id_index ON public.user_roles USING btree (role_id);
 ,   DROP INDEX public.user_roles_role_id_index;
       public         postgres    false    226            �           1259    27430    user_roles_user_id_index    INDEX     R   CREATE INDEX user_roles_user_id_index ON public.user_roles USING btree (user_id);
 ,   DROP INDEX public.user_roles_user_id_index;
       public         postgres    false    226            �           2606    27290 (   data_rows data_rows_data_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES public.data_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_data_type_id_foreign;
       public       postgres    false    210    212    2911            �           2606    27317 %   menu_items menu_items_menu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_menu_id_foreign;
       public       postgres    false    216    214    2919            �           2606    27364 5   permission_role permission_role_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_foreign;
       public       postgres    false    223    2932    222            �           2606    27369 /   permission_role permission_role_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_foreign;
       public       postgres    false    218    223    2925            �           2606    27448 '   sugerencias sugerencias_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_user_id_foreign;
       public       postgres    false    230    207    2906            �           2606    27423 %   user_roles user_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_foreign;
       public       postgres    false    2925    226    218            �           2606    27418 %   user_roles user_roles_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_foreign;
       public       postgres    false    207    226    2906            �           2606    27410    users users_role_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public       postgres    false    218    207    2925               3   x�3�4204�50�54�4�tq-tA"&
FFVƆV�bFV��\1z\\\ R�
�      D   �   x�}ϱ�0E�������!<���#��R��=� ��T�ާ�z!?�eY*ld�+�	�9Ci�-[�%`������rV������+�2rF��Π{�xapк5��]��^<��(� 
��	F�      @   |   x�3���KO��L-�LTH�S��K�/�M,�LN�420��54�5�T0��26�22�&�e�l�sfYf�2Slb\��ZӋ�3�RJ�K�<3L�����q��y!�(?�4993?S�)#L��b���� +UBm      &   �  x��TQk�0~>����1�8����v��ZF��)`�HIE%�XJ73��w���N^�|w����b}�d�T'��|���{{�s�T�H�򻇻.���#H�tD�����@X͝�f�;����{"aA�	�42�+�}�Up��f��v�^J��o$�R�;*#�禆�X�]��Q=�ʐu��k֗X���,Fh�,��=o@~�p��x���U��p��Զ::o��jY6Rs�l�T��_�Gb��:Y'���[���g6!�o\�-y�x���:	C\��:������ꓩzL��e�yj��f	�j��2,�����{WM��O�R��W�^����ߢ�����o����I�M?{L�ௐ����?c<\0�lNX��+
J<ן��C�9�'����.["h�)��9aY:eA�|Js��I�+]��H�u��"C��8Da7�2���%)�����a��Vd�������      $   n  x���_k�0ş�(}�#F[m�F{j)��(�Y��F���4Fc]�X�r��ܐ�� 4�
i�U�	>�1�S�Wꃗ�e�H�[���9e�}� � ���I��p�� ]���
j��_G@6Z6��Z���
Y_�ҧ�E6��!�Qi�I���P�}\�O_34��{�R9p[�z#O��J��k��|^�Q�tf���\�T�2ΚC9�e�؝��BV,=����PO�`��[]M���+\8��@�S7����Zgm�Ec;��)� �Y�^q��Ю:k���M��h��F��1�R!�P��7��t��u7
�lCt[�!���u�o5Y]N~��_k�f�,
0�e������D            x������ � �      >   X   x�3��/)�/�420��54�5�T0��26�20@3�2��2��,)�!N�����!�_~Ib��sjQIfZfrbJ"�fS���͸b���� �m$-      *   4  x����j�0���}��v��[��n֋n�F�d5TMItlo��4�`J�� ����(�F�˽��!��y����=rCآbk.�H���8Kg8_e�
/�fnq��Z�m�����CC�p�N��xK�Mg"ƿ�CRp�5Wz�!��s��Ng:=����JNN!�e=���&e(�/��ߌ}>"�݋���;Q1�����n�t4�?�ܞ����C�A�KSNإ���=��Lu��.v���q�v�z���	>�)���.��{p^yۊ�����}���Z�����,�)�J��U�J �$��_��0X      (   +   x�3�LL����420��54�5�T04�21�26�&����� 6U
�         )  x�u��� �Of��]VBL�dѦ��Q�~%�̶U��w��|`\B#e�>rtZ-7���A}.�.X�po��o�&�סHX�����}J�4ɻ}�Y��@~�L�h���&���.�E���ABǸ`;}��vp�#���U�]���{��
f��g$�8�?���j�7v=��Ds��AG7���A������:�#�rwJЛ)i j���:ng7j�3��LXD�D���N�~Q��UVb�rU�w��+=�eI��Z�X��lk��]��T��ű��J��R��U"g�+M�5]\�Cs����n]V�QYu�)�[���?%t���Q�I��=��9�?��Y!~��?��j�1;8%���O���'�Y�����=�1�]-[9�aOM�nXW�����ϥ?������^��hTeH�y�pV�?_i��mK�;l�p���N]U���EK���8v��u	���g��#`G�Q9�]mz(0��\t�:qw3��4kN4CQ"ɥ����C�BpV����&lS������+;�].����      H   �  x���M�$7�שS�j�_�\yg������1ӌ��׷*���.�I���_=^<.֑[��r��ݣӀȕ�TFm�˦mT���އr��G�9n\ۂ*F�����~y%���Y��~Y��������~��V�~{i�ߖ99?L��'�iU<�-n����MS�Z�?R�S��~��W�#-�dK������:��ϰί�V�i�d�z�z�(?|�4��f�\H�R(����]� )p�;F�c���2F�lVN�Z����3�k�62���ޠ�Q�y탚�)��+�������Պ�v����r���F�ΰ2�]a\Վ��gZK�v���+���6����%_EW~�uׂ/^�{��Y��K��Yg_��,N.�X}U9��RG����Ϊ��P�CࣝZ.ΪW`V�#- ., �/W$��7��{+Z����%XY��Z�ū�����fQ�mtݶ!I�O�"\Z/���k��RX
Ͳy�l�uYw�\�S���lZ1ie��[E>8k���,.�y�#r
�� �y�[D�����i�~�ǂ���|J�l�p��R�fy��6���w6�V�^?�; ���HhKI�c�[�Aq-�J�s_H�̊�K�W�>	���*v������n�u�qqm3i(I����f
��+/ś���z��x�qn�������K�����      "      x������ � �      :   X   x�m�1�  ����`(a@��XH#B���덻��$�zO&z�%}�P�<:Pӓ���;�*�pg1tW�!���������Lh      1   r   x�Ϲ1E��*�X^>zq�u���c���'��z���������r�1�0�0� �H"�$�H"�$�H"�"���9DEQDE4�D}��h��&�hb�!�b�OC���?f6$V      0   �  x���Kn�0E��*��Tؘ�YDW�r����8�A�~i�!�ǄX� �����5�ksC�DR=����U�-�a�ɳ�\l!SO
��37r�<|���[�̓��޹1[����[o����s��PZ��-�(�D\�=�$H�VvqoK��J�Vd��ijÊbS�V�qE���+������j�u+�u�bm�bP�E�v�u��bPX�v���i ��@Zp��}+���Hs�޵�h~���g��(���/�aZ�I���đ&�i���d	��]ꯦ�wvwZ.��4u������g6�X�b�5�f
U����)����X%��N]7��N���~%��@O�h͵�z�wX����{����� �m*@�
p�0������FĆ/���,_�ř%�#�GI&C��:oT��M׋��&��|ig��@��>�b���� �sz�����            x������ � �         �   x�u��� @��W��E��]��]��A����ڵ��IN�A���=t6<,)e��@BG�D��T�l�[|��i��˼Z��!� H�1�HJp=D4_QTQ+��c�u{�\^�1�1�T��� �Fr�\"x�������h�!��"�@�ӗ���c��1���>b      6      x������ � �      <   K   x�3�4D������̒�NC3C#c��Ģ�D��������\N#C]C#]CKC+ 20�&����� %�      ,   �   x�3�LL����t���%E�%�E�F���F���
��V&FVƦ�ĸ�9S�S�JR9]�4L��������%a�2�Z������_tg����̲|4�&V���ĸ�8K�S�8]�KJS2�݂�p��\1z\\\ �EB      B      x������ � �      .   '  x�}�OO�0����.�:��P�r��Ҕ5!�Hc�d�}{�8� n��{�Ϋ��A�A#�c,���,�����*f��{�߃FK��9��aNَcz�J�9A5A
Q�斛}н_��7m�Zv���<��ChV,��n���-7Q��,�'�F^9�YMj�XP\f�C"
�	�t�p����i<�:��Y�	!۔�m%<h���I�Z���4� i�u�b��x�-=�s$�&��G���MlL~]gMu�E��6��]���l�H�'�o7ȝ8g��^ʢ(� �D�7      F   �   x����N1E��+V[����i��"Oi��F����,�@��Ƨ9�X�A(s��X��H�n�dW��5(T���Ï{W6�����Ē���F����yr�m{� am`�<�k^NO��Nc����f�����w�81M�����_���	��������֏˝�~ B"��=b�Usu�ҡFw�6�hT�JU��~�����GL�=j�?�p�      8   .   x�3��-�TH�L��4�420��50"#+Ss+slb\1z\\\ �P�      3      x������ � �      4      x�3�4�2bN#.SNc.3N�=... (      !     x���˒�@�u�S�lh�K�*
�� x��lZ@�厩�{LMj*ٜ��W���y@I����-�ID/��3�>C��8:�Dc�F��j�̵���2�������w+��&�De_Ϡ9M2	�Q.*W�h���ک���֤�rQ[Th�<Lp�ͩ�DF�=W��L�s�@�*OPVE唿3�SV!ed9�GR҂9'!��G���A_�y�gO ��(��$E ��kwO������:������,a�/>Z��黻���p4�N���A��_2�=A�
HE�a������~S��]�N���LG[U;��W�-���qwF�Wi�RXd%�g�U��SP!w�I��~�D���ȉ�iF���W׌�UT�b��X0��ML�zh_+g�6�,�&���Q�.'��h���f�g��=j��1#p�E������5�Ε\���zn�-�d�ÕW9'#ʙ켰��mL�܂��5��N���ꆟ|L7m%�X�,��.��1��I��q��w�Mu�	B��ﷃ���W�ߘ^��c�#�     