create table wp_users
(
    ID                  bigint unsigned auto_increment
        primary key,
    user_login          varchar(60)  default ''                    not null,
    user_pass           varchar(255) default ''                    not null,
    user_nicename       varchar(50)  default ''                    not null,
    user_email          varchar(100) default ''                    not null,
    user_url            varchar(100) default ''                    not null,
    user_registered     datetime     default '0000-00-00 00:00:00' not null,
    user_activation_key varchar(255) default ''                    not null,
    user_status         int          default 0                     not null,
    display_name        varchar(250) default ''                    not null
)
    collate = utf8mb4_unicode_520_ci;

create index user_email
    on wp_users (user_email);

create index user_login_key
    on wp_users (user_login);

create index user_nicename
    on wp_users (user_nicename);

INSERT INTO wordpress.wp_users (ID, user_login, user_pass, user_nicename, user_email, user_url, user_registered, user_activation_key, user_status, display_name) VALUES (1, 'dev', '$P$BCCjA0Wh1t6/qpxyVfQmnZgd.YJ/sS.', 'dev', 'dev@kinkfest.org', 'http://localhost', '2024-07-30 06:59:13', '', 0, 'dev');
