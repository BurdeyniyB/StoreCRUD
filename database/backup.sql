PGDMP                          }            online_store %   14.15 (Ubuntu 14.15-0ubuntu0.22.04.1) %   14.15 (Ubuntu 14.15-0ubuntu0.22.04.1) Y    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16705    online_store    DATABASE     a   CREATE DATABASE online_store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE online_store;
                postgres    false            �            1259    16770    basket_devices    TABLE     �   CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);
 "   DROP TABLE public.basket_devices;
       public         heap    postgres    false            �            1259    16769    basket_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.basket_devices_id_seq;
       public          postgres    false    220            �           0    0    basket_devices_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;
          public          postgres    false    219            �            1259    16719    baskets    TABLE     �   CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            �            1259    16718    baskets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baskets_id_seq;
       public          postgres    false    212            �           0    0    baskets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;
          public          postgres    false    211            �            1259    16731    brands    TABLE     �   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16730    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    214            �           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    213            �            1259    16804    device_infos    TABLE       CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);
     DROP TABLE public.device_infos;
       public         heap    postgres    false            �            1259    16803    device_infos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.device_infos_id_seq;
       public          postgres    false    224            �           0    0    device_infos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.device_infos_id_seq OWNED BY public.device_infos.id;
          public          postgres    false    223            �            1259    16749    devices    TABLE     c  CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    price integer NOT NULL,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "brandId" integer,
    "typeId" integer
);
    DROP TABLE public.devices;
       public         heap    postgres    false            �            1259    16748    devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    218            �           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    217            �            1259    24787    order_devices    TABLE     �   CREATE TABLE public.order_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "orderId" integer,
    "deviceId" integer
);
 !   DROP TABLE public.order_devices;
       public         heap    postgres    false            �            1259    24786    order_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_devices_id_seq;
       public          postgres    false    228            �           0    0    order_devices_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_devices_id_seq OWNED BY public.order_devices.id;
          public          postgres    false    227            �            1259    24773    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    phone_number character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    24772    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    226            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    225            �            1259    16787    ratings    TABLE       CREATE TABLE public.ratings (
    id integer NOT NULL,
    rating integer NOT NULL,
    comment character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer,
    "userId" integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    16786    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    222            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    221            �            1259    16740    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    16739    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    216            �           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    215            �            1259    16707    users    TABLE     '  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16706    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            �           2604    16773    basket_devices id    DEFAULT     v   ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);
 @   ALTER TABLE public.basket_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16722 
   baskets id    DEFAULT     h   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16734 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16807    device_infos id    DEFAULT     r   ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq'::regclass);
 >   ALTER TABLE public.device_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16752 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    24790    order_devices id    DEFAULT     t   ALTER TABLE ONLY public.order_devices ALTER COLUMN id SET DEFAULT nextval('public.order_devices_id_seq'::regclass);
 ?   ALTER TABLE public.order_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    24776 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16790 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16743    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16710    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            |          0    16770    basket_devices 
   TABLE DATA           ^   COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;
    public          postgres    false    220   �i       t          0    16719    baskets 
   TABLE DATA           I   COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    212   �i       v          0    16731    brands 
   TABLE DATA           D   COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    214   ,j       �          0    16804    device_infos 
   TABLE DATA           d   COPY public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;
    public          postgres    false    224   �j       z          0    16749    devices 
   TABLE DATA           s   COPY public.devices (id, name, description, price, img, "createdAt", "updatedAt", "brandId", "typeId") FROM stdin;
    public          postgres    false    218   ?k       �          0    24787    order_devices 
   TABLE DATA           \   COPY public.order_devices (id, "createdAt", "updatedAt", "orderId", "deviceId") FROM stdin;
    public          postgres    false    228   fm       �          0    24773    orders 
   TABLE DATA           _   COPY public.orders (id, phone_number, address, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    226   �m       ~          0    16787    ratings 
   TABLE DATA           f   COPY public.ratings (id, rating, comment, "createdAt", "updatedAt", "deviceId", "userId") FROM stdin;
    public          postgres    false    222   ,n       x          0    16740    types 
   TABLE DATA           C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    216   �n       r          0    16707    users 
   TABLE DATA           T   COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    210   0o       �           0    0    basket_devices_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.basket_devices_id_seq', 2, true);
          public          postgres    false    219            �           0    0    baskets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.baskets_id_seq', 4, true);
          public          postgres    false    211            �           0    0    brands_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brands_id_seq', 7, true);
          public          postgres    false    213            �           0    0    device_infos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.device_infos_id_seq', 4, true);
          public          postgres    false    223            �           0    0    devices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.devices_id_seq', 23, true);
          public          postgres    false    217            �           0    0    order_devices_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_devices_id_seq', 3, true);
          public          postgres    false    227            �           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 3, true);
          public          postgres    false    225            �           0    0    ratings_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ratings_id_seq', 1, true);
          public          postgres    false    221            �           0    0    types_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.types_id_seq', 7, true);
          public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    209            �           2606    16775 "   basket_devices basket_devices_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT basket_devices_pkey;
       public            postgres    false    220            �           2606    16724    baskets baskets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    212            �           2606    16738    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    214            �           2606    16736    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    214            �           2606    16811    device_infos device_infos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT device_infos_pkey;
       public            postgres    false    224            �           2606    16758    devices devices_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_name_key;
       public            postgres    false    218            �           2606    16756    devices devices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    218            �           2606    24792     order_devices order_devices_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT order_devices_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT order_devices_pkey;
       public            postgres    false    228            �           2606    24780    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    226            �           2606    16792    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    222            �           2606    16747    types types_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.types DROP CONSTRAINT types_name_key;
       public            postgres    false    216            �           2606    16745    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    216            �           2606    16717    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    210            �           2606    16715    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            �           2606    16776 +   basket_devices basket_devices_basketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_basketId_fkey";
       public          postgres    false    212    220    3268            �           2606    16781 +   basket_devices basket_devices_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_deviceId_fkey";
       public          postgres    false    218    3280    220            �           2606    16725    baskets baskets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.baskets DROP CONSTRAINT "baskets_userId_fkey";
       public          postgres    false    210    3266    212            �           2606    16812 '   device_infos device_infos_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT "device_infos_deviceId_fkey";
       public          postgres    false    224    3280    218            �           2606    16759    devices devices_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.devices DROP CONSTRAINT "devices_brandId_fkey";
       public          postgres    false    214    218    3272            �           2606    16764    devices devices_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.devices DROP CONSTRAINT "devices_typeId_fkey";
       public          postgres    false    218    216    3276            �           2606    24798 )   order_devices order_devices_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT "order_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT "order_devices_deviceId_fkey";
       public          postgres    false    3280    228    218            �           2606    24793 (   order_devices order_devices_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT "order_devices_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT "order_devices_orderId_fkey";
       public          postgres    false    228    226    3288            �           2606    24781    orders orders_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT "orders_userId_fkey";
       public          postgres    false    210    226    3266            �           2606    16793    ratings ratings_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_deviceId_fkey";
       public          postgres    false    218    222    3280            �           2606    16798    ratings ratings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_userId_fkey";
       public          postgres    false    3266    222    210            |      x������ � �      t   N   x�}˱�0�:LA���,����e)��pA�M�i�e�S2����ɰ��龽C�b�d�J�Bs�'�BDW�      v   �   x�}˱
