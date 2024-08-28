create table wp_comments
(
    comment_ID           bigint unsigned auto_increment
        primary key,
    comment_post_ID      bigint unsigned default 0                     not null,
    comment_author       tinytext                                      not null,
    comment_author_email varchar(100)    default ''                    not null,
    comment_author_url   varchar(200)    default ''                    not null,
    comment_author_IP    varchar(100)    default ''                    not null,
    comment_date         datetime        default '0000-00-00 00:00:00' not null,
    comment_date_gmt     datetime        default '0000-00-00 00:00:00' not null,
    comment_content      text                                          not null,
    comment_karma        int             default 0                     not null,
    comment_approved     varchar(20)     default '1'                   not null,
    comment_agent        varchar(255)    default ''                    not null,
    comment_type         varchar(20)     default 'comment'             not null,
    comment_parent       bigint unsigned default 0                     not null,
    user_id              bigint unsigned default 0                     not null
)
    collate = utf8mb4_unicode_520_ci;

create index comment_approved_date_gmt
    on wp_comments (comment_approved, comment_date_gmt);

create index comment_author_email
    on wp_comments (comment_author_email(10));

create index comment_date_gmt
    on wp_comments (comment_date_gmt);

create index comment_parent
    on wp_comments (comment_parent);

create index comment_post_ID
    on wp_comments (comment_post_ID);

INSERT INTO wordpress.wp_comments (comment_ID, comment_post_ID, comment_author, comment_author_email, comment_author_url, comment_author_IP, comment_date, comment_date_gmt, comment_content, comment_karma, comment_approved, comment_agent, comment_type, comment_parent, user_id) VALUES (1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-07-28 22:01:52', '2024-07-28 22:01:52', 'Hi, this is a comment.
To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.
Commenter avatars come from <a href="https://en.gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);
