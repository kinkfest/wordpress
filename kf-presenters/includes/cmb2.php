<?php

/*
* CMB2 stuff
*/

function display_presenter_bio_box( $post ) {
$bio = get_post_meta( $post->ID, 'presenter_biography', true );
echo '<textarea id="bio" name="bio">' . esc_textarea( $bio ) . '</textarea>';
}

// adds a metabox to our 'bio' post type
function add_presenter_bio_box() {
add_meta_box( 'presenter_bio_box_id', 'Presenter Bio', 'display_presenter_bio_box', 'bio', 'normal', 'high' );
}
add_action( 'add_meta_boxes', 'add_presenter_bio_box' );
