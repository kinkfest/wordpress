create table wp_terms
(
    term_id    bigint unsigned auto_increment
        primary key,
    name       varchar(200) default '' not null,
    slug       varchar(200) default '' not null,
    term_group bigint(10)   default 0  not null
)
    collate = utf8mb4_unicode_520_ci;

create index name
    on wp_terms (name(191));

create index slug
    on wp_terms (slug(191));

INSERT INTO wordpress.wp_terms (term_id, name, slug, term_group) VALUES (1, 'Uncategorized', 'uncategorized', 0);
