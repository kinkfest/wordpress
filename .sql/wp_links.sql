create table wp_links
(
    link_id          bigint unsigned auto_increment
        primary key,
    link_url         varchar(255)    default ''                    not null,
    link_name        varchar(255)    default ''                    not null,
    link_image       varchar(255)    default ''                    not null,
    link_target      varchar(25)     default ''                    not null,
    link_description varchar(255)    default ''                    not null,
    link_visible     varchar(20)     default 'Y'                   not null,
    link_owner       bigint unsigned default 1                     not null,
    link_rating      int             default 0                     not null,
    link_updated     datetime        default '0000-00-00 00:00:00' not null,
    link_rel         varchar(255)    default ''                    not null,
    link_notes       mediumtext                                    not null,
    link_rss         varchar(255)    default ''                    not null
)
    collate = utf8mb4_unicode_520_ci;

create index link_visible
    on wp_links (link_visible);

