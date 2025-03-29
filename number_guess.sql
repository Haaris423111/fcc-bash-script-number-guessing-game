--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL,
    secret_number integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 901, 900);
INSERT INTO public.games VALUES (2, 1, 30, 29);
INSERT INTO public.games VALUES (3, 2, 935, 934);
INSERT INTO public.games VALUES (4, 2, 334, 333);
INSERT INTO public.games VALUES (5, 1, 715, 712);
INSERT INTO public.games VALUES (6, 1, 721, 720);
INSERT INTO public.games VALUES (7, 1, 650, 649);
INSERT INTO public.games VALUES (8, 3, 270, 269);
INSERT INTO public.games VALUES (9, 3, 704, 703);
INSERT INTO public.games VALUES (10, 4, 130, 129);
INSERT INTO public.games VALUES (11, 4, 49, 48);
INSERT INTO public.games VALUES (12, 3, 561, 558);
INSERT INTO public.games VALUES (13, 3, 373, 372);
INSERT INTO public.games VALUES (14, 3, 561, 560);
INSERT INTO public.games VALUES (15, 5, 571, 570);
INSERT INTO public.games VALUES (16, 5, 85, 84);
INSERT INTO public.games VALUES (17, 6, 152, 151);
INSERT INTO public.games VALUES (18, 6, 430, 429);
INSERT INTO public.games VALUES (19, 5, 509, 506);
INSERT INTO public.games VALUES (20, 5, 663, 662);
INSERT INTO public.games VALUES (21, 5, 416, 415);
INSERT INTO public.games VALUES (22, 7, 410, 409);
INSERT INTO public.games VALUES (23, 7, 768, 767);
INSERT INTO public.games VALUES (24, 8, 668, 667);
INSERT INTO public.games VALUES (25, 8, 169, 168);
INSERT INTO public.games VALUES (26, 7, 352, 349);
INSERT INTO public.games VALUES (27, 7, 12, 11);
INSERT INTO public.games VALUES (28, 7, 801, 800);
INSERT INTO public.games VALUES (29, 9, 856, 855);
INSERT INTO public.games VALUES (30, 9, 225, 224);
INSERT INTO public.games VALUES (31, 10, 793, 792);
INSERT INTO public.games VALUES (32, 10, 388, 387);
INSERT INTO public.games VALUES (33, 9, 359, 356);
INSERT INTO public.games VALUES (34, 9, 853, 852);
INSERT INTO public.games VALUES (35, 9, 236, 235);
INSERT INTO public.games VALUES (36, 11, 914, 913);
INSERT INTO public.games VALUES (37, 11, 780, 779);
INSERT INTO public.games VALUES (38, 12, 286, 285);
INSERT INTO public.games VALUES (39, 12, 463, 462);
INSERT INTO public.games VALUES (40, 11, 301, 298);
INSERT INTO public.games VALUES (41, 11, 787, 786);
INSERT INTO public.games VALUES (42, 11, 288, 287);
INSERT INTO public.games VALUES (43, 13, 25, 24);
INSERT INTO public.games VALUES (44, 13, 584, 583);
INSERT INTO public.games VALUES (45, 14, 662, 661);
INSERT INTO public.games VALUES (46, 14, 221, 220);
INSERT INTO public.games VALUES (47, 13, 277, 274);
INSERT INTO public.games VALUES (48, 13, 350, 349);
INSERT INTO public.games VALUES (49, 13, 579, 578);
INSERT INTO public.games VALUES (50, 15, 250, 249);
INSERT INTO public.games VALUES (51, 15, 765, 764);
INSERT INTO public.games VALUES (52, 16, 109, 108);
INSERT INTO public.games VALUES (53, 16, 549, 548);
INSERT INTO public.games VALUES (54, 15, 416, 413);
INSERT INTO public.games VALUES (55, 15, 436, 435);
INSERT INTO public.games VALUES (56, 15, 131, 130);
INSERT INTO public.games VALUES (57, 18, 599, 598);
INSERT INTO public.games VALUES (58, 18, 316, 315);
INSERT INTO public.games VALUES (59, 19, 823, 822);
INSERT INTO public.games VALUES (60, 19, 418, 417);
INSERT INTO public.games VALUES (61, 18, 710, 707);
INSERT INTO public.games VALUES (62, 18, 316, 315);
INSERT INTO public.games VALUES (63, 18, 178, 177);
INSERT INTO public.games VALUES (64, 20, 176, 175);
INSERT INTO public.games VALUES (65, 20, 994, 993);
INSERT INTO public.games VALUES (66, 21, 860, 859);
INSERT INTO public.games VALUES (67, 21, 524, 523);
INSERT INTO public.games VALUES (68, 20, 331, 328);
INSERT INTO public.games VALUES (69, 20, 708, 707);
INSERT INTO public.games VALUES (70, 20, 254, 253);
INSERT INTO public.games VALUES (71, 22, 131, 130);
INSERT INTO public.games VALUES (72, 22, 181, 180);
INSERT INTO public.games VALUES (73, 23, 938, 937);
INSERT INTO public.games VALUES (74, 23, 803, 802);
INSERT INTO public.games VALUES (75, 22, 543, 540);
INSERT INTO public.games VALUES (76, 22, 710, 709);
INSERT INTO public.games VALUES (77, 22, 531, 530);
INSERT INTO public.games VALUES (78, 24, 345, 344);
INSERT INTO public.games VALUES (79, 24, 35, 34);
INSERT INTO public.games VALUES (80, 25, 526, 525);
INSERT INTO public.games VALUES (81, 25, 801, 800);
INSERT INTO public.games VALUES (82, 24, 270, 267);
INSERT INTO public.games VALUES (83, 24, 521, 520);
INSERT INTO public.games VALUES (84, 24, 785, 784);
INSERT INTO public.games VALUES (85, 28, 795, 794);
INSERT INTO public.games VALUES (86, 28, 847, 846);
INSERT INTO public.games VALUES (87, 29, 790, 789);
INSERT INTO public.games VALUES (88, 29, 39, 38);
INSERT INTO public.games VALUES (89, 28, 744, 741);
INSERT INTO public.games VALUES (90, 28, 302, 301);
INSERT INTO public.games VALUES (91, 28, 409, 408);
INSERT INTO public.games VALUES (92, 30, 489, 488);
INSERT INTO public.games VALUES (93, 30, 750, 749);
INSERT INTO public.games VALUES (94, 31, 16, 15);
INSERT INTO public.games VALUES (95, 31, 552, 551);
INSERT INTO public.games VALUES (96, 30, 435, 432);
INSERT INTO public.games VALUES (97, 30, 441, 440);
INSERT INTO public.games VALUES (98, 30, 319, 318);
INSERT INTO public.games VALUES (99, 32, 714, 713);
INSERT INTO public.games VALUES (100, 32, 738, 737);
INSERT INTO public.games VALUES (101, 33, 79, 78);
INSERT INTO public.games VALUES (102, 33, 884, 883);
INSERT INTO public.games VALUES (103, 32, 641, 638);
INSERT INTO public.games VALUES (104, 32, 241, 240);
INSERT INTO public.games VALUES (105, 32, 133, 132);
INSERT INTO public.games VALUES (106, 34, 40, 39);
INSERT INTO public.games VALUES (107, 34, 465, 464);
INSERT INTO public.games VALUES (108, 35, 777, 776);
INSERT INTO public.games VALUES (109, 35, 276, 275);
INSERT INTO public.games VALUES (110, 34, 331, 328);
INSERT INTO public.games VALUES (111, 34, 799, 798);
INSERT INTO public.games VALUES (112, 34, 927, 926);
INSERT INTO public.games VALUES (113, 36, 28, 27);
INSERT INTO public.games VALUES (114, 36, 117, 116);
INSERT INTO public.games VALUES (115, 37, 403, 402);
INSERT INTO public.games VALUES (116, 37, 988, 987);
INSERT INTO public.games VALUES (117, 36, 262, 259);
INSERT INTO public.games VALUES (118, 36, 419, 418);
INSERT INTO public.games VALUES (119, 36, 280, 279);
INSERT INTO public.games VALUES (120, 38, 454, 453);
INSERT INTO public.games VALUES (121, 38, 545, 544);
INSERT INTO public.games VALUES (122, 39, 700, 699);
INSERT INTO public.games VALUES (123, 39, 127, 126);
INSERT INTO public.games VALUES (124, 38, 298, 295);
INSERT INTO public.games VALUES (125, 38, 982, 981);
INSERT INTO public.games VALUES (126, 38, 616, 615);
INSERT INTO public.games VALUES (127, 40, 437, 436);
INSERT INTO public.games VALUES (128, 40, 914, 913);
INSERT INTO public.games VALUES (129, 41, 752, 751);
INSERT INTO public.games VALUES (130, 41, 241, 240);
INSERT INTO public.games VALUES (131, 40, 999, 996);
INSERT INTO public.games VALUES (132, 40, 907, 906);
INSERT INTO public.games VALUES (133, 40, 884, 883);
INSERT INTO public.games VALUES (134, 42, 549, 548);
INSERT INTO public.games VALUES (135, 42, 522, 521);
INSERT INTO public.games VALUES (136, 43, 333, 332);
INSERT INTO public.games VALUES (137, 43, 584, 583);
INSERT INTO public.games VALUES (138, 42, 928, 925);
INSERT INTO public.games VALUES (139, 42, 212, 211);
INSERT INTO public.games VALUES (140, 42, 717, 716);
INSERT INTO public.games VALUES (141, 44, 216, 215);
INSERT INTO public.games VALUES (142, 44, 663, 662);
INSERT INTO public.games VALUES (143, 45, 754, 753);
INSERT INTO public.games VALUES (144, 45, 251, 250);
INSERT INTO public.games VALUES (145, 44, 903, 900);
INSERT INTO public.games VALUES (146, 44, 383, 382);
INSERT INTO public.games VALUES (147, 44, 189, 188);
INSERT INTO public.games VALUES (148, 46, 293, 292);
INSERT INTO public.games VALUES (149, 46, 946, 945);
INSERT INTO public.games VALUES (150, 47, 818, 817);
INSERT INTO public.games VALUES (151, 47, 584, 583);
INSERT INTO public.games VALUES (152, 46, 593, 590);
INSERT INTO public.games VALUES (153, 46, 410, 409);
INSERT INTO public.games VALUES (154, 46, 71, 70);
INSERT INTO public.games VALUES (155, 48, 330, 329);
INSERT INTO public.games VALUES (156, 48, 597, 596);
INSERT INTO public.games VALUES (157, 49, 698, 697);
INSERT INTO public.games VALUES (158, 49, 708, 707);
INSERT INTO public.games VALUES (159, 48, 251, 248);
INSERT INTO public.games VALUES (160, 48, 936, 935);
INSERT INTO public.games VALUES (161, 48, 314, 313);
INSERT INTO public.games VALUES (162, 50, 388, 387);
INSERT INTO public.games VALUES (163, 50, 870, 869);
INSERT INTO public.games VALUES (164, 51, 283, 282);
INSERT INTO public.games VALUES (165, 51, 409, 408);
INSERT INTO public.games VALUES (166, 50, 680, 677);
INSERT INTO public.games VALUES (167, 50, 372, 371);
INSERT INTO public.games VALUES (168, 50, 227, 226);
INSERT INTO public.games VALUES (169, 52, 986, 985);
INSERT INTO public.games VALUES (170, 52, 960, 959);
INSERT INTO public.games VALUES (171, 53, 706, 705);
INSERT INTO public.games VALUES (172, 53, 441, 440);
INSERT INTO public.games VALUES (173, 52, 718, 715);
INSERT INTO public.games VALUES (174, 52, 357, 356);
INSERT INTO public.games VALUES (175, 52, 200, 199);
INSERT INTO public.games VALUES (176, 54, 359, 358);
INSERT INTO public.games VALUES (177, 54, 762, 761);
INSERT INTO public.games VALUES (178, 55, 762, 761);
INSERT INTO public.games VALUES (179, 55, 694, 693);
INSERT INTO public.games VALUES (180, 54, 284, 281);
INSERT INTO public.games VALUES (181, 54, 665, 664);
INSERT INTO public.games VALUES (182, 54, 421, 420);
INSERT INTO public.games VALUES (183, 56, 981, 980);
INSERT INTO public.games VALUES (184, 56, 308, 307);
INSERT INTO public.games VALUES (185, 57, 889, 888);
INSERT INTO public.games VALUES (186, 57, 566, 565);
INSERT INTO public.games VALUES (187, 56, 615, 612);
INSERT INTO public.games VALUES (188, 56, 727, 726);
INSERT INTO public.games VALUES (189, 56, 984, 983);
INSERT INTO public.games VALUES (190, 58, 63, 62);
INSERT INTO public.games VALUES (191, 58, 555, 554);
INSERT INTO public.games VALUES (192, 59, 810, 809);
INSERT INTO public.games VALUES (193, 59, 339, 338);
INSERT INTO public.games VALUES (194, 58, 41, 38);
INSERT INTO public.games VALUES (195, 58, 971, 970);
INSERT INTO public.games VALUES (196, 58, 274, 273);
INSERT INTO public.games VALUES (197, 60, 811, 810);
INSERT INTO public.games VALUES (198, 60, 260, 259);
INSERT INTO public.games VALUES (199, 61, 126, 125);
INSERT INTO public.games VALUES (200, 61, 858, 857);
INSERT INTO public.games VALUES (201, 60, 774, 771);
INSERT INTO public.games VALUES (202, 60, 798, 797);
INSERT INTO public.games VALUES (203, 60, 760, 759);
INSERT INTO public.games VALUES (204, 62, 782, 781);
INSERT INTO public.games VALUES (205, 62, 550, 549);
INSERT INTO public.games VALUES (206, 63, 177, 176);
INSERT INTO public.games VALUES (207, 63, 19, 18);
INSERT INTO public.games VALUES (208, 62, 755, 752);
INSERT INTO public.games VALUES (209, 62, 292, 291);
INSERT INTO public.games VALUES (210, 62, 473, 472);
INSERT INTO public.games VALUES (211, 64, 539, 538);
INSERT INTO public.games VALUES (212, 64, 237, 236);
INSERT INTO public.games VALUES (213, 65, 908, 907);
INSERT INTO public.games VALUES (214, 65, 618, 617);
INSERT INTO public.games VALUES (215, 64, 538, 535);
INSERT INTO public.games VALUES (216, 64, 45, 44);
INSERT INTO public.games VALUES (217, 64, 517, 516);
INSERT INTO public.games VALUES (218, 66, 437, 436);
INSERT INTO public.games VALUES (219, 66, 678, 677);
INSERT INTO public.games VALUES (220, 67, 436, 435);
INSERT INTO public.games VALUES (221, 67, 62, 61);
INSERT INTO public.games VALUES (222, 66, 81, 78);
INSERT INTO public.games VALUES (223, 66, 93, 92);
INSERT INTO public.games VALUES (224, 66, 66, 65);
INSERT INTO public.games VALUES (225, 68, 937, 936);
INSERT INTO public.games VALUES (226, 68, 11, 10);
INSERT INTO public.games VALUES (227, 69, 332, 331);
INSERT INTO public.games VALUES (228, 69, 501, 500);
INSERT INTO public.games VALUES (229, 68, 928, 925);
INSERT INTO public.games VALUES (230, 68, 706, 705);
INSERT INTO public.games VALUES (231, 68, 844, 843);
INSERT INTO public.games VALUES (232, 70, 521, 520);
INSERT INTO public.games VALUES (233, 70, 702, 701);
INSERT INTO public.games VALUES (234, 71, 395, 394);
INSERT INTO public.games VALUES (235, 71, 374, 373);
INSERT INTO public.games VALUES (236, 70, 752, 749);
INSERT INTO public.games VALUES (237, 70, 537, 536);
INSERT INTO public.games VALUES (238, 70, 66, 65);
INSERT INTO public.games VALUES (239, 72, 628, 627);
INSERT INTO public.games VALUES (240, 72, 410, 409);
INSERT INTO public.games VALUES (241, 73, 563, 562);
INSERT INTO public.games VALUES (242, 73, 74, 73);
INSERT INTO public.games VALUES (243, 72, 772, 769);
INSERT INTO public.games VALUES (244, 72, 508, 507);
INSERT INTO public.games VALUES (245, 72, 167, 166);
INSERT INTO public.games VALUES (246, 74, 666, 665);
INSERT INTO public.games VALUES (247, 74, 135, 134);
INSERT INTO public.games VALUES (248, 75, 68, 67);
INSERT INTO public.games VALUES (249, 75, 160, 159);
INSERT INTO public.games VALUES (250, 74, 323, 320);
INSERT INTO public.games VALUES (251, 74, 470, 469);
INSERT INTO public.games VALUES (252, 74, 516, 515);
INSERT INTO public.games VALUES (253, 76, 536, 535);
INSERT INTO public.games VALUES (254, 76, 252, 251);
INSERT INTO public.games VALUES (255, 77, 913, 912);
INSERT INTO public.games VALUES (256, 77, 471, 470);
INSERT INTO public.games VALUES (257, 76, 436, 433);
INSERT INTO public.games VALUES (258, 76, 138, 137);
INSERT INTO public.games VALUES (259, 76, 453, 452);
INSERT INTO public.games VALUES (260, 78, 731, 730);
INSERT INTO public.games VALUES (261, 78, 468, 467);
INSERT INTO public.games VALUES (262, 79, 57, 56);
INSERT INTO public.games VALUES (263, 79, 348, 347);
INSERT INTO public.games VALUES (264, 78, 599, 596);
INSERT INTO public.games VALUES (265, 78, 320, 319);
INSERT INTO public.games VALUES (266, 78, 466, 465);
INSERT INTO public.games VALUES (267, 80, 228, 227);
INSERT INTO public.games VALUES (268, 80, 980, 979);
INSERT INTO public.games VALUES (269, 81, 643, 642);
INSERT INTO public.games VALUES (270, 81, 121, 120);
INSERT INTO public.games VALUES (271, 80, 811, 808);
INSERT INTO public.games VALUES (272, 80, 810, 809);
INSERT INTO public.games VALUES (273, 80, 750, 749);
INSERT INTO public.games VALUES (274, 82, 707, 706);
INSERT INTO public.games VALUES (275, 82, 100, 99);
INSERT INTO public.games VALUES (276, 83, 739, 738);
INSERT INTO public.games VALUES (277, 83, 307, 306);
INSERT INTO public.games VALUES (278, 82, 671, 668);
INSERT INTO public.games VALUES (279, 82, 549, 548);
INSERT INTO public.games VALUES (280, 82, 713, 712);
INSERT INTO public.games VALUES (281, 84, 639, 638);
INSERT INTO public.games VALUES (282, 84, 845, 844);
INSERT INTO public.games VALUES (283, 85, 159, 158);
INSERT INTO public.games VALUES (284, 85, 862, 861);
INSERT INTO public.games VALUES (285, 84, 527, 524);
INSERT INTO public.games VALUES (286, 84, 197, 196);
INSERT INTO public.games VALUES (287, 84, 372, 371);
INSERT INTO public.games VALUES (288, 86, 130, 129);
INSERT INTO public.games VALUES (289, 86, 414, 413);
INSERT INTO public.games VALUES (290, 87, 917, 916);
INSERT INTO public.games VALUES (291, 87, 235, 234);
INSERT INTO public.games VALUES (292, 86, 87, 84);
INSERT INTO public.games VALUES (293, 86, 95, 94);
INSERT INTO public.games VALUES (294, 86, 847, 846);
INSERT INTO public.games VALUES (295, 88, 973, 972);
INSERT INTO public.games VALUES (296, 88, 921, 920);
INSERT INTO public.games VALUES (297, 89, 439, 438);
INSERT INTO public.games VALUES (298, 89, 148, 147);
INSERT INTO public.games VALUES (299, 88, 468, 465);
INSERT INTO public.games VALUES (300, 88, 274, 273);
INSERT INTO public.games VALUES (301, 88, 474, 473);
INSERT INTO public.games VALUES (302, 90, 150, 149);
INSERT INTO public.games VALUES (303, 90, 256, 255);
INSERT INTO public.games VALUES (304, 91, 680, 679);
INSERT INTO public.games VALUES (305, 91, 516, 515);
INSERT INTO public.games VALUES (306, 90, 539, 536);
INSERT INTO public.games VALUES (307, 90, 882, 881);
INSERT INTO public.games VALUES (308, 90, 867, 866);
INSERT INTO public.games VALUES (309, 92, 298, 297);
INSERT INTO public.games VALUES (310, 92, 757, 756);
INSERT INTO public.games VALUES (311, 93, 70, 69);
INSERT INTO public.games VALUES (312, 93, 405, 404);
INSERT INTO public.games VALUES (313, 92, 999, 996);
INSERT INTO public.games VALUES (314, 92, 946, 945);
INSERT INTO public.games VALUES (315, 92, 554, 553);
INSERT INTO public.games VALUES (316, 94, 986, 985);
INSERT INTO public.games VALUES (317, 94, 608, 607);
INSERT INTO public.games VALUES (318, 95, 489, 488);
INSERT INTO public.games VALUES (319, 95, 98, 97);
INSERT INTO public.games VALUES (320, 94, 702, 699);
INSERT INTO public.games VALUES (321, 94, 36, 35);
INSERT INTO public.games VALUES (322, 94, 218, 217);
INSERT INTO public.games VALUES (323, 96, 627, 626);
INSERT INTO public.games VALUES (324, 96, 317, 316);
INSERT INTO public.games VALUES (325, 97, 737, 736);
INSERT INTO public.games VALUES (326, 97, 517, 516);
INSERT INTO public.games VALUES (327, 96, 629, 626);
INSERT INTO public.games VALUES (328, 96, 389, 388);
INSERT INTO public.games VALUES (329, 96, 750, 749);
INSERT INTO public.games VALUES (330, 98, 94, 93);
INSERT INTO public.games VALUES (331, 98, 276, 275);
INSERT INTO public.games VALUES (332, 99, 690, 689);
INSERT INTO public.games VALUES (333, 99, 62, 61);
INSERT INTO public.games VALUES (334, 98, 790, 787);
INSERT INTO public.games VALUES (335, 98, 20, 19);
INSERT INTO public.games VALUES (336, 98, 475, 474);
INSERT INTO public.games VALUES (337, 100, 769, 768);
INSERT INTO public.games VALUES (338, 100, 561, 560);
INSERT INTO public.games VALUES (339, 101, 146, 145);
INSERT INTO public.games VALUES (340, 101, 598, 597);
INSERT INTO public.games VALUES (341, 100, 773, 770);
INSERT INTO public.games VALUES (342, 100, 489, 488);
INSERT INTO public.games VALUES (343, 100, 719, 718);
INSERT INTO public.games VALUES (344, 102, 606, 605);
INSERT INTO public.games VALUES (345, 102, 239, 238);
INSERT INTO public.games VALUES (346, 103, 849, 848);
INSERT INTO public.games VALUES (347, 103, 917, 916);
INSERT INTO public.games VALUES (348, 102, 374, 371);
INSERT INTO public.games VALUES (349, 102, 481, 480);
INSERT INTO public.games VALUES (350, 102, 222, 221);
INSERT INTO public.games VALUES (351, 104, 697, 696);
INSERT INTO public.games VALUES (352, 104, 619, 618);
INSERT INTO public.games VALUES (353, 105, 409, 408);
INSERT INTO public.games VALUES (354, 105, 30, 29);
INSERT INTO public.games VALUES (355, 104, 627, 624);
INSERT INTO public.games VALUES (356, 104, 582, 581);
INSERT INTO public.games VALUES (357, 104, 88, 87);
INSERT INTO public.games VALUES (358, 124, 484, 483);
INSERT INTO public.games VALUES (359, 124, 338, 337);
INSERT INTO public.games VALUES (360, 125, 953, 952);
INSERT INTO public.games VALUES (361, 125, 816, 815);
INSERT INTO public.games VALUES (362, 124, 1000, 997);
INSERT INTO public.games VALUES (363, 124, 14, 13);
INSERT INTO public.games VALUES (364, 124, 312, 311);
INSERT INTO public.games VALUES (365, 126, 653, 652);
INSERT INTO public.games VALUES (366, 126, 238, 237);
INSERT INTO public.games VALUES (367, 127, 242, 241);
INSERT INTO public.games VALUES (368, 127, 238, 237);
INSERT INTO public.games VALUES (369, 126, 196, 193);
INSERT INTO public.games VALUES (370, 126, 767, 766);
INSERT INTO public.games VALUES (371, 126, 643, 642);
INSERT INTO public.games VALUES (372, 128, 374, 373);
INSERT INTO public.games VALUES (373, 128, 55, 54);
INSERT INTO public.games VALUES (374, 129, 390, 389);
INSERT INTO public.games VALUES (375, 129, 325, 324);
INSERT INTO public.games VALUES (376, 128, 969, 966);
INSERT INTO public.games VALUES (377, 128, 170, 169);
INSERT INTO public.games VALUES (378, 128, 241, 240);
INSERT INTO public.games VALUES (379, 130, 101, 100);
INSERT INTO public.games VALUES (380, 130, 603, 602);
INSERT INTO public.games VALUES (381, 131, 617, 616);
INSERT INTO public.games VALUES (382, 131, 60, 59);
INSERT INTO public.games VALUES (383, 130, 669, 666);
INSERT INTO public.games VALUES (384, 130, 924, 923);
INSERT INTO public.games VALUES (385, 130, 183, 182);
INSERT INTO public.games VALUES (386, 132, 361, 360);
INSERT INTO public.games VALUES (387, 132, 709, 708);
INSERT INTO public.games VALUES (388, 133, 999, 998);
INSERT INTO public.games VALUES (389, 133, 457, 456);
INSERT INTO public.games VALUES (390, 132, 553, 550);
INSERT INTO public.games VALUES (391, 132, 363, 362);
INSERT INTO public.games VALUES (392, 132, 954, 953);
INSERT INTO public.games VALUES (393, 134, 384, 383);
INSERT INTO public.games VALUES (394, 134, 404, 403);
INSERT INTO public.games VALUES (395, 135, 83, 82);
INSERT INTO public.games VALUES (396, 135, 530, 529);
INSERT INTO public.games VALUES (397, 134, 676, 673);
INSERT INTO public.games VALUES (398, 134, 871, 870);
INSERT INTO public.games VALUES (399, 134, 268, 267);
INSERT INTO public.games VALUES (400, 136, 568, 567);
INSERT INTO public.games VALUES (401, 136, 456, 455);
INSERT INTO public.games VALUES (402, 137, 914, 913);
INSERT INTO public.games VALUES (403, 137, 430, 429);
INSERT INTO public.games VALUES (404, 136, 711, 708);
INSERT INTO public.games VALUES (405, 136, 27, 26);
INSERT INTO public.games VALUES (406, 136, 123, 122);
INSERT INTO public.games VALUES (407, 138, 526, 525);
INSERT INTO public.games VALUES (408, 138, 902, 901);
INSERT INTO public.games VALUES (409, 139, 915, 914);
INSERT INTO public.games VALUES (410, 139, 587, 586);
INSERT INTO public.games VALUES (411, 138, 81, 78);
INSERT INTO public.games VALUES (412, 138, 136, 135);
INSERT INTO public.games VALUES (413, 138, 727, 726);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1743238575910');
INSERT INTO public.users VALUES (2, 'user_1743238575909');
INSERT INTO public.users VALUES (3, 'user_1743238677011');
INSERT INTO public.users VALUES (4, 'user_1743238677010');
INSERT INTO public.users VALUES (5, 'user_1743238686662');
INSERT INTO public.users VALUES (6, 'user_1743238686661');
INSERT INTO public.users VALUES (7, 'user_1743238836457');
INSERT INTO public.users VALUES (8, 'user_1743238836456');
INSERT INTO public.users VALUES (9, 'user_1743238851358');
INSERT INTO public.users VALUES (10, 'user_1743238851357');
INSERT INTO public.users VALUES (11, 'user_1743238860825');
INSERT INTO public.users VALUES (12, 'user_1743238860824');
INSERT INTO public.users VALUES (13, 'user_1743238868860');
INSERT INTO public.users VALUES (14, 'user_1743238868859');
INSERT INTO public.users VALUES (15, 'user_1743238873175');
INSERT INTO public.users VALUES (16, 'user_1743238873174');
INSERT INTO public.users VALUES (17, 'haris123');
INSERT INTO public.users VALUES (18, 'user_1743238938017');
INSERT INTO public.users VALUES (19, 'user_1743238938016');
INSERT INTO public.users VALUES (20, 'user_1743238940243');
INSERT INTO public.users VALUES (21, 'user_1743238940242');
INSERT INTO public.users VALUES (22, 'user_1743238942670');
INSERT INTO public.users VALUES (23, 'user_1743238942669');
INSERT INTO public.users VALUES (24, 'user_1743238945481');
INSERT INTO public.users VALUES (25, 'user_1743238945480');
INSERT INTO public.users VALUES (26, 'jiohoihi');
INSERT INTO public.users VALUES (27, 'uhhk');
INSERT INTO public.users VALUES (28, 'user_1743239037818');
INSERT INTO public.users VALUES (29, 'user_1743239037817');
INSERT INTO public.users VALUES (30, 'user_1743239040848');
INSERT INTO public.users VALUES (31, 'user_1743239040847');
INSERT INTO public.users VALUES (32, 'user_1743239043898');
INSERT INTO public.users VALUES (33, 'user_1743239043897');
INSERT INTO public.users VALUES (34, 'user_1743239060753');
INSERT INTO public.users VALUES (35, 'user_1743239060752');
INSERT INTO public.users VALUES (36, 'user_1743239072072');
INSERT INTO public.users VALUES (37, 'user_1743239072071');
INSERT INTO public.users VALUES (38, 'user_1743239073957');
INSERT INTO public.users VALUES (39, 'user_1743239073956');
INSERT INTO public.users VALUES (40, 'user_1743239079423');
INSERT INTO public.users VALUES (41, 'user_1743239079422');
INSERT INTO public.users VALUES (42, 'user_1743239086447');
INSERT INTO public.users VALUES (43, 'user_1743239086446');
INSERT INTO public.users VALUES (44, 'user_1743239094971');
INSERT INTO public.users VALUES (45, 'user_1743239094970');
INSERT INTO public.users VALUES (46, 'user_1743239098129');
INSERT INTO public.users VALUES (47, 'user_1743239098128');
INSERT INTO public.users VALUES (48, 'user_1743239558289');
INSERT INTO public.users VALUES (49, 'user_1743239558288');
INSERT INTO public.users VALUES (50, 'user_1743239561811');
INSERT INTO public.users VALUES (51, 'user_1743239561810');
INSERT INTO public.users VALUES (52, 'user_1743239564444');
INSERT INTO public.users VALUES (53, 'user_1743239564443');
INSERT INTO public.users VALUES (54, 'user_1743239566673');
INSERT INTO public.users VALUES (55, 'user_1743239566672');
INSERT INTO public.users VALUES (56, 'user_1743239686496');
INSERT INTO public.users VALUES (57, 'user_1743239686495');
INSERT INTO public.users VALUES (58, 'user_1743239689175');
INSERT INTO public.users VALUES (59, 'user_1743239689174');
INSERT INTO public.users VALUES (60, 'user_1743239695213');
INSERT INTO public.users VALUES (61, 'user_1743239695212');
INSERT INTO public.users VALUES (62, 'user_1743239865488');
INSERT INTO public.users VALUES (63, 'user_1743239865487');
INSERT INTO public.users VALUES (64, 'user_1743239876246');
INSERT INTO public.users VALUES (65, 'user_1743239876245');
INSERT INTO public.users VALUES (66, 'user_1743239909080');
INSERT INTO public.users VALUES (67, 'user_1743239909079');
INSERT INTO public.users VALUES (68, 'user_1743239911277');
INSERT INTO public.users VALUES (69, 'user_1743239911276');
INSERT INTO public.users VALUES (70, 'user_1743239913286');
INSERT INTO public.users VALUES (71, 'user_1743239913284');
INSERT INTO public.users VALUES (72, 'user_1743239915245');
INSERT INTO public.users VALUES (73, 'user_1743239915244');
INSERT INTO public.users VALUES (74, 'user_1743239917441');
INSERT INTO public.users VALUES (75, 'user_1743239917440');
INSERT INTO public.users VALUES (76, 'user_1743239919645');
INSERT INTO public.users VALUES (77, 'user_1743239919644');
INSERT INTO public.users VALUES (78, 'user_1743239994327');
INSERT INTO public.users VALUES (79, 'user_1743239994326');
INSERT INTO public.users VALUES (80, 'user_1743239996728');
INSERT INTO public.users VALUES (81, 'user_1743239996727');
INSERT INTO public.users VALUES (82, 'user_1743239998805');
INSERT INTO public.users VALUES (83, 'user_1743239998804');
INSERT INTO public.users VALUES (84, 'user_1743240000880');
INSERT INTO public.users VALUES (85, 'user_1743240000879');
INSERT INTO public.users VALUES (86, 'user_1743240002804');
INSERT INTO public.users VALUES (87, 'user_1743240002803');
INSERT INTO public.users VALUES (88, 'user_1743240004810');
INSERT INTO public.users VALUES (89, 'user_1743240004809');
INSERT INTO public.users VALUES (90, 'user_1743240006861');
INSERT INTO public.users VALUES (91, 'user_1743240006860');
INSERT INTO public.users VALUES (92, 'user_1743240008819');
INSERT INTO public.users VALUES (93, 'user_1743240008818');
INSERT INTO public.users VALUES (94, 'user_1743240010792');
INSERT INTO public.users VALUES (95, 'user_1743240010791');
INSERT INTO public.users VALUES (96, 'user_1743240013102');
INSERT INTO public.users VALUES (97, 'user_1743240013101');
INSERT INTO public.users VALUES (98, 'user_1743240015256');
INSERT INTO public.users VALUES (99, 'user_1743240015255');
INSERT INTO public.users VALUES (100, 'user_1743240017141');
INSERT INTO public.users VALUES (101, 'user_1743240017140');
INSERT INTO public.users VALUES (102, 'user_1743240019693');
INSERT INTO public.users VALUES (103, 'user_1743240019692');
INSERT INTO public.users VALUES (104, 'user_1743240021903');
INSERT INTO public.users VALUES (105, 'user_1743240021902');
INSERT INTO public.users VALUES (106, 'Haris');
INSERT INTO public.users VALUES (108, 'pp');
INSERT INTO public.users VALUES (110, 'user_1743240501226');
INSERT INTO public.users VALUES (112, 'user_1743240501225');
INSERT INTO public.users VALUES (117, 'user_1743240503756');
INSERT INTO public.users VALUES (119, 'user_1743240503755');
INSERT INTO public.users VALUES (124, 'user_1743240540424');
INSERT INTO public.users VALUES (125, 'user_1743240540423');
INSERT INTO public.users VALUES (126, 'user_1743240595103');
INSERT INTO public.users VALUES (127, 'user_1743240595102');
INSERT INTO public.users VALUES (128, 'user_1743240597267');
INSERT INTO public.users VALUES (129, 'user_1743240597266');
INSERT INTO public.users VALUES (130, 'user_1743240599273');
INSERT INTO public.users VALUES (131, 'user_1743240599272');
INSERT INTO public.users VALUES (132, 'user_1743240661511');
INSERT INTO public.users VALUES (133, 'user_1743240661510');
INSERT INTO public.users VALUES (134, 'user_1743240669109');
INSERT INTO public.users VALUES (135, 'user_1743240669108');
INSERT INTO public.users VALUES (136, 'user_1743240671092');
INSERT INTO public.users VALUES (137, 'user_1743240671091');
INSERT INTO public.users VALUES (138, 'user_1743241819056');
INSERT INTO public.users VALUES (139, 'user_1743241819055');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 413, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 139, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

