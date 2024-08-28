create table wp_term_relationships
(
    object_id        bigint unsigned default 0 not null,
    term_taxonomy_id bigint unsigned default 0 not null,
    term_order       int             default 0 not null,
    primary key (object_id, term_taxonomy_id)
)
    collate = utf8mb4_unicode_520_ci;

create index term_taxonomy_id
    on wp_term_relationships (term_taxonomy_id);

INSERT INTO wordpress.wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (1, 1, 0);
