PGDMP  5    +                |            New_Task    16.2    16.2 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25340    New_Task    DATABASE     �   CREATE DATABASE "New_Task" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "New_Task";
                postgres    false            �            1259    25342    customer    TABLE     +  CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    customer_name character varying(100),
    email_address character varying(100),
    username character varying(50),
    date_of_birth character varying(100),
    gender character varying(10),
    location character varying(50)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    25341    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    216                       0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    215            �            1259    25349 
   membership    TABLE       CREATE TABLE public.membership (
    membership_id integer NOT NULL,
    mem_start_date date,
    mem_end_date date,
    subscription_plan character varying(15),
    payment_info character varying(15),
    renewal_status character varying(15),
    customer_id integer
);
    DROP TABLE public.membership;
       public         heap    postgres    false            �            1259    25348    membership_membership_id_seq    SEQUENCE     �   CREATE SEQUENCE public.membership_membership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.membership_membership_id_seq;
       public          postgres    false    218                       0    0    membership_membership_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.membership_membership_id_seq OWNED BY public.membership.membership_id;
          public          postgres    false    217            �            1259    25374    new_customer    TABLE     �   CREATE TABLE public.new_customer (
    customer_name character varying(100),
    username character varying(50),
    gender character varying(10),
    location character varying(50)
);
     DROP TABLE public.new_customer;
       public         heap    postgres    false            �            1259    25377    new_membership    TABLE     �   CREATE TABLE public.new_membership (
    subscription_plan character varying(15),
    payment_info character varying(15),
    renewal_status character varying(15)
);
 "   DROP TABLE public.new_membership;
       public         heap    postgres    false            �            1259    25380    new_tv_show    TABLE     �   CREATE TABLE public.new_tv_show (
    favorite_genres character varying(20),
    device_used character varying(20),
    rating numeric,
    customer_support_interactions integer
);
    DROP TABLE public.new_tv_show;
       public         heap    postgres    false            �            1259    25361    tv_show    TABLE       CREATE TABLE public.tv_show (
    tv_show_id integer NOT NULL,
    favorite_genres character varying(20),
    device_used character varying(20),
    engagement_metrics character varying(10),
    rating numeric,
    customer_support_interactions integer,
    customer_id integer
);
    DROP TABLE public.tv_show;
       public         heap    postgres    false            �            1259    25360    tv_show_tv_show_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tv_show_tv_show_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tv_show_tv_show_id_seq;
       public          postgres    false    220                       0    0    tv_show_tv_show_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tv_show_tv_show_id_seq OWNED BY public.tv_show.tv_show_id;
          public          postgres    false    219            f           2604    25345    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    215    216    216            g           2604    25352    membership membership_id    DEFAULT     �   ALTER TABLE ONLY public.membership ALTER COLUMN membership_id SET DEFAULT nextval('public.membership_membership_id_seq'::regclass);
 G   ALTER TABLE public.membership ALTER COLUMN membership_id DROP DEFAULT;
       public          postgres    false    218    217    218            h           2604    25364    tv_show tv_show_id    DEFAULT     x   ALTER TABLE ONLY public.tv_show ALTER COLUMN tv_show_id SET DEFAULT nextval('public.tv_show_tv_show_id_seq'::regclass);
 A   ALTER TABLE public.tv_show ALTER COLUMN tv_show_id DROP DEFAULT;
       public          postgres    false    219    220    220                      0    25342    customer 
   TABLE DATA           x   COPY public.customer (customer_id, customer_name, email_address, username, date_of_birth, gender, location) FROM stdin;
    public          postgres    false    216   i'                 0    25349 
   membership 
   TABLE DATA           �   COPY public.membership (membership_id, mem_start_date, mem_end_date, subscription_plan, payment_info, renewal_status, customer_id) FROM stdin;
    public          postgres    false    218   �t                 0    25374    new_customer 
   TABLE DATA           Q   COPY public.new_customer (customer_name, username, gender, location) FROM stdin;
    public          postgres    false    221   ΍                 0    25377    new_membership 
   TABLE DATA           Y   COPY public.new_membership (subscription_plan, payment_info, renewal_status) FROM stdin;
    public          postgres    false    222   x�                 0    25380    new_tv_show 
   TABLE DATA           j   COPY public.new_tv_show (favorite_genres, device_used, rating, customer_support_interactions) FROM stdin;
    public          postgres    false    223   ��                 0    25361    tv_show 
   TABLE DATA           �   COPY public.tv_show (tv_show_id, favorite_genres, device_used, engagement_metrics, rating, customer_support_interactions, customer_id) FROM stdin;
    public          postgres    false    220   ��                  0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    215                       0    0    membership_membership_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.membership_membership_id_seq', 1, false);
          public          postgres    false    217                       0    0    tv_show_tv_show_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tv_show_tv_show_id_seq', 1, false);
          public          postgres    false    219            j           2606    25347    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    216            l           2606    25354    membership membership_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_pkey PRIMARY KEY (membership_id);
 D   ALTER TABLE ONLY public.membership DROP CONSTRAINT membership_pkey;
       public            postgres    false    218            n           2606    25368    tv_show tv_show_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tv_show
    ADD CONSTRAINT tv_show_pkey PRIMARY KEY (tv_show_id);
 >   ALTER TABLE ONLY public.tv_show DROP CONSTRAINT tv_show_pkey;
       public            postgres    false    220            o           2606    25355 &   membership membership_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 P   ALTER TABLE ONLY public.membership DROP CONSTRAINT membership_customer_id_fkey;
       public          postgres    false    4714    218    216            p           2606    25369     tv_show tv_show_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tv_show
    ADD CONSTRAINT tv_show_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.tv_show DROP CONSTRAINT tv_show_customer_id_fkey;
       public          postgres    false    4714    216    220                  x��}�v�ʮ�3������[��m'�Z�8�2�G��#ѺЛ��(_߸VJ>�c�s�٨�B�U�0������V�����9'��n׷�Ͱ۵���~���]��小���:�N�2O��]�|���]n��؍WY�����n��	��,s��ZeI}��m�os�|�t�4^���*O>��7�a���~�$��0l��2{�0I��
vk��C�����p:���H�5l��Ŕt��O��7y�6;t�P��elX�?��o�M?vWe��n<f���zH��㑞��oxGck�r^b�ۧ������u���n������n�����q;��X�4���;�'��n���a�/�Nn��S����v�6�n������Ӽ�����B�]7��|.��w������v�M��}�$�j�á+�^��s��EŻ��]�y��M�
?w8�7WMr;��]w�};85�c<���<3����yp�r�?�K;v�8���y��>u��d�'yꦩ_�en6tR�)�*�����<\�i�s�N�O�w��!��=��Q�K"�$M�3<�M��vw>7}���1͒�����㰇�����P�>0�Sf��'8��ݸ�J��K�B��<$�a�Z��X�����T����|�3{�	���0�g?6þ����_����]*L`�7k�����U�%��w���x��}w�l�g{̜8)�����o�n���:�~	�ڳ���Sg�qx��n^V Or�M�OH��s7v�3o[�҃Wx����O�\�g�{Q��יy������A_���yv����<oN��������*�s��_���V|�F?�ܧ�_wei����x�J��a873�`Ӿ�a��9'8���_�>$�|�〺5���8k���1����-�� �������� ���?��7/Ϭ��/�-���߭�4���|��U�*t�M�x���<��@!�ѫjމ���0ʥ����g
�縂�:�a[X��B�JS�{lf7'���T`.Z�x�s��d	��ݰm�}g�I��
�_������+x���~I�_�nZn4?�E�+3c���>�[��*���SQ0�)Y��mj�#Y�_�Y����i��F4�WYG�� ����d~��2ed���QW�����5<��]�î���D2�x��,���x6�;������8��y�[j�ˬ�٪j�����;�[q��Q�oݸ��<�v}Wf����i��'���%Kwp��_�ٻ�l������wRg���}�7�R��"��ϯq��f�qH�+�V~���v�<��������O�Eǟ(2��d�䉾�SK�S$x��y�'���uV��	�l�"x�Y��"��g8�=�/��y�O%V��lX챋t����EM��yp@P�_�"��!	>>��5O���t��ɻ����rP�g@��pҦ~��
� 5X�+�'�pwn�N�J6%@�.hFxo���k�(��8`M�Y�����z7���80 �v�O�� ���|�I�v�����D���y���}�1�u��$��޳pEm��l��í�*��� j���HͦN
���=��L�R+�u���=����ʒe�s�vd^��/�mr��� Q"z�s��X\ _')�^�K�@���I�/��Cl��6�b���%��)_XŧB��Y�V��Xx����0fw;x���X�Z�.2܆���n@��[��c7��5"�nGpT�G��u�291��<e�t�'��_`s?wh1ΠR��&��ql���%2�r�����HG�[(����+ ���#���po��'U�"4@?�ڴW�U ��	�4<ڔ�@����X�׬6~c�/g���vu7P���Vv�:�id]mU���V�ї�;�<M�u�>`m�ڜ~�ڷ�J���� s8��`�I��]b�:�z���l~':����Z�vapI��K��DLcX�O��7y^���I#��hB�q�z����L�<Q4*��O�8�e��w����N�V� X�ҡ!�9��� ��/9f7"�k��N����QݶW @�����"l~�[�ސ�<v	�$A��|q�We����l�����?��D�=�͹�^��6w�vx���M.�M4�X�H�8)Z�&'�9b��G-]6�g: ���mVp��d<�8���{׿��U5�m��v6�B��l;8�v�p`Pɰ8ܑ43�4xb>�O��S�x��CCƃek���i���i���.�:�����?�E}v��ViP÷���L<�(�tK�x�р(:��QN�����Ē�K��%N�����H�h�P��rGXy�ѐX���_3��wJ����Cc >` �Y�j�������{�}A�O���ba^���^$�o	b�SUk���uM��c�>u�C:�<�Ǔ=�6���~�P�0��"
$S������s'���˰�$�~?�nP4�a����9L.��t=GCw�CQ�C�Z(H��r��Ԃ��Ӓ���� �Zvt��N�w ÷��+'%3�n����7���E糇���Djc�����z��|��$��}P���C�����tYt(X���"�{A߅�VA8a�Q�6�uF��b�U�%�_Y�(��J�����eAٽ��-�*Tf�@�lz�n�P�d�k��w�*���'H�_��E��\.���å?�Ú`U��߃=�J>���on����Z�^�w�/�x�p����0��,۩j�C��i�8.�R��C�$�_��9����m4�Ez�� ��
����s14-��$��q�\#6�w \�'LM�C� }�E�1-v�1Vr@�g���>�o����?t��� �����f7�*r�D_�~�<��w|!vw������{A��>���[ ��kx��18���	7 �k���p���"��,͡�1g�����������kO��<�"hx ��������2��$B���"8���N~�x�R�c�[[龜�+�}�!�E�s�W��<���T����M�L+��� y�?�7k�$��ǋ����[c�Ĉ��,De���.�1O�}�������#KPc���
�ɩJm��^V6��X��ξ�#�ֱ�;rԞe`v�0|��sC).�~?�ݸ��^"C-7g�$��
T���C{"��L���6�ƢD< u�)���6��h��_Mrڣ���S��(蒷�ߕ�\����9Y�ˌ'jc�R$۝�ϧ�<':YpK@�1�KԘv�xV��̒y
O���*u���ۀy��#��Ԧ��TTAi��p$'�c�0�t�t�_+l�*��������l��|�ש�
��)'%�29�U�X��G/�^����|��ua��V����OZ�/z�:�;�����>�ৌ#<�3Ǌ�������2�t�R�)'�[{ڵz�M�c�2���n�1�"���ˌ�zN	k���~��ޯ^Q���'~����A�B��P��R
��4��
G;%� 6y��:�N��k��:� N
�-�rwHCf�}@�9m������L�$��FwË�G$q��:��u������i��##�G{�)
�2E�Ec�E��a�E�(&x�3���B.��)����F���{��f�x�^��/��X���Q��k'��n�$cf�	P�g�Q�W���,x1���ک����� N@��~��-{�I)fS�t�]J��;�6�iXq[2�,��j�O�B�t~PE���S�;��.��.��0��b+ZK�^.DIݱ-=-���.�7T'�j)Μۄ�
��r� �it�)���-�Mw�AuV���@��V��Ú��u��	\��?�G%G�'Ƽ�'��-���M�L1��N��%@D`�V�v8�]�w��8��}��@$�T�L��h�#�J� �.L*�(Q���i��#���7p��G��ql'���3�q�J�ɷ���sj�8q$��`'�j3�Є%aϔ��O$�qZ=��.���p�%AD��e�K���&�琤�e�Dkq���⫿�k�q�    ���$�7��9&.RB���������ؾ¿���pw֜�E��/i�����������O-Z̀�`ݕ����K�Zə�3H�Ҭ
�<��ٻwzp*�8�X�E���t��z�[�{��ݱ=�oed}�p����m(�m�w*[����R����l�$я��0d٨Q����}1ʔV6�$2�IepL�	�k�#�d\��)9=�wd����,L����(�"�Q�|���昬�P��H��`�����ʧ -��\�[� �X�>O�[$ܞ�·�����[�k�����Q��i^ xԮX;Y���]G����rE ������%�V�A!���������X�<�J�7��#	��w�am	"D�j2,7�v�j�\�q;{8���IV�Z_�8U㤠c�h�3��c5���@�8�v�}M(@���38p��x�݈�JO�z��߳�,R���2) �l ��9z��@ʈ�^;��Ff�D�
�@��" o���"�����x�%�+�e͑��V1%�=�"�4�9��Xa@\}��tR��΍c$Ļ�Oq��c�yv70�Q|�g|����)KL
C[����x�r��s$*X�Ȭ8\�+w'Bq���S��?� -s+��	�eu�
�s/�,�E��8'D?�*�q��C�b��� �- �?`M��a�)G���F9R����9�`�#i�I�l3Fh�ʼG���^��Qإ!�I����A�n9[�SUJ!*�Iu�J���B��xw:,[DI����g]A<̫s2��V�UR�i�x�\��"O��7hy�L3bS^����%PJ�y�˘֩�$��n��go�5:��>GN��4�r���|A�>�����L���M6�H1R!��a됲dB ��)�~�6�r،̊�$.9q�*�r��x}�?�DP���)���$(�u#� �v���":��{��\��ΐ֭UU�GF`3ލ��O9Ko�7�B�ltRd�
��3>89��u ��R0f&B��`���I��aZ�UZ͓0�+^�t�a
�)q�YF����P�2��_�"�'��c�B���I,''�en�Xx����tZ�1���6~��m6 o�0��2�&t��2�r�w����
�	�4��W{	�T��*�MQ�cCQ���05�T���D?�Z/�W�0��{rU�ӿ�c)43xBѩ��`�A��z"��|^w��_U�L�Gb?�_�
���$�[�V�(v+$�Q���D��c�^1j(��%��W��$�4��H�,�.�T#^��ɮC�-}%ʿK`�������ov�x1ť2��DЫ��'q�/���lf��r����KL*�����:���r	�����ע0�܋s �H�*1��ޠ߸Z ���7�%U(U\�B��O�ҐO
7>�#q��%|<s1�,"��x(s�6�t���8���+��/��^���m\κt<(W�A.���(=� �V�0T܀�R�fS"L���.�R����Vg}�:>{�/��u��k���`���[��z����x��.(�}7.��`΄]rɹypn��G005��_�e���� �e3���> .߃�����1 �A�\�,QEd�P����1B�o@3�4q��}��ndx�ļa,��\@��C��M��m��{Ƚ�^!���%E_�-0�B��%�AF���`�Hʺ�h��#�T|�"��Z��}���D��- �rb�@و��)���B2���Ԇ�T(iSO�y{�2C3*�f9��S�L4r믚%��e���wO�iY�	��f*�hh%v��H���Stp:�\ ���w�n���6��e�"�9QM*M������FyW�i(v 9�ڲ8�4�PDqbz�W)\?W�� ��p�"�F��AQb��]�
��x-X��1�)v[/w�V�{�)gz�t��>�0����,�".�%���<���� )��_�L�WyŢ�ȃvr⣛؁����Bxz��u'�dxc6y��r�5D]���<�#�������D�����t.j�C����D�=<Sf-�Y��q=��>�qɣ?���"�\���Bf�4R�Ώ�e�,X�g�E�!���"r .{��^|�6��2QЎ?Sjz*��H}R`�Q,�'�5cj$��p-��#��Z�`���0H¡�{�߷W�o	�B{.���8��7�/С�M��z�@|e�Hl� �̒ؽ8�h��TC�o-�<�%��:c̨?R,1
N�4Jy`Ŀk��Zf�����]ޭ��Z�1N'� �<�*���g���N[d\.����vb�r/,�▓�Z�Z
+�ݶ�Х���Bϕ`�� J�Q���%�,ta~k)�w�[D�lq��	1bf�¹m>���B/�@l���^ēOx�8�g���Z�*^mN#\фK��`�[�l�ᖣ3K"
�(`����ǒA[�1.ᓞ�%�x�%9�Կdz��%܂b��4�߄�l��Q�ì�����ca8��,�����G��(_%2<�1s�>b�>K�&�C/���{�[F]H�.�<pq)���K(7W9B�s���xND��n���-���ʑ�ءw�� >�m;F��vɑ���IBغJ0����8��D[�hW� ��y8�c�����M�>����������� e�Nx��63����,���fQ�$�|'�vl\�^�zO�A�	Y��i��O��a�*&�;wS���ߵ�~��$)r�>!�ld�x��������#ulMI�k!bt�Ӏ�$�~�ۢL��o��I"q�<j��R틢�T��SE�\ң��jn�k���Yc<��Y�h�sFv
 ����y!��m���@lS&7�v�LrÔ�|8��O.H5xSx��7��}V����k�j\�{lQo'�&L��3�-��dY���؜�<���X��R�N���ɖZEL@���(�e�^Fh��`�T+4�|Bg��S*r����a#�܉�	A0�˯A
6��?Sr�ka�!D�O�B�i��ʌ9�=y*��;����p��}y��\��"��b�,ϒ�p~��u���UT��$�ţQ)R!��<�w��ߣm����[E��x1Q���(Գ���E"fw�}��E�W��B�}����Y�n0T����F��Ex�j������|�X�a1ፖ�zT��B�kQ�$�3��;�Xg�q(~/��{n�.%l����̈<������M�̊VtV�o=ۿ�h�i@�m�ڍ���^�����w\Ěa��Z0%�Ϣ�2��]�lr,� ��`�R��ø^�8-��p	���Z,vXȊ���~�Ha�(*�f�Zv�C�3�(
8
w#�|v3a��צ}5*���de<�� ����Id��������6q����)y��i���Cv,���������m���pE@�/g�味�Ҫ��]���ԾO�QɭOˊqҗY�����J�	Ad�)���h�w`ŮP��k�#!��y�[�.ht��[\�ۆD�H+C;�= �+
�X{l5����������'����[���%������P"+SGv�\�Vv��0���3e^0��]f�����E���A��]˗�����Q����a]��)\�{����<������)`�k�0��Y6%��'��*Fӧ?����&g�ÈD���鸋�"����H%�L1sX%!��>�_�_���B���~���Ǫi��=(�P�j|�:f��O���uQ�ra>�ON�fx#C�]�/t�$�>����Cv���a�^��bȫ0$Q�ǧ�
*b��~���_.�I�� ��l�X���KUTs�Qq#�F�]b&x�WU�G<e7����a�Se���uJY����pA�Me	xة��)r�'�88͈�?���[�1XH]0<��=���[���+d��ͪ��i�v*�����X�m���w�|
,R� �����h#�m�Ҳ�*}I�>��]@�@(�-�^�ݷ�UۣT5�0:@��j�_�{Q-0��|    zx���$�/*�<Xp��i�P��Gr���a�|��Ξ�A�ZB����zl�ñ�y"G�+����.���|3
�<z�ͻ�$�.��9��2U�?9~�~uؐ�4�\�F��B���{� 5���_��ܯ�n
T��)��2�F��M��@+��~���3L�����5�a���jSȢ.}o�#z&�D�y�'X�M����~�p?��s�rm�v{q�+\C�TM��K�u �O�o�.vo8!�ל�������Jw֡u�G�C��躶��+2�$A�?��C��R�������`�
4Z�J��(�	��(�'�īX�%�0` cS��#$�R�q+d�s{~�E��<���IK�I{�\��p��׾I,Q�� �.�=��~�G��P���N���R?��VT���]p�)�ҁ���ˋ�^�p�ؘ����N����x#�Q2�5$N��F� �@�����|�nVx���L�Ϡ�|�� ąk�1��i߯�و���z#*TvVc�D(��jm�s{wvy�Nz�H���
7���)w�K�#��I=̚�ꫨ2��K� ��1� a6�'��#ƣ\̎�ӿf⽑��}ۼ���<�����"�����v�Z��æ�w��&)���ز_�'+��}@IXŘZ�C�d��=�?��Q}�]�g�����޵��M ��n7b�r���e��Î��[���K]�뉜�(��B@mep߸۠\�� ��0��Oe�^z��^�ԝ�05<��]�V����孑H{[h�C�������ڮ�j2x����s��ø��{�e�B<1r`�^V���EHy��mf��wl"w?��f�E�	�3�ҫ~�U>w`�b��~sP� �9�- �i�t�1E���ɾ%���8D��.�����eX��0 j��\k��m�p�^yP�6<N�۬,�$�~�׮���^z�]�k1��%B�'�/Vqh�l�0D8����@�Q��qb&�E�"T��S�>tFs̠c8��fԴ��FPf�U�z&8�]�}��Ք���?^ip�)��94Bg��~y �\Y�[o�=/�^(ZC�T�틩�l�x�=��#/�����6�ε��y��z������7
�
�(OŕN���J6aM�ԩ+�@����R�v�C��恥��y~��kl#��*t�7
1n���[�5<�0�[�.Z
��+v��ycٚN��I�m����
��i�l�=Jkl��iL=��Q��R��\諑��C�"�`���<�ĳ?#�:���ͭ0#�r+��`�����\��X�O�|����4a�&$R:*���d!r.�������F�`�)z/3��9E�6��CT�DͿX������2Ip"�������s'�����J��ں����6�gD�$���,��oo�c4d~�a#{ftѐ5�����q=������sx'�A͚*˹�Uc X���߇:�Y�o��l!pGE�1nʱ�~�׌y��6H�{O�S�E�=���'PS�r�7�J���{�tG,�hl�f
4�L���ݡ��ndbP�鐘���d�Z�����.��Blג��X���)����'�����J(r���O�y-W6�/������Ba���q�W'�v�����x�����;'�s�zճ�;���Dv��95��ʻ�a�>'S�p�����V��zH��j�uᛊ��(�[�O���-g���y�L(��x�M=�z^������'{ ��qó���5�1;:)<��8�l)��z^�#��E�`�}-��sb�X� I�B]�<�&�%�{�H���n{����}~��/`%.ߌ�r���q��bJqݔ�ʑ�L����yMu����zz�i��5��z"q�6��U�h?E�6RBm#��ڗh2�"n���~b�l0gԏ��͛�&�|c�O��kE��C;R�L�7tN<ע�3�����"����8$c�%��٣�����o��bui?t��$��u4�J�a�3S����y�i�����}L�b�[���h2Ô �P��[A�14�:�yU�"z��KJ���]U!))�>^rm�H����0�E`F��a%߼�e���Ch1r�[�t�<��<u�l����]�.��d��&�o6",(c��-�S�H�"��F�YUǭ���^d�<|LR�? �RB0/ m�V
b��j�>z}fE��2D��i��J�;Gtx�qlu�Y!�q2����v�S��"��cC�1ٽ��Qd�sC�t����B�s1& ��Jz1�c󠡉A΁��\�G��J����[��1��|~J	����!D��x�1�f#9Pw�o;)L%�]���p�*����#%S
��v]��U����r��w��G-�E��������u�����,o�I��mB.�}�z�������U�#j/&�	k�hV���@����]E��T'�!�g]��>A����)d���91V�-���m��x�cۚ��ʖ�"9���]X�d�Y�V��|矾bZ3)+�	�܁�[Jձj%�
E5�K��K�UQ$ \Ҿ&�)r��T�/����t�����6+�q�&�� �=*�iO^ Uq���6�F��7�\=�2|rt߁3���p�H4tLd.��h�~��p5�xswo���j��6�1�	 (�W�-�9�d��(]T/��@�������I[�z
�>QnIĪ6��\�(���H�m�������,�ik�my�vJu����ͤR�}���m�\��Z�w����:�_���lM���JC��dl�Kx�X�ؗ�<_�m��UX�IK��@���J
?
	fQǿ���#� ,�&���J��{om�Z9�L�pz̭%T�H PH��|�qH^�K���W�57���i��eS
��+�g7�w�W�:a}۰��E^�T��:l�,����.�a��`��a*tuV6���s�&��[z{᜘�T����-�>bc�Q,>`(�;3���6��񥇨Ad���6n��̛|���/ʽ�1'�d�ku��r/��t쁯��%<��Y�Nc�D���Yݬ1F����'	���P��#�,�p"�6�����懝
_�qw�O&dտv}\q�Ri�TF3�������}&�og��X�Gy�E[
��u��h����uE������tց�$P��l�|5)�b	O�A�,��nF�wb�`TL�'\�����d�����m�D���O���Kh
����	�A��͜�:cx37夘KYAί���&M��+��H��}�2��`%kޠ�9��K'�]� ��ȶu�X��C�D!#�}�S�Z�!|T�K�r�8��ë��C�l��6r�Њ��Wш6�j��+UM�q�
|�	`���6�1�Ld��<��F��t4�t�P�	&��M�|�I��ˀEv�:�?��Y�d���8���^�v�u
1��������i¶�؅cSo�X'��C�	�=)��o�Z��%�������L>�c!���sA�H�X��B�%}z�6w[��QR�]�l��������`�������-�[3�K�2����T�ݰ�o�V�sup�:|<�.�~���Hj��90G��CA!�qf�-����3,�~̅�i�ґI�%��F �&�G4�o.�	!!ߧ�6�F�X����Y�ԉ&ہ]-�]E���ίL�{�効a�;����a:F:Id:i�{���a[(�{����1;�p�23s�<B���ȶ��;
s����U�o��Yr� ��
n%xU�s�}�8�G�%ŵ�*u�?�T�y�4�?��;�fPQ�L�V�hqٸ� �f|��;�,N��H�%�y�卹�v��X�ߎ�K�.�|�2	�����EZ�8���i���to4'uo��#��*�vr�&L�r�H�{G���'��Рdi�Q�Y�)��N��������l -\��{ؑ��~b�i�HZ!�pNd�	�F�Cx��Wכ�NI�mmD-�d{�k�;��*UaJ�GNX�/���o�x8���^+�úIΖ����	VS�}hԯ��,J�`��u�B���Rq���7P�.Ҁ���    �]��Q��qǣ���Mol����/���u��֔AW��6��YN1��h�����ni��fōqF�k�����4/*d֋u��ה�N���"�&�u��<
<z���@�o�N2e��"����8X�D�v ���8���(����4/˭t��6j3����*��:~{�K���gn��'R��rt>�=�8<g��.H˥Ƕ��uh�7�X>���l�sm'��.�q�b,s��57,b�y��cr���b5�H�}ӞWQ���Y�!�-t�s�0��&��IGg��S"�m���Xa�D���yB����-:��K�u^Q�o���	AWA8\^�ߩ[�V8���N�v����Mj@�3�'+��8�#΁�M����{^�o+_M�7���`G��EI����,���&Y�y�����/^m�g�T��e�)4%��Z����� C���� ?�����F���S�S)�>8�~����-�p�rĹ���r�U��~29~�T�G{�'>|i�ȴ�ib��8c� w�Ȥ���Ζ�̉(�an0�tN�tY��Ph�X�kGp�,+\�`��l娱�+��
�* ���6&C"uE��j+T��D�a��E�O�}G%<"C S-�dS�YX��U��p^��}����mN��(�EN��q���~EW�I}�y�CBpz���N��}c>�VI*��ɦ��T�f��v���Ed蹾Hԃ��eN35�:�9��.��>��!�@����^�9w{,�ѿ:�,`�����rSa8)��1�N��r�)�t���I�]�g�������~�.� b<W]���2��wW���``Q��V#�q�H3�>鉥��*q �a�����6�2�|Q'����;�#����7Of'`P�2�B7!AiSt ��fXT�:zB���3�D/�ѝXJ�N9>͝Qp���4�3�L0|p����E-��!��X�{�\nb��ktG�-=7	z�à�/���!A�r6�����2��ϻ�d����Ų�?z�I+E�2���+[�-��ub�9�Dy�S&����:�!!N+VgE�'V��v%C�sƮ�ۣ�����J��Zk�S�a����F����:կ/JjX�h�kI�'�"/�R{��;�W�Cf��I1�S��~M��riE�������K�nz���JM��j�.}C�/�b�M����njc�����n:Ҡi��p^��?��ÒN���272�C���w��0a���=ڲi�h���͆V�)���ɗնH+j�g^�YqÆ*��Q�R{��Q� Z"�
��77e�X�)e��a�3�Tэ�|�e�կ��T����c��������)�A�m۰�%�l'�!>��A3Ua75���q���^�|O)QH�/\`��{D��5�}¡����W���$Q|W<GP��-?�83yGf	6�w*�y
*c��`)�|j����2B�,���oD*/0����Vn�_z���1�=��:5�i
�-`�ٕ�G�yk�+���/��-��?�����Dx���m!v������D�%�����
����v7-��1g�f�|�K��Y��'Oa�$�N�{~���j����q�}�"�#?ތM(p$�L>a�S��0Iec~��[5�s)�rT�b��)
��x,#N���:�#��2r��cX� ]`���b�9I�6
����)�nZ��
�W' �!+�Y";m�`�~�&��~�.���7?���V�j�+�P���xg���@6D趎~��_�y��dZ?l������3�n�l�D�"���7Ȕ��T}���~���z_dھV�t�zO���ބ�]�V���/�K{P�Q��۷(Ghy8�8�����?i��+Ch�U�{���0�\��B�pqߞ�k��X��.7�Sx#H�YY�s��Gu"�/��=�K7�
�8�;S�[�#�T|���'�u!M���{��D	�f��~�r�����]�C8�@�+X=�6�vҩ�l�B���̐���k-Onq�/0�7L��7q�3U��O����&�b~U��I)V;��mO�=gq˹�62�����S̿सwm���+�'/�2K�n�����)���:�Aɇ]x9�ǀ���Lb�׊P?f�*�C9�҉���Nh��\I����%���u�|W�җ�:;���*�X��OyfK^E����i��kUb{z�鍾2��_�Y�Od���7�w\T�T�r_��38vq�;^��=�,��)¿�έ��5	僽���#��
��/��w�хZ�w0�V�b-c'4[�P��P��Wqv4�X�M,\�ñ/��p��?_��\�طDV����������t����A�e�"c�D�c(o�uj���@N�mL���8ʔ������%
�6�u�:F�����}�.֝Uli�,<�i�K�o���šl� ~��{�r.�Bz`�,R3��/���_b/D��ӑ��pʴt�R��a�lLc�tZT�_�2a�J�'�:��~�m�-ɉ�cvx�W�C�i����{�Aki̺$�2۫�^������K��?K7��&H��S�~��ˠ�=����3�IR�WQ!e.�5��_���14w��(��s��<�\)Se5�-��J,�''���:_�$�
�%����5��j/�̕���Z�ΠO���1�~y9�O0c�$�D8��rN������c4ٙ;�5�f5f*���$e��\�����q�����ڷ�����;%(1�y�`�^.���L�`���ם\�2��$J�4L��f�G������r�Y�]j���z��(F�w�$�h����l���RbdO)UoW�6d�ÑX�ag|�u_�о`�n��mԻ�.)��6���]�2����[O�Q��������Б?R�҉ݴ�Ls�D���rm��P�'�͹92�`T�N��U8�]�J~��߹��3hg�����ט���u�3j�t��� ���e^(��:XLm' �א	�2LA��� NEʼLn��/[�k(�9�$k�I���0�˼�_M)Q,�H^,���g1�Y���f���h|��
NLn��,"k:�2< \�Kf`9��	�)6�G=Ɲؽ�ʞE�9N�X�7�G��`!%���מ�/��Zs�,��mr1[l5�֍�7�A����'(� �:�*��+$y�66�c�4+Z�IƮo e*��u�b�`Q��B�`L��ԓ�P�ox{�y���X&d�:�i|���U����aH^�pKV�Lֺw^�ݙ)��c���E�c-������B����{��c ��ǰ�1�L>��#)�$٪uT����G�R�[���A��&�F?��J��_(������.���O�"��bi��o���L�mLRj��ix#�/���[3��F9�C(���aL�jT��t�]d��#��pE[�w�IH?68,�D��5�C��/3m�-̴�!�ɳL;:So0+Ͷ�̉=�
�k7Ҩ,A�������O��6L�M;�Q�_����y_�+4�"(KF�ל�Y�@J G�X��6�a�oU��:�ptoNy�B��:�������~��dJ�X�>8\��v�Mn}�l��_3��Qܫ�5��,���:��.;=nM�x9F�:ޮ����K�M��i�z-����F͂f�Vg,��&� ޣ�waˠ��oR��7F'�L�~��#�䑻�k���{$��dO����u<͌d3z�rm�t�D�߶n�"ܤ�{��CB����>i��-C���1'��I%�Kc�4.�K���{���N�\�0����*�c�!��S�^[��en��|!�#����\i���4���޸�o\��U� e�����Jx!��~��hR0�����eXĬ����H聳v&N>�Ox�$+��s�j<l��z�ׂh<�`�C��������c<��a�2��H��ʿ�c'�:M( *��#Rj��� ~!�d'�He���=dp�f��߷jZd�NH�ö��yQ�؀ ] �wTSwOO��ö��Y]�����OƎG^�� ��d�=UH��Et�un�>L��;,��   RJ4�#�;���}ٔ�E�߬���Aa��-���qhʦ�Gi�*���ln���a�:l�yBz��t��E����:��|��xJjv�\�� ����^LΉ0��Ȃ����G�F׾]�.�E�pg�@@�啋`����ʄ1j������Tgƕ��:�|��Wc���
��z�
$H�!���J�A�$#�JÅ�L𺱷�*N�\�|9��ȓ��Jj�lJӧb3�ܤ�CMҬ����C� ��ڕ􇶲�����ZT"�	ֆX�����u���P�}��+q�·�q��-0;<m�GZ�Z䙎T�lv���u�G<�W �x�q6Y�<�	%���ME���b!#;�8���M �V�gpR��a�'S�X�~�QO:�T�e[V�n�˄��f�[wTq� ������"Q����L;���
�����%��	�ҒZT������c��mY���&�)HJ*�3�'�G#�%5)C�=����Gz���YV������C���p�v������\;IIb���46���z��"ޖ�j?s%U��Z&��c]*U%�n���#p�\s��E�� ~�3�l�6i����YpE^�}�IՂ	�E�OU��	����$^'�E�˙ix����Nzo��:j������h���V ��=��vz�#
ɛ*��j���=f5O�啢GEx��/x1z�d�d�{*Pf�_ͳo�<a�ڮ���6���ZB԰�
��z�������U��9�P��MV� �^`���d3�"#�@��,��8��g������-͡�"��D2m�ᵋ��&�S�+W��@w� we�GNJ�!-x�f5����D�*)OҕW��Eͦ��1�H>�0?-���������	��\�I9\R8���j�h���Jz{Η�Yok�O��V ����+�Ֆ�[ΣZu��P�2�׍��
��%ߩs��8�1���dDz�GS+	��ߝfɿq.7M�Q��e#@�����)���
8�U���J�*-����� j���ݍ9G]`��J���>��˫�Rx�i��g��Iˀ]���8Wүx��U�"T�Z�5��z��*is=o�����Iy�:�ƒp�	�ڻ�!�-���*D�'x�Ahj͛-�0Q�Mb���*�ۂ���"1	���*թ[w�c�}F�o f�Me�z̽�̜=y�J����uX$�����16��4�"���&G�J�*]a��u_�����u�Az?N\|���X[��?7���q46��ǩJR��4A���T�Q��<uD�Jp�ʊ C$�vw:ذI�<B}����JN8?�;���Q[G�)��QR�0���Z��J�n�K��4S`�(������&ם�����!z��q}'ɔ�^���W�Y(G��И��bK�IN���C�M�5½������+����D:7�s������\q�Z��h��Z7�JmAD@�s���SI�|�W+���_e�FN�)�x�6y�DEe����@��ţ"�>��j
�s�e���ٷ'z�޳�á�Ϡ�y����?���x�W�#.fI#��k[�gCw-]Z��Bi�MKc.�G"�厖k'��u�u��#����6�������>�>����Z)9��f�	h,7�EZ��㊜�u�-_p�X��A��[�(V|��PQ[|	�r�{�O��N�H����"��,r�* ]D�q�#���`��'��B�j�@�
��V�=�����v��ry��! U��"4��;���/����p�d�_e@�\u%=qoVr8�v�qu��g@Y4��pDF��>v�c<j֬�Ӆ��Pk��*Jj�	;�6�%2�$�o{/��W-���~�==�g6|qt��1�GW���Y���	0 'Y�����9�|�TLA'��}�:P7[�������Dq��\DlN'F����,	���]����h���\��@WzAi�\N5v�%o~���7����P+�pj�np\�
��/2(�'nn���V�D E��9�%+3���x��}J����2�i��2Lpq��Z���ۏ0 IEmߝT۪{��ĺv�:��!�!Ŗ�CM���s���7� ��9@C�{����'v�EL]Fi<I�b4ZP뉪R�rs�,2���&ZC��x�����V�"5
��+����N�'�äZU����!�0�Ip�e���<JT���4�|(�� B�㎂Zz�wTJ7��[����D�nj��=ѩ~�ƘUJɿ�L�a����Q�zŎ@y��Ӭ$�ѡ
;�ܓJ�M3
�wga�cג�e5��[�SL�3ݲ���f�j����?'8���҆��E��s�Sۏ��
mF�s�&���`�O��%U��u���Q�PS�4e����k5��cu��\#7�j�{T8)�ƑȨjf<�㼎#�H����#�� <nb��E�N���m.�!�\��#A�0*Z]�4/V�av6ت�������1Cr/�h��U��yqG���d�ױ��x�?����카��%���>�6�����վ��-.�Y!x\B:��vٰg&݀n[j���O\X����}��w�r��
t��Ӳu�b��M�H�;�R�}Y�/ŀ�h>���lw��)
I>g4Ld��q�-�v��F�.�Ѷ#MY��9�u"E�	��Ֆt��3lV%d<����L�x{=U�A┸�����L�9l��W4Ej�b����Q�<$�u
x[n��m{��ǳ�MD�4Չ��ׄc�0�!��n���	�a����m#��C�4F}_D�
6�h�?�G���c�y�N�s��Ka{櫼H�&�� �fnu6���E�:@k�ĳ�S�Ȓ��	�2�O�'7Hމj��zQ6պ��|�4u~����@��jNj,�R�����ٮ�Ⱦ��ؾ�t9��Eq�_��uZlQr%�'PHɴ�ZyiN�hC>��E%��WB��Q����ڑ���E�3� |s�U�$V:�����6z��z'�Ձ*�ߗ�:�N�2�=��n^���ܚ/~c���K�����!-h�ڂ)>��	���5J�MG�1�*��
������q��I�2h�/@�I���J?E�NT�2C���$�a'vr�dG���9b�c�����Uy�_
FW��Ղ�'TQ# ��_��*=�_��>׷c�pb%��
[�B�	�=}��`��Խ�d�Zb�X0M��˹�yX�"cm�y��=v8� ~.����DB�-���s�n?�1l��l��D`�$�kxZ�Т�)v%#��L't������Z¨� 0W�ܵ�|���/��Q��W�%��VQ�����?������r��[            x���ɮ&7rFתw�����~��z�`�������G���/*#�yk��p�8N#"ӑ~�G�?���~�پ��?������_~��/�ǯ��_�����/�K:�et����?������?��?���������}�����T���ן/�`U�Rr�J���O���������?����~���*6�M�����K�֜���Iz��Z��Wc��j?�jl�U�����;���ʘ���������������l�~��^����etu�ן^����ep��ןN������cQ2ÎJz�ZZ��0�iz.W��l��b�xZ#~�UFv��z���jT�O�w��s�F=�e�ڞ{XC�e�W�R��of�s
��	���5���$3�Y�|�N5D23�����Cc��V��U��.Z $�~����˴3�<��\��߅����F��=y>O��~�Q�˲�˲��(�j�Ey�}=;� F���̥��<�Zr^��v����HY?�� Ii�G�x<�I��"{���ԟ�	E؈�{�!|�7+�G!�Q�,fU
��z\5;��x��c�*��y�=�jum9�ڥx�ZVIs�4�E��D]H���=`*8�Xy��BB]+ű���g��U`���'�y����z^�;VG���
$�|o�%F[��=8{h��΍y-�y��_��W���㧃w����@�]���ՠ^^1����@����~��m\�;ֲw�p*5`h��G�z∧R�&'ȱ�v�b�~��_��ܼ}m!im!��*5�.�ʵ��#�F_[�y��wP?�����G��.�w'0� �}M�UV��l��N�a���}��i�*zt��:I�U��$9I���C��`Mĵ3�C3 b, ʺgHOߊ�QWO�[��N��;�;絧�?d�X}�;�8rx8�$rg�G��0���a cm��T"N!bM�|z�qĹ6_/�7��S��I�cgY����w����p�m��~�F0qn�P�N�8�{�		��-ܽ��N��U3�9�ᜫjf�F}s�%�:ؤ���0EqZ������	s�!�:C|��(�B!�O�N�a��q]3�����
憆�Yp1�Vq����p'��H�p;0�\2B�����b�`.Ek�_�!`x"�ߞt�
keI������u]��t���:\nW�td�X�ѣ��u^�<kѰ�Y5��~�80[K{���xb!
��d#�� ��v��v��� ��v������uJ �v�í%	
�,�^�D��	R��uVH���ϝ�S�*ͱ�"Y>(F�
$D�L��dO���`�DݙaC���
U��Xʰ��)b�u�Y��GJq�`#�pm�v�l�t����o�)�F4<��C6���<d�w��[,�u�����N Q*��	��T�"
�:��'�$x��N}oq)�P�*�KY^AQjЮp�) Qd����6�(B���y��K����{E������~����P;����.U�f�Qs0���H�VZ�&f���������?��
u�a��h� !��dp�p!���-�X��h���]"e0U��3芰a`іJu�m5x�k ��P�����f��0�e-�q�h� �姦|
�/��������k|����H�6�"���M�0�Ѯ�P���i�Gv���#�"\�:Ĉ��_~n�w�=3�6�������i=>��8�g�%�p5rc8*h�k��-"hڷ7w^w@E3��r~\K;��u=���߶ �eM�-�0���]=��������C�w���@Ő7���a@�x�f
U8ç��,�хuC� ��{!�l�cD�����?�(9�!d�d\9��\ה������N@9?�z�prʓ���UbNQ6���NN9��=�l��sw1t�r�`Ƹ���F+�9���}t�::�\[֒���tL�ýR�]}`cFo�l�j"vՄ�)���z� ���%[�ޔ	)�ez�>e�ۋUK�S��yܻDNX����ﰗ��R��������#q�X��1�#a {��s/%c$�O���(���%~߻�X��L�T���t4L�������h=A��ju�D��ͨ�'��y</<���W:'�q�����	L�}�>������i̓1���o����	Bԇ��)'�ON��|�#A�h�iu{�{�"��74k��̗0d9�����2<� �*|�.����3�R A�9��s�� a�`!���"#P��͂��I���Y��?+�Y1����r�7.��QD��
���B��ci/ɽ9�eq`o��h(r��!�s/,��;0]���(��c�0p(= ��0P-�X�ȣ�3����mzB���i�]���x� �
"��^�n��QEs���@ I�u�50V QIt��D:�zL�
'U���w���v{�s� u9c���Q�����O�
&"�>�Bħ��]n$7��w �[�F��s���Gq#�v3F���`z}�]��&�O�� B�:wO�v�!���z��h�iu�x�n@!"�}���@�>�&�������=��]�s�vG�D�<�_���zs�G��.D�t�����e�x�H�]6�G0X�u	�]�oV,�gn�,��fq��e@b��#�"r��v ÐӦw[�E���	�@ku8�$ڹ��c-/C-� ���x���#�!Bv �H����t�	"t�Br.3p����N��UT�8�5��p8���;K�.�H���	����9l���<�;�>gt�x�焃�{�y��� Ν�C��T��P�tGv��Yb}�',���2�,O��-(��	���^^�r�A<9�[��"x����CA�*���;痺S1����LN��x�(G�V$M�V�U����< ��
��Lx.s�8��b$n:����hX��Mm�:��7�;]�u���81�@ #�9�� ԡ�H�n+,$Yv���RJ��&�BZRյv����$H��3}%B���B ��J���Q����n�I��F��58�<��qy-	@ı�ʲ�>4�Ud�f���ODI�)y)v1GWm�%�;��cF I��q�a$/F|w"[h�����|��r����L̀"�K�
zp�)*D�t7��Q�Q4�% �ew۸����D��ý��B�ay6倃(��#��
��<b6cE��oT�R�B$M�s��u�(�;��8T�4�)�U���t�#� !5oF�ic��Z�)6�T� u�f�
����pQ�@D�L���6�F�0�Re,LD،��.���� �X��(��cgpRThl���ݍ�A��_�����_yi%`B=>�8��(.3�n�
��{1=ހA�L��d-�@�:���Z�A�A��}
���]-�T��6�,:�t`�r�\"\
�ā�UdT�`���6��t0�ѵ#l�x�2EF���i��zm� �ˍ���ʁ�>���	$(ݎP��D��D�e1�����i�}w�hr��Bƭ0�1�S�	�O�d�[������g���$�ǔ��	"�Ss�;�p8E�v��o�9���._��	�``��l���0���W�p�2��ZFEB�F�o�\%�)"w�M���C��CW!c���M1j����0e�%��:l�	)sGJd3"o����lʌNQ�O(Ѡ�0�1�q��U��x��cX�@�2��ob�@4`}�GU&\�p.9s~i�\N���u�$-�X=r����^�������P�������.��A$N<�]��m��$^��ѱ��̣A���JV�����81�װuH�c���h��a--��~�ˠ�	L^��4F`�d�x�P^�H<��;OM��������`$�n�Q]Б>#z�"q����M`�D��ޏj�,/�&�Э[����m!@�w	�j���5�2�:a��ln3���s�U���AB��7y���B�n�
V�(�Q�{u�ʂu��� 	  j-0"�7]y�H���{!�
�h������:���C�n��y�DD�tS:�+��먂"Z���1�����8�@���׼
5�06�]%h��BG��֟;��INB«,�P��W{]���h�+������V Q�WiS+xhX��y�*y��%��6�h"�{�XN90�\K^&Nm�����xhnNW�uc��&�כ�hm0"�����6�h#,wk0��e� �99�s�[)PP�s�Z;,h��.�\�P�ey�'���0�E�z���v �5`'��; t1����@��ݻ�UQh�k�p�E��� !���*D���]��.���s��D��9X�|��G�|�ƈ��p���z�0P6ԁӝ��~ �Q�S�e CN�/��� 	Sw�xv�0D�2>Bn�@�q���g�Np�Ofp�&D�O�w+�P�M��P�@!§$c-��W27�Q��q��ӽtƹ�2n��	���(�8��+�r�B���Yl�X�v�	
���VB&(hLz����$����	������!�n�&D����	s�ýAB4N?Ֆ3�t�7?��8���9|_�ڑ0�e�}�vdL�,��`$˅볬�Ҏ�����^L�H|,�{�3�����Ի�X����rv'��8����9��{M;�B?����z �û/+p_έ�{K@��3?��� )��	���{<}�ƶ
�!!���$��u8�w8����儨Yp!Q�����t���	}&CW�p�E�zu.h.��B�Զ��C�R�_�!n���\�2��7w�$�w���V$(=�Si
���|�h�2��>2d �@Rֵ�w��S������
��W9�
FD��D��V�E$�m�c-��Ӌ��LT�to@�>��л)W�DSw��u�PT���{a�"��~������|D�*���� �T�Я�̷ ��yc�W�(��'3^�*<h�NO��
��6�A�� �:���[�*:�{��0��f���â��d������i �����֠@�L?�ų�3?��5����o��Z�		M�C{Lap�v\ܭ������x���.�pk ����o4��!D��]f��NԷ��\�my�`�E�p�[? ������}������^bf�t��;����ʛ?��&�kC��˽�A�ͷi�[�K�Ҵ�#Ժ�7�A>;�/
�#z	yh� ����a F�M��4y�j�����7������^9���� ���yE�������U��3o�� uB���C/x8�T�&t��Ν��!��ǖmH\:g}�6�	��������"x� �Y˽:�0�Ap�;�	�ɹS���Г3. ĕ������9�H��r� �6�ʌ�ʹ�_z}	��i��h��0�ڰ�6���2T�|�����L�M�]���G�H^M���G�L�L�^��G�4��mDR?*V�$�^=fo>�m��E;�CY3�:���ONL%6�e&�~@�6~]��	H$�f�I���D97r�U��g�ݍ*�%��>�$+(�ܛVh�J@���C�'8I����zv��.��H�����;�� E��Wq�=�&�|�	��A&G�lژ�&G�Ѹ�dTuh��2YZw�ҀFb������3�l?�~c3Ê�}���-B$�}�5�3l��G�"
\�����̔Q�A?U^0���N�>+�Pv�����D���۴�� �&���I�
4���g/`Q�P�K��X���A6,Թ3NpY���t�I��~��QwO&�d���$��&ķ�Mnm;j��S��B�O�![� x�/�>�eZ���W�^��ɝu�Z���4Գ��@<3�P�No��M��u�Hk(lP!�8��1�����v�j��端��������~*����~�L� D�O��������k`�C�~k�͒{������4���|Hp�é�jT�����m� z�f�S:8��^����%�i�lw���A���lx}���,��8 bD���D����:�1�a���\�����t �d�t�Ak *wz/�7�<�ڹM�claB�;����ࠑ��	���]V�~B����3�T��;�yMi�]����@!����'LH0��{���q�|+��6Խ�[���~}�e��~���H^�/&T��愽 b��V�]�9�d���e�		��u�kaQР���+���H���3<�(�'��<8؆��i�/��t����o���˗���            x�u]�r�H�}���?��/����e�%�^�k�l�K�(�q� ���o��T螈��i���̓'O&�����~��T쫺�\���ڵeq�j_<��_��j������U7���m����y#�ݯv��}�����wظv�݅P��b�n�ON�k���uc�~��pt��t�/���u��~ؼ=�k���V��7U�G�t�0������b熁����M��<�w����/��6G�����w�޹����wn�_��<�хo�]S��{���뢩V��e�U/7�t��������/�j���o[��L.�E�Э�a��� ݸ�]W�~Z|�p�ap�t�ƞ���ڋN�[����������}�r��fw<�z{tE7�]��q�n�ڂ�;��ؗS;l*��r��Z���s��=�\��خ��MX��>��/�SWl�զsvŽ,�@kD��´���G���S�ƛ���d�ɞ*��C���h����M>9z�/����H_�,.�Y��h��ݞ>bw����o&��CG=�+���ׯŪt�]��cն�N�U[N������m�f�	>^��ք6�-��H_R�u窵��.|��a��K6�V�K��6,��i�Ն�z�p޼�=�=�v��W�WW?�ۭ::˪�������Ռa:��UY��W�b�x�A.d��\wAw�G�%%%mB���1�W�b�8i�#���-~m��+Z}��n��g��দkˣO�Z���k��0���YY>��k}_��=�}�K�qOO>���Z��^v��d����oĚ��_:��nY�!CW�?M�:z��hN��nG����S`[��H�K/C�v�f�݇-�y�<֕W������e��ŕ{��?���^�|6�Z���)t�0��۪���'��S������D���n�m����N}�w]Y��|��R��jW����zSu-�'<y֥-. ���Gҫ]��~�'�^���k��<L䒿�--k_�/N��]I[����r>x2gz����{�aC��N|��}@$�7]M�Lׇi�r�\�9<����;ܷ �������p���5�����Ԑ��$�_��Z6��v��f��k7��]2[|5_u��!�GK������8{�K2�����j����ź��UA�6�cf��q&2d׶]����዁�qu�!s��d�x\
 �}��A\��X,u�>�]�x%{������(�2��1��M�
���������VDq���6;�?�4:x���w���&�=>�{�ۉ�`p%�>Ys��?la��A�]�oF��{��lEb��f|zj\��V+�l���wSG�7���yG\�`{��xI���b��5�㖞}ZW�x�ّ���p)N�da��]v�1W�����i�;r?�xҕ�a�G��,8[c-�t��bi;[����������=����_?�����u��z�Z����$P�T8&_��($�"oJZ�if����rG_}U+�ې��Q��_�gC�����flc�XQZ:3l��Ǳ's30`��]�v�j|��}v=��1J;	4	�P��M��F��ǩ���}�*���^\c?�­Ǌ/w�l ~2lJ�a��Й��K���������� �=�P�Z���j��|��m�m	I��|χ����|�o	�C�td�	k�
 �PP��G��p
�ȁ�:6e�^���Ӷ���|��ڝ��^�,�,7�mKZ1x�O�..��+r�nql�%���1��ALd@D���q���� �=?����%�t�d�{Wo��aM��?�(��{r����iY^ �,�w�Z<eՐC�L�nU�⋏��?���
�s0��>N�g���AV�ק_OYV���!�AtT(�r�DJQ��	�ӫҶ����^G�$CM$ c-�&=��ɯ���R���`F¦+g�벣W!�Ao�$�Y��Ɏ:Az9��3hDQB`��| �C�&�n�2��bu�P�αG>:��H�zN��������pب_��m�޾��[�| ��*
�fE(`��ۭ+&�L6�sU''��z �#��7����d��w��J��gE��#Wة0A�7���wr�{�����8x0	>��&����|Xy��mI�(Q�!ɣ� �����/�;<f160��� �kX��z�bEpp�φ9��R����}�JF,~�0������"�f�(Bv���ޔ��������j�մ<�zd2�r�FW��d�-9��}���m5�3�&��ul�5���|l��+���<[J�F���{v�[`�s<�~���w7�$oB���t� �*6*Z@�Q�j��S���r��oy��ͨ���S�A�d�()��.3O.Ö��"n���y>�t�l^��h���^��Zr�6w�k�3���Ct����{�S�-�7g��p��Z��&�b�S�l��[�"z!� kv�3}�(dK�{�����=u����.0''p���FNR�xJC��~J_)Z��&(�v���	ސ��#E��0*��s��or�%���\��x��� ��������Ba�o���/������:�q��V�����n���Ǒ���n�����B�;�Gt�7d���]�K�ԙ ��!�w�	�p�+ˢP8���P�3gg|-k�쟬b�tpv:�"�@�^c�)�����č3���М¿W�����svV)����2�=}��$�O�}EDE���#&?���H!	�rp':�TiI��WW����g��J��g&�$�(	 Sd�t�N�Ky[5���c��({�`�9J+pक़����08�0K��E�_�6fz�#h������HY�"���u��������á1>e�0�IӔGQ�#a`��.�F~};�h���BI�vͲ��E�S\&ρ KɄ�ȁ��zm��^(7�h, �@D�wm�</]c9�v��N)up0M3d�\����(y���{P
M��U�%_Z��+=���(0���=�"Oq�$v(��]5�����̘o^������t_�����@|�wBNk����V]D� �-voڅ��HP�l�QF�����?�@�<�������8^$��%��	{J�w�D�<��+M{�.�c�w`�����Mnԫ,0��i�ԗ��f��Ul�+JԲ0L��}��خ�`���H\T�$!ߒSQ�v>3Y�H�A�����})dYec�j�W�A	H�dp�jn���z�!x�}\\u���������TH8o���ǐu? E5��~�uK��!H������uh��K���%�ϒ��U������Kl@���H��x�/-�0����f\���s�B�~"?��
�t}Fɡ!{a����k(}�(R⨥܉DYw�V��I�oV%�������1���dO��R@��\�1�8		�(�rk}˔O<Č$(|��Vʔn�����nO�� �y��\ax���<���Gƪ�z	V�y�]*B��{�ݙ��k��Ѫ3��/ʴ� ��~��t�^��������
Ķ��:� ]�&���Q��P��0[}�w�A0+�t�],��˦�+7sP���W��
v����d��r�Z��b���!϶�?�S�	eY��Q$�F4Ƃcu볏�A�����+<��,�ˮT�EO��,ZζJU�F��06��;�����u��.ۯ�n���WPn�O��$������Vjk�:=~N#�p�n��J�T�PX`�L�	æ��g�tf�/��M���}V��Z��h�t���$応��O����7�K~����w��bJ���)�ⓘ���BUk�T(��{��wR�Q����x'7�s��~l�W9`Vd�����ɼc)޾Ҫ�p��lt4���~��ĩ���@�<�	��r"&��ɩ�(-q�+f�Ӯ�k�#h�B�)����E�h�=�V�^��ߞ+���"$ˌ�w���S�CG��Tjt�
<bg����69m-�Yb6&1��g�Y:B�yXf2�B��eG�
�?F�F��3��=o��mT�2��7>y��@`��a�r� 
�[�Z�B �짦q�2�(h1���.�%~h����
�    ��s���ȥt��Ŕ���Py�ɚ��m~QK̊	9C�����LP�[�ګ��l�.$a��C�"�]��O>Ψu)�Qun�{�$9o,�2��!1����"����y AR/��m�hG&:��Z�;#�y��b!����"�9e��x.���/Ph�BR�ߑ�j}O_N|�8`�`��{H�;0���]��fk����J�ZP�9�Xf�-gUP�ٔ�$������,��s᠒'���U�KJ?w�3;_�In-�t�˜3ؙ���~�NH� ��(s�_%b�c�Ro>$�@�S���5=A���$g�
˧ZE(�;�R��S#�K���X�U(�{��$- ��b��h�鱹l�QM�|@�����8ǭۣs2�1\tbY� ��e��tspd,�_�y��P�]�v�[�<����x��Fĝׄ�ͻ�*B	Rf`��H.�uWO��3�^T1֊���V=�ox_Ț�{�%EPS,���UіPz?��9?Ӫ�S��Rp]�;|��Iiu]n�`ʘ��ch�KC��UËTU�G�X��W[�Y:���L�����M���Ȇ�=�lE�#r�&���
�p�AU�ϔ��+;����E^�26�
# �4`�t�2��ݕ�,n�e_�)��NV�������x�T�m��������Pv/� ARw���Ӊ@{�O2Z�%hbA��\��2BJe	��-�
�B�,SI*:��..jyE�#�����5�^X�K�����E>p��O��Ἦ�p<9�����⪾�(߫'��S-'��kQ\2zL��z*��(��,��	�m��̜�}��#�*&����� K}��SS�6dkDٱ�o�ź��}�^\ϱ����2,ҕo+�Z�n��)S%s�'�*{�����y�T�Ex��뎬�|9��`�N|�a�tި��e�~�@��(_�x4�H��Y�⌃O`�,_�_B�7����Ǝ[|�D���#?�����c�4��L>�0�ː"3�Ɒ�\0GQ�6W�'Vpe�&e�;��@[Q��V
)I��
֚J�'�$7�f��!��P�]3͙=������HE6a�����3��J�X�����P��g1|P�(r����ƕe�Z�vF޼��/F�߉>�jw���`�չ$o��ƲX�k�i�	6�Jm��<"7�uI�����->��N��K�8���'�((
��U��>���z���M�A����g��?p���dw@xc��nR��.�O�q�DkB� ]�������ﷄ�gD�Ѳ��I���w���<�"k��l�#pr�!����y|Ȫ�IwJ�3%��n&���f� *3����ZSި����k���|D/U�k����>�R��m��*+&0�"�����Վ9%�a�#��<�8(�Fd�1�V��)��1TҦ?P��	���*J�*���VM���.FB���� CK�(m�m��tⱒ�ˢ���+��/�(��"�-4���,�*OBΎ���w�܊��`]U;Ã�֕��T��w���
LLi�Âٳ�e�\��{�]� �E���)� <��gTo�FXP�R�����O8��Nb-5�2,��?O,�N�:O��V��7v�搤�`թ��|)ǭ%�ZnU2�#�ƗY)U;J��T�[���KY\��{���J�He�
+Å�,�=�w��7����^ʜA`gk���kB�QEd lG���b���V�rH������ϔ_$ ��M��F�an��QAN�(�$F��1Ec-�����Q$^,�;��i�r��B���#R�jW�ϐ ��C��|?���u���5k+Y�	V�r�w�d����P�X��� I�o�(�� n����v����&���[m�
� ���N�b����.���	^p�	 ����[��"zLz#ڗ@���3�M"�UX�lÊ��p/�Nٿ����Np��p-�lT�Q&�a1T��n�.շe�K��e�V	��I�g��rTysAxqK����\�,a rq��f-�Ic��mT�_�k!�z%�<V����hW�j���i����uv����z�uX��G��a��$|<���H�(�j�%�^�2wX��GF�U|6b'�(CT�B]��+Vʙ���nWü]�i�˘�]�m�vE?NbӴ�h�2ʅ��*DҀa��r�u���C$OE5$JSʰ��q+9!9�k�9�c��L�|�7#��
5�$	�B-�W��!�Сf�MJ�K�������f�V��u�g���<�::�A�z��r+e<�ԨxD&��B��	d�Xq8�Q}�"Ek���ҥ&����c7tE�3�)4n��,kԪ}�͛١O�w��ב��b����̘Qt3�9��*3;���%m����RF��3�V�A��gU�R�}+�? V|���'����YB�[4���]a�ܙ�T�X����t�N�7�� �b�-st!
�3�T���.�C�Z7H`�#����\WP؄�޻!��|!Ę��p������
W����C2;���:�mV����$���C��>v��������3\d0�̫�Q˶��H�B���	u��7�c5@?�&�j(ή՞9-���(��d�d=�s �8+�hz�iY�m��@�������6w����fAr��'���EZ"SJՁ5.5��j���V,ZR�1_��M�R�Q�fq 0�o%\%�&.��:��%���5�~���Nj����h��N<�I.`���N}��=6�fI�n�?#�(�l�I�T˟�;$"A.��g}ǳP���P��tda��C����+�����8,O/����FEc��O� �ߡ�&�+�-g��K�쑭3lV��ㇼ
�i�wI1�Oe+yju�k������-��o5
���zQt,�C�����e�.71�@� �����2���$����-9
�5]�JY-e�!��W	ła�I�y@��N©eY+g�k�J+	3]��|�4�AhT��>OY�5�=!M9(�=H9/�\Je�ˑޒN]Y�}��i���E%?��#=�խ	&��W�i{BUF�[���k������(��Y�C�> 4����~���4&d�X�fc2(�-����_����n�w�%(��&�Q 2-˼�
�E ��D"M�\Kdg��r��d�3Uii��KiS9�ē%�6�0��=�c5+;�T-�c�@e��-�z.��3&̛�I��r7ֈ�8�<�� z}���x`*&�E�Q�f�F��
M���Q� �GeRڝ�e�A�O��si�ƞ��fj[y�+M���-o��Z�0�e����Ѕg�}�|�{�z��65ޓ�K �y�� u����	X�2����d�VP�j���vT�#WM���X�<E�b��m��m��T����Mw:`�/��m.�&����4�Y@�k����.���4�-Lr��= @������!�����lx�v��x+���#A\��f}跸S���
����D�S�"��}���B��v� Tft�8�|(����J�}kjY*
��J���wS��qX��.�7[V��\	%���d�30���
ԍ�����DL7�J��<���(��c��c)���,�����S��o��X�"84�(���KA���=+�&K�_m��`HQ�	;�HJ.M7*��O5�֘�.���8Lz�t�R2�
��ڏe2.��СRXz!�|�SF5�3%��|9{|��)�ێ�B��B��CV��W�;�G�z�#Xeb�1��Rfv\��Q�d��*2Z��N[�\�ϋt��J�)��I�r��{q������� f��,*�g�U�Ӂ�A�����l�etu)Z��i���n7�{�h/�w��9k�'����Z��㷫Z6�=�����`�%�i��z�4j���qd�i��S�����Mum�3��m|���<V�û�Z����h��}+e�J�pc9�)A���	^P��[4(�;b���`�x�i��K�3Z�_˥�� ��&��;
�� ���P���96��.���Yyy䓭p���b?�L�FD�M�q8����T.,$͝�
x �  vm����.�f������~�}�e�^�WZ����%Ƽ6pD	�8+�o��K��x� ���m�C�	4Ly�@ձ��Z��p�C���#"'�Y��	U ��U�,>��h܃{��U�G@�4Б�3M{A���}[�� �T��0��`q1�kN��v�@.c����͌"�C+{*LI~�iM��e��?�k�Z�Og-Us�(�ƚ"��X\ɳF���O�]:�TG��La�fK��4�4��{5���t5L41TkF����|�Q�E�Ȋ�Z� �wD-�����hd:�l ���9�
���q��25�=1!��=$�sV���E��]��,���u��Ux�%*�5�+h�&��!�Q���� S�O����&Og��n���%;UB2��^���/b�����"
�1 `�l�7��p��gB��+�(h9��2��MS����E5�૾���6��5�^�.�޶V�������N�"�!�K���RK�">��]����8t��t/��1=${�����Q����ɜ략2u��P��kk��0i}4������w�tRɦvGve�Ë�a��6����JE-��1r�R��'���.�W����}�^��%���P���MYf.E���"}�"�����r���)�Uy �n
SU.T��18�������.�h=��#6�늮Z&T�vG�d�S�Bg�cA��Qk��MW��Nm�$�1�q��NC�{vNi�ɷe0&m�y"�dŉ�erf�ŵ6�����o�V��8�� B����Ә�<ǹ#�:Y�#_�P��7�Á�Uϙ)xWzNVd�%j@�����F��TB�f.��v܎'��[�@H����	����"졌� � _���>Wop]{�"�I��R��O��eqR�%X�֐�&Ҁ��D�Q:~^3>[������9���U2���I_p"�ƭ��S�+�)��+�d��~�ƤB�Mɀ�,Q��a���o�U�acC��c�=5��V�d�L1(��^��Y��,��G���3�V�%5T�Z�d֠*`J��K4���%a�)>�P�u�dn��_k��A��n'�� �b<�1�
у��hU՗��㑒+���2@kKfD����8��?VG��M�T����O���ZT����)Xz.�?y9S�k��@ȴ��O'������OcࢥM���$�r{��y��px�6�s:�1�2h��[#\ ��tI�&���k	#R���o����(Q�S]��}����4!�WEݛ_;�q��F}��p��1��Cp�e�&��(���7��^����)�Q�Xoz��3w����A]�5=K9	#v���Y9��t����4fba<g�<C�E*3^W�����"�|��8;+�y+�]��\*ꊞv���}��weҧm�,���]{��y<��j���bQ��%�9s�,%�J��gD�.gb*<���嬌2�)�7��x]L����y�ʌݓ-`�DX��0�V>;{��F�Z[h��mv�»u�w-�'mv��H�<�����ؾP�།��k�Z�X�����lp��������/���޵��mm���͈M�1�,6�d4�.�# Xq֍z}����L�0�	���hkR�#f�l�XDo62�H�u��O���߻�R�e��)�y|6�%�?��2B�#�״�:J5��2`E�8��_%3j��.��@;�	������>=ڠ_�����,I-C/��`��;��A��l�:r�����l�l�%7h�+�)��� ��K|�M7c7zc
����o�P�*�[T�>q+�!-!��Ǎ@���f�D5�dSH?c �6a˿*��w��dTֆ	�<s�<T;  d�*E�:p;�%xGS����M��D��G�ABَ`�`�G�#g ��u	jm%�(�r�x5"W#x����ԟ��9�L��`�b�3��%������)i�8>�s<
��Yr��頕ߙ�L��$��UȤS��\P����tȷ��[Օey�I�&�B��>��9r���z96;�V�ilҙ�B���Г~��;��)��|+��֙���Z�8R��E���m�5�J�!@һ8j�Ȁ�U4&I��o���UUU�N���[$=�:��[W�"��бg�f,�:/h����9�]k:}!?��f#��+A���tt��c8Q��t�^��6hڄ� �ߟ��h6S����ʂ۰�wA��@}1�*܂�����ff�pD1kh�x*�H1��*&�Hn[���n�I6�|��R:����Z1�����ͽ��5�p���t��	�E�H�Oܒ�,�&�L`��"���J5��ӊ��d�� ���BÔ0��\[_��%cP
I楤	=Lee��]�3��m��\�=���Ni�$�L�j�2Ϣq!M��٢1+>��w�@G/𙞵�m��\C�pkf��n�^�U�A���lq�:����g�y$fx �u����gt���zA��Lc���lt:0���v��]X��o&�*�~K��JB��q�XA��[�"��8��*Krވ����n�3.)�q�b�M���m
��띺��ұ��c��?D�熾U�+��� dQ�P�����F��~|<��v2�O}iJ-���]���iĬ}�AT��CˢJ�?ȱ��w�C
D���)��ӞW�lay0�,��*�_I�Z�J|�?|rÙ#��PB���PI;����&�R�ۑ_�ך���L�"%W�m|�V`g�\�y�rU���ަl�9}������#}���U��)۷��+aݎ��T�4����8��S;���wsG��0UpSj�y�?�Q��S���Ve)��-/s��	�*0��r�׼{E�tz��D��3ouF�r)�����U���W%�u�q"�W�U��LS�u�E��v)�G�ݍO��w4�Y8O�Gg�Y�����c����ݬf��ۥ��dy6_Get e�����������Q��L����/�C��W�#�fd�~Z2�+q:\6Uq};��qV��\}t�LA��ҷC�Ra�Qp�d����|��"���Kk��e`��Ӽo\�()�%O�ԉzm6��S�)� �'��2�������*̰�x��+Q <���R?�[ �=���a���j�<��]Y� y޶q���e:��Y�HRf_o(AmR$r���E�ޭ]Raj]����
��0 B'���l��<��'YA�������	s�v}�gi-

ʷ)x�I-6H�T_��}�2Ee�e9K2{����ٯ
F�J$2���c��T���*6b��o<���V��q�gC�h��`�����b�Ѷ_J�66I'�7�XSU�]Ȁl��>kM(=�&�:hA�ծxΚ*����Dn]�9R�X�Y��
�@(�I����\� ҇�B�L.=��I��bBN�G�JN���et��8Q=8�}>�/�������>��� �Cp�b܏��9���:�;;[�B��+����K���Xh�(d�6���p[�e�����/*�
\�F9�Lj�l0��̽��\Q���x�p���pw��f�����[Kә����N~�kG+�3�%��b��� XL�Gǰ��(B~%G޵���F�2�_C���L�P�UP��T�#^�ǩF�D;����S�c�q ��MT�=����m�����V�A��0hZo�n0g�o���3:n+lC�&�A�?�F��pOj�Ə m��PZgLJ�����᮵�nD#���n��3��\�)���������}�!ە��ֻ�_� ��y�Czcm��'V�a�x�7�_��b�ҲVs�U!(�v^���L�<�'�V	tbjE#M:",���~ϋ��4E�ϰ���E	m�Ӧ&hl�6t�xG~fx����'?��_b���kQ��z��=)�*�̩ޣy��H۠��2����������",�         q  x�Ś�nA��;���+'.+X	���6o��!��i�nQϦ��\�k������pwz����N�����1��=\n��||<�96��������t{xu=_Ο���N�l���'S�-���k�>z���l�k<�`��RNf:�'+��tmQ�LB��x�d�����n[��f��H��I��e*���d�Y;�]=�p�^ڨ���$	:?鴆�#��r	�;V"YL�4�\r�=<���Gh�I�RI73r�!�Bɴ�R�Sd}�D�(D	U�	����\Pa�UD3Bul�����D,T7b,*yv%ʯ�]O_@���Æ%��l�H���$׉`�L�&(Ye�a1_~Ly������2E.DJ �H�� �\��N��)
��.&t�0�X�F�F�S�
�HɊ�_4� �J�bx��䉢����)�(�{�]B��	[L�*�'.?Ѧ�����t,�}L5����T��l��)�uJ�Լ���M�|I�-��xk��k���+lbj�C�u�1~�c4F�ǳ��4�
-�X�-���l�aQ�!�D��/�I`�B�9�@QS����ݒ0M=@��`����5� ��?�����M�-x�s����"������'[)�&5�Y�0#δ0�$�A��?�X����"�q��� i��25"�� �M��H�ǥ�!���qe3�
�>���د6�^PZA|^��1^z���h���xG�C$�R������FX�Iez1��aZ�X:��������M:ȭ*mci�����ގ�wL&<���ʹU���h �V� �)Z�^)���>f%�=��ޣ���Ȃ���T׿��o�:�v��qt`lQTD-ޚ�Q`'=N�p଱���M0x�zY�oO��         �	  x����n�6���O1/�I�,�4��� ��x:����E�>�h]�u���u�b��:U�����ח�ߞ���������?��v���->������^������/����<�������v������������s{�������߾�}�����?^�'O�|��ݏ_�g�1��� �)ܬ���"���!�}ȱKa/ߜ�l�q�����}:������\����~{}���e�h�5݋w��/�!��ռ���=��:�m��ֆ��]r�%p��d�'}����s�	���HwE�`S.��9ߍ��j�����7��ϧ���Wr���WO���P2�d���<�a��u+G�M�gϞ��m�+�A2X����qGv�����8��VL6��9`ɭ)dp�,������k����p���1����vi��i��d��I��5a�d��X�]��:9�].B�Z�+)�z#�/�8��0Z.�m�k4��i/{�Ⱥ�#`�k���.�%,z���x�EϚ0u�pp��few*ACMX�mz�kob�ɆC�T��Ig���?�z���H��,T�2f�eW��ܔz�	��@b��o��Q>���u��� �`�+�?/=A�x�/���>5�w0'�e�h�oy�
{ ����`%�=�nQ8��ixѠ)'b~H���Ug di��V� ����Kr2���
�4�g��#����td:�V��O���~�ē�p���~է6Ǟ�y�6��!1��Z��i⍰���YT��3S�]��D`���ֲ����K���Av���W#�{�f,�)c��:�u���y�X���d=9P�1�%h+���8�����͸�	*�P���Gn�*��8b���t1��:Y6�r&���W���a��mq؏ I���PML��-�W�D�lg1 �f��2h_�z8�0ǉV�%kK&�9�C��GNG�7��P��q�R����\��§(�����V�-�~-p�cjk4~�y�}7*�>~�`1A����s�zs$�W۽�1�F+H��^q�S��V
B�8��IA.�%9]o&��)����Y#;3*?B�aY�=����Cn�I&j���j.�/>x�nA��t"��Az�."G�RӕA����0Zn�N_]Xe@j	``�{BR�
�\f>]W^�� �15�jx3Y����<�m�,/��w9U��52�#1��g�V8$�ؕ@Vt���'b러�e��ۢ�1m�&��[?5b���Қ�M�R���:�cH�ߵ)����( ��� )2��$���6iU��`��J���DY4�kO\��{�������LN�n����Y! ����Δ�m��a��3Y-j0�aah6ѥ $�Q4[�:|-�A�-�k(�<9.��k�� HK%���W�%�T�W�y�}����f(�_�4р@W/��H��7C6�[���,�%O^��Ԝ_�ӥ~"8<M��ͩ���M这_7@�RcM;u����n&H��09�����6���Vꒋ{����B�o:���rT�iMU��MZ	Yh�6LC��������M��¨��=���<�
�	ۺ �̎R�+�̍�X�[���3qAOvZ�d+m��{;��"�Lk$~�SkGv}�c-��D�3z��Ԝk�3{?�~�m��Wt��F��Z%�RT���C/�ڢ�N�����t�I!\l��Ĵ����/N�κ�����,q�����X���xv|p&��M�����^��)�p*�p��q�v�V(Ϙ�Ϧ���ͣ��f��#
˞5���٣V#o�\0/�;ρ���L/�����#�/��N0�!�+Z����������w�o��Tad$� �1VY5�}�L^,L.�N����������u�b��lW|4�&XgL�0�N��XW�8�:�r��r\qmn�'������⁊����@KHN�"�cO��ꝫ�8�R;4Op�. ��Ձ�16x6���g@M~a��[��g���ܹ�����E�<P�>�g���xp4ʭ���E]2�@��\�Z6�6i�*�.�L��F
�����;�R�""���2��� 2��p�Q-���� ���9+�[�*�b�c��b�
�����t�B0*�e5�%�i�99]������ى�,l\Ԁr�6���z����|��?�j�B�»���&�y�����n��Gf�蟪n�e��Q���~�� I�i�tf�Y�Q�b�}�Y���F�L�+n���f���"uX�Kq�� ��r4+��v'�� �e.J�xAj���x���rW�`���WG+yUZ�x�*,��jCĉ��ii��ۑ�����L��Wh>��\0��	�����4�����Ȥ�����Vg2��y4OXWK��h3��|��]dF#�
kp;+_WJ�mM�;���~�N�7�������"���o�i��+|�F(��� e�Hۜ�'3��.��x�.{Z�L�n}�bk[L��Ǉ�� ���            x�����47nF�����(I��Z�H6�AV�8#c ����~Z]E֛u���G�CQ����÷���O����o����/?�������^���_~��/��}}�W�./���o���������ۯ?��W{e��?~�姿L���o�����_�����Ͽ�V�%���~��>"��^����?���__��?����W�W~U~m�?�������ǯ{�{y���h�?Frl}u���~~�X��]�[O�w�q��+OI?ڎ�0���)�z��V�!h��e���ky%TMr<ⳅiBMz����2����:sl�Q{����o����?][��1?ț�Ǡgeʦ'G��Б7/�\V&;�pN�-��X�+#n��~��j�G�|7�}�3�f������h�=m�6�i�����}�ln73�[T{��~{�1�/���y�h�ѓ�$-�!��)�f}D-)�e�R�������-e�m~BA���Ec��u�m�~�v6���-���k��g�l�+{�8�Cж�s�WKS�+�[�����PW�ѡ��u%E�h��� �dPX�KPW���ɋ�/Abo"���>QY4\�4@c��et�k�a!�4glSUͭ���خ���eu�aa�����vi�1+�jr׫u��m����6�K�WC�OAZ�hEWQTUu]��h�5r�.�h�-��I�n@��Q��5���=�.���Ikh���Uk����Q�QQ��s�]^i�\f��"ބ�U/w��ж��r>����lm�3GZQ��`�죢k]c�?TC����j�ҥ�0�r^M[�[�>�ĒjH�C=ea��6�ļ}CϦQ�PmC�v_��>MGQ���r�0ʶ�/���놶mu��D��ѵ/���7tt��ɽc���=G��i(,t���ɞ�����]n�;�E4=�2��{:m��r�od�L�������b�B۾-�w�]�8�dq 횜�ה__+®׍�|�����k�|��Ixj�Z�9�9Wu�ns�+J��Yy�{,BY�sm��CE�5dM�����S,�׺~W����	�z����n-�Ah�]��f=K���Dc�I���kh����Eh�2��Ң4�QpY6�JK�U������h�}+���&�&k����lO�WI)4%�7�_%]��)8�MX���mx��V����������l�"$VRD��.Tü�¶����yD����<`��|V��U��GpXɑ���O�X��	y@Vr	·�1�����
������٘1Ac%W]��������	3th�\h�6�L8HVrL��J@Y)�)�	��rw��>�d��w,P� o)�k܍6+6���ae�YΞw�1�0Z)� �C�J+���1	F+�u��&j��Ǵ��H�����%�K�Ҋ����Z �"����	B+�뎘�v(-m�c��gE4��luك�F�,�Ɉ�ӈ,w�8��@�"����g�� s3����H���V\�m&ൢ_�j�'���u<'� �ʣq�1�nE�O�Ȁ��ߦ�Ú���	�YMT�'�޽	8W��+�Za�\�K��'p����df ͕��.���+���ƚ w� ��-,W`�[W&�@p��k��0I�0W�0��+(ҕ��g� ���[oQ�ѱ��d�JK�r6j�ו��{�+pWZyJ�7�1�{*�X��)dnіhY��V��c�F���>� ^i�_��O�w�����[��җ/�G�	��p4 _��#�kC���s��'��;���+U��(޽xz�!{�}.;l/B�~5�34�x_#?�a]��
�w��c�c ��y�y@�W�{����	ڮn���Q ���n�çBe�0Y;\X��$cO4$��N��3M�Ɛ`Y�ށ,��l=_���K	��/e�Ci���a�6��)Y�Yd�e����Q����8�ȹ�Z�6����+�M�M�2:��V��Mp�ѝ��k�Ř'�`��%��g@Q��A>N	2�(�%�I$�b��F��6ȝ����X#�NO�n�G�tOM'�	�(���eo��)L��Bv���r�������{�hg�Qrz<ʰ�7C���d���:�(�{��\2�(��\N�����8o�MY���p��7C����Ч,�UT~����6����\��=l��DI���Q�c��=`F��M��f��GGF)�#��=� Y=X���#��M"�9��RB{>7�LK�.N�y�h��e�b;Z"�,1�8Fpq�N� �����>Ỹ>{ )rK��θ G����#��H� �7�v	s{#�ʰ�H�2�C �Q��KSf�Qd���M>4��q�)0�h
�Y�&d�Q�KGM;DV�c���P�8G}o �����@���˰�< q��M9{���P�#q�!D�{:�\9��� ��Ju�Vn�"(J��ϐg	&����cw�R�z��l�l���.d�-�Y �'���"�(�+��{���j�:e�Q����X�Gin 2�v��[F�XfL!�(��* ��Jd#�yQ�Ę�AJ����rj�����c! ��[�y0Rny�
��"��Q�����ȭ�(Ïҟʴ��� ��R�{ ;J/�aD�aG��o'>��dW�H�FJww�i�4����`>��	����M'D�O%0cj IY7�2�&)p�qؐ IY��qKae@R�F�ih�#e�Nd&�����po��ɰ��,�O*()���ޫ�`HYo��F�6"�]��Ǒ{����t	+�l�󫀎�\��jc
ܨK�u��Q�Q	|��"HQ��8��M��/s�{���&(ݲh� ���;���V��.��֪��Kf`mP7}�-,�5��rƜl/���(Z�Q|�5�G�[y|�ɉ�.�t ���6<Q"C�ա�3wgoD��x@�t��{���"yZ=hO�=��7~�J�
P��Z��+ �^�?FĠ!B�A�zˍ�PsX�8*��z�xx����~��V�j���cĨ��#ۏ�j~(��M8��p`��jy�{�2�C��X�xy
�	��D-O��M�Z�c��^���Z�}V����8�|��M`��+�-	U�C���Ԙ<H-^Zoz
��*)rD6n�P�1�w�Gկ��*kAC��>?7i�H��m��*T���p_�Js@�V����jϻ5C��'~��8D�%B�u�	�P�� m����9ڔ���@����>(T�V!Lg�&T�e�#��{�x�b�0T��)��(T3���@B�{��
P����xל�Pc*|��$Ԛ}�n�A�Z=��HZ�P�5��.�/РV�4�\�t�K<�j}:�jc�}��#ޱ�r���O j����#  ��j� P�=@��+{
2;�75Bd�O[��ߊ�
����Ȯ���~���GǑ�y����i�O�t,uP��J��?H�RI������{
���6��+`��k�1Av��_m�㬼�{�c�<|%����a7��<��Q��� �i���È�`=�Q~�B��V�x�9���91���z�z@2����5.õ�������C!�O�{m��00���j�w» |�6J�o��t�ji�] }�:�S�[��r����@���朧���j|f�o�x�.岳}����%:�n㎋�"�R�"	�W�L�]�"`]B���4�D<b^ ���y�c[#tN^Y��1Q���s��e�w;]]Ɣ	详0����)�d��1��j��c��3B��I�x!r'��	U�8��^���ne�|�D ���+6@�
��C-m%p`����X󕴧���P`����v�
��[~��{k�%�ߵ���3�(T`�����)��f�����=�Z�J5�a𯖇�o���rO{�FH���Z"�1�����06�6C �j��P�u�h����[�Ӑ�RKz[�v9���Y !P_-���p`�*�l����^��c���W%��e��@}�ZM�Q��p��z�����Y	� ~U��y�$����G[X��''m3V��� �]���	���Að���Z�T@ X  ��9Ƈ�AA�U���'v��U�g�=���_8hH�j�Y�N ����2e�	��?�E�ѝ�-�+�`�n�y�7��^I?;n��uwG<�Pa�����1!+&�5�c�U	`X��r�&��z��/�1R�pܯ�5:�.����J���.TX[�~>�{�6�-�)d-л����>dX[��k�m��V
��(mP�9f=� amӪ�˨ݢ�c%�`m��g,h퐺��bÄ�Ƿ��6֞�m��a�ڟoh����5�;��	hX�Rұ��ڃ��P���(�~Q������b6
���q$����uu�
�c
����ǁ�u�&�O��^o�q) �*����د���yl{j����;6�Wק���;(�>�1��z���,�t�-�_[���
���㟇
�������F��R�3$��*�ז H� �>[ʄ P_[�{�۠�k�sk��*���"�}qX�N�덉�>l�w�MaE�~R�@_s�C'PW��9r��p<
��5W��%)���U��D�%����n�-��%�2�?��Ԃ� ��!�G{S�к���	K��!���#գ�^�~���WQ������<>݀�7�{W�)���W�e�D�|u��\�d|-���v�� _���/2Q`_���'�
��;��]�W��C6NQP��;��� �kſb\�/е�/���׊�gKq+��.ՠ�q[#�� �0v���k�h�JQ`�=��ņ�Z��~��d�_/�<-t�D�y+gR���{�� �|-� l�pw�jl�N����=��v=<V��ѥ�I>Kq*�פ��9X��ɝI&�Q�knm����~�
~�$�B}M�"�2 �k~nk8;���i�!�}M݊��:/������Ʋ���'���n}і�Q���=�F#�
�袷u�k�ZN>���{�~u�X���מQ��Z����k��Z�X}�^��n�U��:��' {�^+�����Z}��=�(�5/�|P+xך�u��^�k���w-��w�=��mX`^k���f
��.�V�5��o�k���꛷ܟ�m��E�9�w�~�7yZS���׷���]s�3Y� ޵��x��o;����Ə��]��]���ܯ�+87w:�5���#��0^�=���!t�2�o�UP��q~h;Rx�]��n4 ����V��:��V�j������-�ݐy��֧�=~�R�9W@؇�Py�j16�U���Q�~�}���z��s�,?� __�dД��P_����ѻ}�+�$.��������cZ`_��o��
���n�ｧ}��������l�S!����@(���=�xD�����1�b�
��ns�F*��S艷OV`�_�^s3��C�9(���j(��C뭘�|=�9�#fC��'��G[hX��|[+DNnIܾiVX���մ}��[��]��z���6C�z���
�����ߙ�� q�����3��^�5��a�^�.�l���z�+����W7�e.�B|�?㛎-+��KX�1>S���kG^!�^�[R�1|�zq��q&i+�׃c�����|�Z�9�]$.��.�^����-X�^�����FP�I����շ�Ǽx=��4i �.��/K��{�{g���Au]¢�>����D���|dn�y�!��tAaq�Z�p�A�s]_�����s�زt]��L��麆���U����>ުK+H����S��u�>��ۻPYݐxa���]�s�bQ�\�ە�wf�zn���5�Ԁu����Þ����=M4���n�Bt���?�M��ק�$n�*L�o'x�������.$�/�!�(uloA��C��H�[\�����U�Y�޼��d��s�ݪ,&�/�"q��vOC�v��Շ�]o^�vRa���p�#�-�ܢ:�mT�ܝ��2틬��c��3X׻��߃HXz�]�u���_Q�{1۹��d�{Q��*�Az��Cu��{�� ������Ρ��o^bJrWX��>�yZ/�ׯv8�ϯ�\_݀x�n8���O)�Ξ���G�5B��'`�i ��~�$J3p���1�dX,:����!�8t�`]_�O��I�
٭K��7�k ݿ��w���	Ec     