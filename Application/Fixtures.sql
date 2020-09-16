

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, content, created_at) VALUES ('3bd4a348-0dbc-4c15-865a-ba86ee803751', 'ㄴr는 ㄱr끔 눈물을 흘린ㄷr...☆', ' ㄱㅏ끔은 눈물을 참을 수 없는 ㄴㅐ가 별루ㄷㅏ... 맘이 ㅇㅏㅍㅏ서.... 소ㄹㅣ치며... 울 수 있ㄷㅏ는건.... 좋은ㄱㅓ .', '2020-09-16 15:10:18.219067+09');
INSERT INTO public.posts (id, title, content, created_at) VALUES ('5821968a-caf2-4f82-b31f-55ba3f33b6f0', '🌪✨✨', '😅😅', '2020-09-16 15:25:45.390987+09');
INSERT INTO public.posts (id, title, content, created_at) VALUES ('9dd195e2-90b9-488f-bca0-1e39abf90bd2', 'awd', 'asd', '2020-09-16 21:45:26.730657+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('43d11b50-1133-4c7b-ae38-fa7714d94660', '코멘트1', '안녕', '5821968a-caf2-4f82-b31f-55ba3f33b6f0', '2020-09-16 22:08:51.036189+09');
INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('c6b4ec76-b193-4803-b963-dcd7865ff671', '안녕', '11', '5821968a-caf2-4f82-b31f-55ba3f33b6f0', '2020-09-16 22:08:51.036608+09');
INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('e1509753-4b96-45c0-ad45-e8ef38a64c89', 'asd', 'ass', '5821968a-caf2-4f82-b31f-55ba3f33b6f0', '2020-09-16 22:08:51.036768+09');
INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('d94c576f-c641-41cd-a622-b2e755527665', 'asd', 'asd', '9dd195e2-90b9-488f-bca0-1e39abf90bd2', '2020-09-16 22:08:51.036963+09');
INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('02e9192f-8dd9-471c-88b1-55ca9d00322b', 'asdasd', 'asd', '9dd195e2-90b9-488f-bca0-1e39abf90bd2', '2020-09-16 22:08:51.037179+09');
INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('bbdbff34-f0be-4bd7-a987-28b63402f395', 'asdasd', 'asdsd', '9dd195e2-90b9-488f-bca0-1e39abf90bd2', '2020-09-16 22:08:51.037393+09');
INSERT INTO public.comments (id, author, body, post_id, created_at) VALUES ('8717bc2a-42ff-442e-90a3-b1e5f9b02534', 'f', 'y
', '9dd195e2-90b9-488f-bca0-1e39abf90bd2', '2020-09-16 22:08:51.037586+09');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


