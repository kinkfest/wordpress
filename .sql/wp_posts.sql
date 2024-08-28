create table wp_posts
(
    ID                    bigint unsigned auto_increment
        primary key,
    post_author           bigint unsigned default 0                     not null,
    post_date             datetime        default '0000-00-00 00:00:00' not null,
    post_date_gmt         datetime        default '0000-00-00 00:00:00' not null,
    post_content          longtext                                      not null,
    post_title            text                                          not null,
    post_excerpt          text                                          not null,
    post_status           varchar(20)     default 'publish'             not null,
    comment_status        varchar(20)     default 'open'                not null,
    ping_status           varchar(20)     default 'open'                not null,
    post_password         varchar(255)    default ''                    not null,
    post_name             varchar(200)    default ''                    not null,
    to_ping               text                                          not null,
    pinged                text                                          not null,
    post_modified         datetime        default '0000-00-00 00:00:00' not null,
    post_modified_gmt     datetime        default '0000-00-00 00:00:00' not null,
    post_content_filtered longtext                                      not null,
    post_parent           bigint unsigned default 0                     not null,
    guid                  varchar(255)    default ''                    not null,
    menu_order            int             default 0                     not null,
    post_type             varchar(20)     default 'post'                not null,
    post_mime_type        varchar(100)    default ''                    not null,
    comment_count         bigint          default 0                     not null
)
    collate = utf8mb4_unicode_520_ci;

create index post_author
    on wp_posts (post_author);

create index post_name
    on wp_posts (post_name(191));

create index post_parent
    on wp_posts (post_parent);

create index type_status_date
    on wp_posts (post_type, post_status, post_date, ID);

INSERT INTO wordpress.wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (1, 1, '2024-07-30 06:59:13', '2024-07-30 06:59:13', '<!-- wp:paragraph -->
<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>
<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-07-30 06:59:13', '2024-07-30 06:59:13', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1);
INSERT INTO wordpress.wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (2, 1, '2024-07-30 06:59:13', '2024-07-30 06:59:13', '<!-- wp:paragraph -->
<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>...or something like this:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>As a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>
<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-07-30 06:59:13', '2024-07-30 06:59:13', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0);
INSERT INTO wordpress.wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (3, 1, '2024-07-30 06:59:13', '2024-07-30 06:59:13', '<!-- wp:heading -->
<h2 class="wp-block-heading">Who we are</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">Comments</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph -->
<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">Media</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">Cookies</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph -->
<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph -->
<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph -->
<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">Embedded content from other websites</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph -->
<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">Who we share your data with</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">How long we retain your data</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph -->
<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">What rights you have over your data</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>
<!-- /wp:paragraph -->
<!-- wp:heading -->
<h2 class="wp-block-heading">Where your data is sent</h2>
<!-- /wp:heading -->
<!-- wp:paragraph -->
<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>
<!-- /wp:paragraph -->
', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-07-30 06:59:13', '2024-07-30 06:59:13', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0);
INSERT INTO wordpress.wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (4, 0, '2024-07-30 06:59:13', '2024-07-30 06:59:13', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-07-30 06:59:13', '2024-07-30 06:59:13', '', 0, 'http://localhost/2024/07/30/navigation/', 0, 'wp_navigation', '', 0);
