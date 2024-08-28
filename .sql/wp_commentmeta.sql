create table wp_commentmeta
(
    meta_id    bigint unsigned auto_increment
        primary key,
    comment_id bigint unsigned default 0 not null,
    meta_key   varchar(255)              null,
    meta_value longtext                  null
)
    collate = utf8mb4_unicode_520_ci;

create index comment_id
    on wp_commentmeta (comment_id);

create index meta_key
    on wp_commentmeta (meta_key(191));

