create table wp_postmeta
(
    meta_id    bigint unsigned auto_increment
        primary key,
    post_id    bigint unsigned default 0 not null,
    meta_key   varchar(255)              null,
    meta_value longtext                  null
)
    collate = utf8mb4_unicode_520_ci;

create index meta_key
    on wp_postmeta (meta_key(191));

create index post_id
    on wp_postmeta (post_id);

INSERT INTO wordpress.wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO wordpress.wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (2, 3, '_wp_page_template', 'default');