�0����)ܥ��%i�lnn..�lS(��w�	���\Ӵn���u,�A8�D������P�,��H<o�����mLe���fh�;���޹�5�����:�乼J�h e��w�;!�6,@R      �   p   x�3�r��pw�4202�50�50R04�22�24�332�60�+e�e��XR�ZT�ib``��A�QƜiP��
p=�
�V�� =F���a�2�2�,�B( ߨ=... H?�      z     x�}Աn�0�Y~
���G�u(��Y����Hl����Oߓ�:QBt$�p�Ӻ�������/�C7�S>���|���&A���8eV�N��P��U9�\}D�n~,��� {�G��``П �uz�W59�YX)�]H	����X�b���R 4ņZ#����H�FB1�M|8�����f=�e"�����L�S1˱:4dYfE���#�����������s����)�>��z�/��0Z���x�*���L�%Q�ǎ���yY�P�yY�K��r�N=n<��n��a�K�Ɛ1��$kʮ�$[��k��<n��!��gu�s�<�?<��i�U���xi��Ց)��b�ʆ�W�J�NQ{���G���k07�0��M�<��F���@���SR(�T��K�OU�(:F�-I���ӛD��＞�c��o�l$�K^1�`e�6Er�ɐT0թdJ�9Vt%|�Ј -|м�:���Wv����w�~�����&K�5���ɋDdR���T̆���=h��&���������~']Bk      �   D   x�}˱�0C��<=Jd��H�%��A���~�+Lߍj�aN>��O�G2��G������wSFbu /̐ b      �   b   x��α
� F�������M�5Z["� h����!����s��t��,G���]�fY�@ԃ=�ThN� ��dL�2ҧ�%�#��}�]�5���5      ~   H   x�3�4���,V ����������Բ��TN##S]C]CCC+c+Cs=Kcm#|R��F\1z\\\ @�}      x   �   x�}�K� ��� ��8K7(Ee��"�z���(���~O�iy���!q��A��<w�����  �ޖ}
�s9J�"���A����xĽ�94���d��0��d��+)�sQ�F��u�:�7��0.�,I?�z6����I�LhV�      r     x�}λr�@ @�z�
���>�P�FO5��I* � Q����L�[�C@ۤ�˾��#��I<F|\�UO��ҾU��nt�ҽ$@N��|��\*��ܹ��}�5	q\"��k@��'��0W��b�TyB�$Q%evJ�~���ic��#��#�H�A	�`�x��k�֦۽���`�;K���G���x
�1}���@|��&n�$�NY74�6"g�@U!�W��V"�����w�ߞh�hA���w�eںo�����f#�TNTD ���4H��$�k�s�     