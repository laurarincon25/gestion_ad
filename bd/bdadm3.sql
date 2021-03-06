PGDMP                         w         
   admgestion    10.5    10.5 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        1262    29354 
   admgestion    DATABASE     �   CREATE DATABASE admgestion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE admgestion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            !           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            "           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    33849    carrera_documento    TABLE       CREATE TABLE public.carrera_documento (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    documento_id integer NOT NULL,
    precio double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.carrera_documento;
       public         postgres    false    3            �            1259    33847    carrera_documento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.carrera_documento_id_seq;
       public       postgres    false    232    3            #           0    0    carrera_documento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.carrera_documento_id_seq OWNED BY public.carrera_documento.id;
            public       postgres    false    231            �            1259    33833    carreras    TABLE     �   CREATE TABLE public.carreras (
    id integer NOT NULL,
    carrera character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.carreras;
       public         postgres    false    3            �            1259    33831    carreras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carreras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.carreras_id_seq;
       public       postgres    false    3    228            $           0    0    carreras_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.carreras_id_seq OWNED BY public.carreras.id;
            public       postgres    false    227            �            1259    33635 	   data_rows    TABLE       CREATE TABLE public.data_rows (
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
       public         postgres    false    3            �            1259    33633    data_rows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.data_rows_id_seq;
       public       postgres    false    3    204            %           0    0    data_rows_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.data_rows_id_seq OWNED BY public.data_rows.id;
            public       postgres    false    203            �            1259    33619 
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
       public         postgres    false    3            �            1259    33617    data_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_types_id_seq;
       public       postgres    false    3    202            &           0    0    data_types_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_types_id_seq OWNED BY public.data_types.id;
            public       postgres    false    201            �            1259    33898    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.departamentos;
       public         postgres    false    3            �            1259    33896    departamentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.departamentos_id_seq;
       public       postgres    false    3    242            '           0    0    departamentos_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.departamentos_id_seq OWNED BY public.departamentos.id;
            public       postgres    false    241            �            1259    33825 
   documentos    TABLE     �   CREATE TABLE public.documentos (
    id integer NOT NULL,
    "Nombre" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.documentos;
       public         postgres    false    3            �            1259    33823    documentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.documentos_id_seq;
       public       postgres    false    226    3            (           0    0    documentos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.documentos_id_seq OWNED BY public.documentos.id;
            public       postgres    false    225            �            1259    33890    item_servicios    TABLE     �   CREATE TABLE public.item_servicios (
    id integer NOT NULL,
    servicio_id integer,
    nombre character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.item_servicios;
       public         postgres    false    3            �            1259    33888    item_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.item_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.item_servicios_id_seq;
       public       postgres    false    240    3            )           0    0    item_servicios_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.item_servicios_id_seq OWNED BY public.item_servicios.id;
            public       postgres    false    239            �            1259    33667 
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
       public         postgres    false    3            �            1259    33665    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public       postgres    false    208    3            *           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
            public       postgres    false    207            �            1259    33657    menus    TABLE     �   CREATE TABLE public.menus (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.menus;
       public         postgres    false    3            �            1259    33655    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public       postgres    false    3    206            +           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
            public       postgres    false    205            �            1259    33582 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    33580    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197    3            ,           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    33868    pagos    TABLE     2  CREATE TABLE public.pagos (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    "uuidSoli" character varying(255) NOT NULL,
    pago character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pagos;
       public         postgres    false    3            �            1259    33866    pagos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pagos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pagos_id_seq;
       public       postgres    false    236    3            -           0    0    pagos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pagos_id_seq OWNED BY public.pagos.id;
            public       postgres    false    235            �            1259    33601    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    33721    permission_role    TABLE     j   CREATE TABLE public.permission_role (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         postgres    false    3            �            1259    33711    permissions    TABLE     �   CREATE TABLE public.permissions (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    table_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            �            1259    33709    permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    214    3            .           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    213            �            1259    33793    post_tag    TABLE     �   CREATE TABLE public.post_tag (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.post_tag;
       public         postgres    false    3            �            1259    33791    post_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.post_tag_id_seq;
       public       postgres    false    3    220            /           0    0    post_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.post_tag_id_seq OWNED BY public.post_tag.id;
            public       postgres    false    219            �            1259    33814 	   programas    TABLE       CREATE TABLE public.programas (
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
       public         postgres    false    3            �            1259    33812    programas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.programas_id_seq;
       public       postgres    false    3    224            0           0    0    programas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.programas_id_seq OWNED BY public.programas.id;
            public       postgres    false    223            �            1259    33684    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            �            1259    33682    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    3    210            1           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    209            �            1259    33841 	   servicios    TABLE     �   CREATE TABLE public.servicios (
    id integer NOT NULL,
    servicio character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.servicios;
       public         postgres    false    3            �            1259    33839    servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.servicios_id_seq;
       public       postgres    false    3    230            2           0    0    servicios_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.servicios_id_seq OWNED BY public.servicios.id;
            public       postgres    false    229            �            1259    33697    settings    TABLE     -  CREATE TABLE public.settings (
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
       public         postgres    false    3            �            1259    33695    settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.settings_id_seq;
       public       postgres    false    3    212            3           0    0    settings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;
            public       postgres    false    211            �            1259    33879    solicitud_servicios    TABLE     .  CREATE TABLE public.solicitud_servicios (
    id integer NOT NULL,
    user_id integer NOT NULL,
    servicios json NOT NULL,
    observaciones character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.solicitud_servicios;
       public         postgres    false    3            �            1259    33877    solicitud_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.solicitud_servicios_id_seq;
       public       postgres    false    3    238            4           0    0    solicitud_servicios_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.solicitud_servicios_id_seq OWNED BY public.solicitud_servicios.id;
            public       postgres    false    237            �            1259    33857 
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
       public         postgres    false    3            �            1259    33855    solicituds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicituds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.solicituds_id_seq;
       public       postgres    false    234    3            5           0    0    solicituds_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.solicituds_id_seq OWNED BY public.solicituds.id;
            public       postgres    false    233            �            1259    33801    sugerencias    TABLE     �   CREATE TABLE public.sugerencias (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sugerencias;
       public         postgres    false    3            �            1259    33799    sugerencias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sugerencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sugerencias_id_seq;
       public       postgres    false    3    222            6           0    0    sugerencias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sugerencias_id_seq OWNED BY public.sugerencias.id;
            public       postgres    false    221            �            1259    33750    translations    TABLE     d  CREATE TABLE public.translations (
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
       public         postgres    false    3            �            1259    33748    translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.translations_id_seq;
       public       postgres    false    217    3            7           0    0    translations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;
            public       postgres    false    216            �            1259    33774 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         postgres    false    3            �            1259    33590    users    TABLE     �  CREATE TABLE public.users (
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
       public         postgres    false    3            �            1259    33588    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    199    3            8           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198            !           2604    33852    carrera_documento id    DEFAULT     |   ALTER TABLE ONLY public.carrera_documento ALTER COLUMN id SET DEFAULT nextval('public.carrera_documento_id_seq'::regclass);
 C   ALTER TABLE public.carrera_documento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231    232                       2604    33836    carreras id    DEFAULT     j   ALTER TABLE ONLY public.carreras ALTER COLUMN id SET DEFAULT nextval('public.carreras_id_seq'::regclass);
 :   ALTER TABLE public.carreras ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228                       2604    33638    data_rows id    DEFAULT     l   ALTER TABLE ONLY public.data_rows ALTER COLUMN id SET DEFAULT nextval('public.data_rows_id_seq'::regclass);
 ;   ALTER TABLE public.data_rows ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204                       2604    33622    data_types id    DEFAULT     n   ALTER TABLE ONLY public.data_types ALTER COLUMN id SET DEFAULT nextval('public.data_types_id_seq'::regclass);
 <   ALTER TABLE public.data_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            &           2604    33901    departamentos id    DEFAULT     t   ALTER TABLE ONLY public.departamentos ALTER COLUMN id SET DEFAULT nextval('public.departamentos_id_seq'::regclass);
 ?   ALTER TABLE public.departamentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241    242                       2604    33828    documentos id    DEFAULT     n   ALTER TABLE ONLY public.documentos ALTER COLUMN id SET DEFAULT nextval('public.documentos_id_seq'::regclass);
 <   ALTER TABLE public.documentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    226    226            %           2604    33893    item_servicios id    DEFAULT     v   ALTER TABLE ONLY public.item_servicios ALTER COLUMN id SET DEFAULT nextval('public.item_servicios_id_seq'::regclass);
 @   ALTER TABLE public.item_servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239    240                       2604    33670    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    208    208                       2604    33660    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206                       2604    33585    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            #           2604    33871    pagos id    DEFAULT     d   ALTER TABLE ONLY public.pagos ALTER COLUMN id SET DEFAULT nextval('public.pagos_id_seq'::regclass);
 7   ALTER TABLE public.pagos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    235    236                       2604    33714    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214                       2604    33796    post_tag id    DEFAULT     j   ALTER TABLE ONLY public.post_tag ALTER COLUMN id SET DEFAULT nextval('public.post_tag_id_seq'::regclass);
 :   ALTER TABLE public.post_tag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220                       2604    33817    programas id    DEFAULT     l   ALTER TABLE ONLY public.programas ALTER COLUMN id SET DEFAULT nextval('public.programas_id_seq'::regclass);
 ;   ALTER TABLE public.programas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224                       2604    33687    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210                        2604    33844    servicios id    DEFAULT     l   ALTER TABLE ONLY public.servicios ALTER COLUMN id SET DEFAULT nextval('public.servicios_id_seq'::regclass);
 ;   ALTER TABLE public.servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    229    230                       2604    33700    settings id    DEFAULT     j   ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);
 :   ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212            $           2604    33882    solicitud_servicios id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_servicios ALTER COLUMN id SET DEFAULT nextval('public.solicitud_servicios_id_seq'::regclass);
 E   ALTER TABLE public.solicitud_servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            "           2604    33860    solicituds id    DEFAULT     n   ALTER TABLE ONLY public.solicituds ALTER COLUMN id SET DEFAULT nextval('public.solicituds_id_seq'::regclass);
 <   ALTER TABLE public.solicituds ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    233    234                       2604    33804    sugerencias id    DEFAULT     p   ALTER TABLE ONLY public.sugerencias ALTER COLUMN id SET DEFAULT nextval('public.sugerencias_id_seq'::regclass);
 =   ALTER TABLE public.sugerencias ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222                       2604    33753    translations id    DEFAULT     r   ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);
 >   ALTER TABLE public.translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217                       2604    33593    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199                      0    33849    carrera_documento 
   TABLE DATA               i   COPY public.carrera_documento (id, carrera_id, documento_id, precio, created_at, updated_at) FROM stdin;
    public       postgres    false    232   i�                 0    33833    carreras 
   TABLE DATA               G   COPY public.carreras (id, carrera, created_at, updated_at) FROM stdin;
    public       postgres    false    228   ��       �          0    33635 	   data_rows 
   TABLE DATA               �   COPY public.data_rows (id, data_type_id, field, type, display_name, required, browse, read, edit, add, delete, details, "order") FROM stdin;
    public       postgres    false    204   ��       �          0    33619 
   data_types 
   TABLE DATA               �   COPY public.data_types (id, name, slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) FROM stdin;
    public       postgres    false    202   r�                 0    33898    departamentos 
   TABLE DATA               K   COPY public.departamentos (id, nombre, created_at, updated_at) FROM stdin;
    public       postgres    false    242   ��       
          0    33825 
   documentos 
   TABLE DATA               J   COPY public.documentos (id, "Nombre", created_at, updated_at) FROM stdin;
    public       postgres    false    226   �                 0    33890    item_servicios 
   TABLE DATA               Y   COPY public.item_servicios (id, servicio_id, nombre, created_at, updated_at) FROM stdin;
    public       postgres    false    240   7�       �          0    33667 
   menu_items 
   TABLE DATA               �   COPY public.menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, parameters) FROM stdin;
    public       postgres    false    208   ��       �          0    33657    menus 
   TABLE DATA               A   COPY public.menus (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    206   q�       �          0    33582 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   ��                 0    33868    pagos 
   TABLE DATA               Z   COPY public.pagos (id, uuid, "uuidSoli", pago, email, created_at, updated_at) FROM stdin;
    public       postgres    false    236   �       �          0    33601    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    200   $�       �          0    33721    permission_role 
   TABLE DATA               A   COPY public.permission_role (permission_id, role_id) FROM stdin;
    public       postgres    false    215   A�       �          0    33711    permissions 
   TABLE DATA               R   COPY public.permissions (id, key, table_name, created_at, updated_at) FROM stdin;
    public       postgres    false    214   ��                 0    33793    post_tag 
   TABLE DATA               >   COPY public.post_tag (id, created_at, updated_at) FROM stdin;
    public       postgres    false    220   �                 0    33814 	   programas 
   TABLE DATA               q   COPY public.programas (id, carrera, pensum, descripcion, nrotelefono, email, created_at, updated_at) FROM stdin;
    public       postgres    false    224   <�       �          0    33684    roles 
   TABLE DATA               O   COPY public.roles (id, name, display_name, created_at, updated_at) FROM stdin;
    public       postgres    false    210   Y�                 0    33841 	   servicios 
   TABLE DATA               Q   COPY public.servicios (id, servicio, status, created_at, updated_at) FROM stdin;
    public       postgres    false    230   �       �          0    33697    settings 
   TABLE DATA               a   COPY public.settings (id, key, display_name, value, details, type, "order", "group") FROM stdin;
    public       postgres    false    212   ��                 0    33879    solicitud_servicios 
   TABLE DATA               t   COPY public.solicitud_servicios (id, user_id, servicios, observaciones, status, created_at, updated_at) FROM stdin;
    public       postgres    false    238   ��                 0    33857 
   solicituds 
   TABLE DATA               d   COPY public.solicituds (id, uuid, users_id, documentos, status, created_at, updated_at) FROM stdin;
    public       postgres    false    234   ��                 0    33801    sugerencias 
   TABLE DATA               W   COPY public.sugerencias (id, descripcion, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    222   ��                 0    33750    translations 
   TABLE DATA               w   COPY public.translations (id, table_name, column_name, foreign_key, locale, value, created_at, updated_at) FROM stdin;
    public       postgres    false    217   O�                 0    33774 
   user_roles 
   TABLE DATA               6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public       postgres    false    218   l�       �          0    33590    users 
   TABLE DATA               }   COPY public.users (id, name, email, password, remember_token, created_at, updated_at, avatar, role_id, settings) FROM stdin;
    public       postgres    false    199   ��       9           0    0    carrera_documento_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.carrera_documento_id_seq', 1, false);
            public       postgres    false    231            :           0    0    carreras_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.carreras_id_seq', 1, false);
            public       postgres    false    227            ;           0    0    data_rows_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_rows_id_seq', 38, true);
            public       postgres    false    203            <           0    0    data_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_types_id_seq', 6, true);
            public       postgres    false    201            =           0    0    departamentos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.departamentos_id_seq', 3, true);
            public       postgres    false    241            >           0    0    documentos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.documentos_id_seq', 1, false);
            public       postgres    false    225            ?           0    0    item_servicios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.item_servicios_id_seq', 6, true);
            public       postgres    false    239            @           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 14, true);
            public       postgres    false    207            A           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menus_id_seq', 1, true);
            public       postgres    false    205            B           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 34, true);
            public       postgres    false    196            C           0    0    pagos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pagos_id_seq', 1, false);
            public       postgres    false    235            D           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 41, true);
            public       postgres    false    213            E           0    0    post_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_tag_id_seq', 1, false);
            public       postgres    false    219            F           0    0    programas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.programas_id_seq', 1, false);
            public       postgres    false    223            G           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 6, true);
            public       postgres    false    209            H           0    0    servicios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.servicios_id_seq', 4, true);
            public       postgres    false    229            I           0    0    settings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.settings_id_seq', 10, true);
            public       postgres    false    211            J           0    0    solicitud_servicios_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.solicitud_servicios_id_seq', 17, true);
            public       postgres    false    237            K           0    0    solicituds_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.solicituds_id_seq', 1, false);
            public       postgres    false    233            L           0    0    sugerencias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sugerencias_id_seq', 3, true);
            public       postgres    false    221            M           0    0    translations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.translations_id_seq', 1, false);
            public       postgres    false    216            N           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
            public       postgres    false    198            `           2606    33854 (   carrera_documento carrera_documento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.carrera_documento
    ADD CONSTRAINT carrera_documento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.carrera_documento DROP CONSTRAINT carrera_documento_pkey;
       public         postgres    false    232            \           2606    33838    carreras carreras_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carreras DROP CONSTRAINT carreras_pkey;
       public         postgres    false    228            5           2606    33649    data_rows data_rows_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_pkey;
       public         postgres    false    204            /           2606    33630 !   data_types data_types_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_name_unique;
       public         postgres    false    202            1           2606    33628    data_types data_types_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_pkey;
       public         postgres    false    202            3           2606    33632 !   data_types data_types_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_slug_unique;
       public         postgres    false    202            j           2606    33903     departamentos departamentos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pkey;
       public         postgres    false    242            Z           2606    33830    documentos documentos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.documentos DROP CONSTRAINT documentos_pkey;
       public         postgres    false    226            h           2606    33895 "   item_servicios item_servicios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.item_servicios
    ADD CONSTRAINT item_servicios_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.item_servicios DROP CONSTRAINT item_servicios_pkey;
       public         postgres    false    240            ;           2606    33676    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public         postgres    false    208            7           2606    33664    menus menus_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_name_unique;
       public         postgres    false    206            9           2606    33662    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public         postgres    false    206            (           2606    33587    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            d           2606    33876    pagos pagos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_pkey;
       public         postgres    false    236            I           2606    33735 $   permission_role permission_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public         postgres    false    215    215            F           2606    33719    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    214            T           2606    33798    post_tag post_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.post_tag
    ADD CONSTRAINT post_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.post_tag DROP CONSTRAINT post_tag_pkey;
       public         postgres    false    220            X           2606    33822    programas programas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT programas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.programas DROP CONSTRAINT programas_pkey;
       public         postgres    false    224            =           2606    33694    roles roles_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_unique;
       public         postgres    false    210            ?           2606    33692    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    210            ^           2606    33846    servicios servicios_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public         postgres    false    230            A           2606    33708    settings settings_key_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_unique UNIQUE (key);
 F   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_key_unique;
       public         postgres    false    212            C           2606    33706    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public         postgres    false    212            f           2606    33887 ,   solicitud_servicios solicitud_servicios_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.solicitud_servicios
    ADD CONSTRAINT solicitud_servicios_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.solicitud_servicios DROP CONSTRAINT solicitud_servicios_pkey;
       public         postgres    false    238            b           2606    33865    solicituds solicituds_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.solicituds
    ADD CONSTRAINT solicituds_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.solicituds DROP CONSTRAINT solicituds_pkey;
       public         postgres    false    234            V           2606    33806    sugerencias sugerencias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_pkey;
       public         postgres    false    222            L           2606    33758    translations translations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_pkey;
       public         postgres    false    217            N           2606    33760 J   translations translations_table_name_column_name_foreign_key_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique UNIQUE (table_name, column_name, foreign_key, locale);
 t   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique;
       public         postgres    false    217    217    217    217            P           2606    33788    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public         postgres    false    218    218            *           2606    33600    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    199            ,           2606    33598    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199            -           1259    33607    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    200            G           1259    33736 #   permission_role_permission_id_index    INDEX     h   CREATE INDEX permission_role_permission_id_index ON public.permission_role USING btree (permission_id);
 7   DROP INDEX public.permission_role_permission_id_index;
       public         postgres    false    215            J           1259    33737    permission_role_role_id_index    INDEX     \   CREATE INDEX permission_role_role_id_index ON public.permission_role USING btree (role_id);
 1   DROP INDEX public.permission_role_role_id_index;
       public         postgres    false    215            D           1259    33720    permissions_key_index    INDEX     L   CREATE INDEX permissions_key_index ON public.permissions USING btree (key);
 )   DROP INDEX public.permissions_key_index;
       public         postgres    false    214            Q           1259    33790    user_roles_role_id_index    INDEX     R   CREATE INDEX user_roles_role_id_index ON public.user_roles USING btree (role_id);
 ,   DROP INDEX public.user_roles_role_id_index;
       public         postgres    false    218            R           1259    33789    user_roles_user_id_index    INDEX     R   CREATE INDEX user_roles_user_id_index ON public.user_roles USING btree (user_id);
 ,   DROP INDEX public.user_roles_user_id_index;
       public         postgres    false    218            l           2606    33650 (   data_rows data_rows_data_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES public.data_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_data_type_id_foreign;
       public       postgres    false    2865    202    204            m           2606    33677 %   menu_items menu_items_menu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_menu_id_foreign;
       public       postgres    false    2873    206    208            n           2606    33724 5   permission_role permission_role_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_foreign;
       public       postgres    false    2886    215    214            o           2606    33729 /   permission_role permission_role_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_foreign;
       public       postgres    false    210    215    2879            r           2606    33807 '   sugerencias sugerencias_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_user_id_foreign;
       public       postgres    false    199    2860    222            q           2606    33782 %   user_roles user_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_foreign;
       public       postgres    false    218    2879    210            p           2606    33777 %   user_roles user_roles_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_foreign;
       public       postgres    false    2860    199    218            k           2606    33769    users users_role_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public       postgres    false    210    199    2879                  x������ � �            x������ � �      �   �  x��UQo�0~���4�q�oU;M��jjY��"C���Ql�P���s�VH���������|_"H�Z�3ޠ�[��b�L� *Vr���Z�y a
^2QX�7k�(�c@�L�߲���ϭa#���'�ox�Mj������?v����-���o�p�y�1�O�\iV���:�z�#�x�U��~Y�%y��x$�f�5H�l�ѵ],��GxlvWPƌ�Z*-�F<kx����z5�������y\���S�=��l�yo�Q�2��K���W�	��zS�e}"�5�Ū�:L&rp���[�`�6V.T]�Mfn �k��:;ܽ�W�;"!&�Q�%�6�ԫ�_����[���m�:(: m��Ä����)rΊnp~X�-ЌW��0ŵ�(zyw�i�>�rOQtfdI�s3K �ok�I
��sc2D�\�#���y��9G!�z�`���&vk=�S	&82���+3��1�(��r�{���nT7@%�Y�=��v F8J x���7��HR`�9`��Q�q�# ����\H{ڭ�2�fz�:hg�@�i��%Ƙ`�,1�4r*�^�j�Kh^f;�E�ùj�5��k#\w���#`�{%�T5l��#f�o�j����-��gᱞ��R�~�y�	�7 ��a�i��W����������)�k���}����'��'?ק��5��=�~��NV6      �   &  x����j�0E��Y�E'P�J�����J�-��l����X1Ql�B��e��Hs$Qh��n�7T/��K?��k4��׻)����+����� #�&&,�lA�HA�lF`rГ�EV��(�:�ۈA����A��t�3P��oPr��`�Vn�gT/'CM�yf�����rU��I�qw�F���o�Z�Q�S�d=��|-�͕�eF�e�U��Ր八uڍ־��o���#T/Cu,�qi��i�� ��hT�l���}D�8B�\���_�9��2��*Xr�������         b   x�3�tI-H,*I�M�+�WHIU�,.I�M�420��50�54R04�25�21�&�e�a�o"Ѐ�K2�1L1�24�&�e�a����XM01�&����� ��4�      
      x������ � �         �   x�m���0F�{��/��KAۍ����8�\KhM�y/�#�bB\t������@��E�ı{��g�_�K��I�0ye�"Ű�.��̆[�n�C5o��z��X`�k�t�a	gw���?%n<|�ZV���X��G�M��T���bx� ���M�      �   }  x����n�0���� ���n�%�żp۝�Ri��@M[���;�*�6f��������0�hE�a'��})����%{&C5ڮ��8��0�C�p�H�E{3�xL���uC����	^����d0R��1/)�1L̧bR��d��L2��Lgˤ�lD�&��"��[�4�-2�C��At6���J�|0�ϡ�Fˊ�Ig �ts8��0ʪ3���Z��b}�Bn�{nVS�R@=��D��[��l�����5k�y~\9o�d�Zg��W�
l?F�Lk^�%��f:X�4t@��GG;@x�X�����O�����.�W�����'�"�z��U�v�I�ݓg�q�)M��5Y�a�������f��4�&P��.����m�A����      �   +   x�3�LL����420��50�54R04�21�20�&����� 3�
`      �   K  x�u��n� �7��0�˻����f�:&�*o�!�Ӵ��D:�p���`p	�&��'g�U�r��y��?��Z!�W���u�t��P�H/;H�D-��ٻ:k���^Oj�F�XTP2ܯ��Y-$L�������:�̀�mUgצ�𳐚
f;W혵 ��@1	^���b�7v+������:�)t�a����2��R����(Ao��@d��`��;�#��v�B� сx�Nm~U��5 V@<O��ٻ�ԅ���_fkZl��\�|����n��X�+��f� 2���֯���j�>3C\���������ӆL��lN;S��}[M��eF�4!i�Ӑ�Ρ�5�HLGB���/{��j�1;8$��O?QU�[ᢃ2���g�*�\z��u�C�>��%��Ь������� fy�����F5�DՓ���|*ŝ=;uQU�W1=��)��-b�^�`��C�����Ԟ�sڵF�*���C�"��̦-=��Dm3�����*>��X����&�Ks�B��!�'Q�W����N�nEz	pB��6ҧ�W�;�g�:��(�!+3�W�z��_���?�q�            x������ � �      �      x������ � �      �   \   x�ι�P��*�0��c{���0��(��M㖶�ٮv�����8L�V��Z��^ !�0�#�0�#�0"� �"� �"��X��>3/16      �   b  x���[n�0E��Ut����D�L�Z�G��n�$~Ф|��F:1s�tZ����A������&/�����,� 	d�﷐4�=���Fl�Y��K���yRÅ���篎Wܹރ[������&��}�G1�8����^iu�s5M\��X꺕Ĳ{���*�+��Ѻ�p�j�g+���Jb]�RPӕD�ta�?��>c����[� �.�����צ���%..\[>]V���HV�E�R���HW�fS�E�}JET8̫���k���I�����?�ҥ��~2,�B���ː���uȰ�TK+�?���'�N�RR��B6��26�]H�]�w|���}�{            x������ � �            x������ � �      �   �   x�����0Eg�+�EI��ِ:3���ѦrK��T*�2��q�k][�6���4G7��GO ��.!��*��1�ރ%8{j��]��_i
�7�-�K�M�*/c3.�����`.k�~�p�ߨ��*-bs0�l.��?H��0c�
w�R�*ưX���L�q~����x�cx; �
Kn�         �   x�m�=
1��z���Jf�a�t��6!?X�0���#x1mŴ/<�uK�I	%��i�4OĊ�ٳ3˨!�=e)�$>�����P���[���Ѥ�����Ց5��"���퇊I��{���i��x��	?�)9      �   '  x�}�OO�0����.�:��P�r��Ҕ5!�Hc�d�}{�8� n��{�Ϋ��A�A#�c,���,�����*f��{�߃FK��9��aNَcz�J�9A5A
Q�斛}н_��7m�Zv���<��ChV,��n���-7Q��,�'�F^9�YMj�XP\f�C"
�	�t�p����i<�:��Y�	!۔�m%<h���I�Z���4� i�u�b��x�-=�s$�&��G���MlL~]gMu�E��6��]���l�H�'�o7ȝ8g��^ʢ(� �D�7         �  x�ݗ[o�0ǟ�@yn���iP�QP��K�"$dB�IC�ȴ�>�n��V��R��9�9?�c�@�k�{rC�h���F3�V��cߧ���M[�Z�t��f��_U�m�N�|��hA'n�`����.��㱾/i����_ˉR�����>2Ě[c~��e���6��S�E��Wrw��,'�CÅF�e�hK��s��3�gb�GP.��|�eD#/tX�-l}��a�GN���֡t��S�y0��*�C"�*�&�i��!�\a�d�w�7c�[_ K 4d=�D<Mᴓ,"I�y�{�D��8d�~�dD��[�e���Ґ��x�2�4kqOK��X�!�u��{�Oeq���4��`�6q�ۖM��p���61K*�Mf22�"O��
ﻔf��Pf3	
`�JC�7~�g݄�o�2���j�t���襴��$�ᥣ������t��`�`S�!����$IFFI"3b�JCp�6��d�˶��i�4�CN�H EĐ2HhR��ς�S�w�̛Zo|mT77��ݴ1%I�%�+�Q\{P:���)"�n�*A����v���6����;��q�	�A/�5�W�k����Q��7E���X��!���[nZ�I������nypw�X�^ݔ��Vǽ�=�N���:�λ��ȏ/6K��6w��/[&�r�Y��P�!����_            x������ � �         h   x�m�A
�0��ur�\@iR�ڳ�&�`�(x�aƍH���	T��e��Q7	<vA:b�a�!�#�G��h2��[�Ė!�b��i)���8=�)����yd(�            x������ � �            x�3�4�2�4����� ��      �   [  x�m�=s�0 @��+z�k�IS��������D��"���^�{���.ox���A�d�~��,�0�㮏�}���aK�lQ����h��NH�Ӳ=7�W�����,� ԁ1�e%I�o�&/�Z>N�{[<��m�ZG��ӭ�)�&�W��/����Cd��=�w��9��;U����Yz����;�czY]�nj�d�����k�G����7�u�SC�3%�/Y��ǿ�	!G�=��ev�'�z��k�R��wS�!�qC|�����v,L�]������!���lw@����ٜ�ƍ��QmY�"�������U2��_��?8�oL�wx-3�@�k1�4�BI��     