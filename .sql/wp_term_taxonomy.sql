create table wp_term_taxonomy
(
    term_taxonomy_id bigint unsigned auto_increment
        primary key,
    term_id          bigint unsigned default 0  not null,
    taxonomy         varchar(32)     default '' not null,
    description      longtext                   not null,
    parent           bigint unsigned default 0  not null,
    count            bigint          default 0  not null,
    constraint term_id_taxonomy
        unique (term_id, taxonomy)
)
    collate = utf8mb4_unicode_520_ci;

create index taxonomy
    on wp_term_taxonomy (taxonomy);

INSERT INTO wordpress.wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (1, 1, 'category', '', 0, 1);
