create table wp_usermeta
(
    umeta_id   bigint unsigned auto_increment
        primary key,
    user_id    bigint unsigned default 0 not null,
    meta_key   varchar(255)              null,
    meta_value longtext                  null
)
    collate = utf8mb4_unicode_520_ci;

create index meta_key
    on wp_usermeta (meta_key(191));

create index user_id
    on wp_usermeta (user_id);

INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (1, 1, 'nickname', 'dev');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (2, 1, 'first_name', '');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (3, 1, 'last_name', '');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (4, 1, 'description', '');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (6, 1, 'syntax_highlighting', 'true');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (7, 1, 'comment_shortcuts', 'false');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (8, 1, 'admin_color', 'fresh');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (9, 1, 'use_ssl', '0');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (11, 1, 'locale', '');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (13, 1, 'wp_user_level', '10');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (14, 1, 'dismissed_wp_pointers', '');
INSERT INTO wordpress.wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (15, 1, 'show_welcome_panel', '1');
