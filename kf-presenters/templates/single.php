<?php
/**
 * Template Name: Presenter Details
 *
 * @package KinkFest Presenters
 */

get_header();
?>

	<div class="presenter-details">
		<h1><?php echo esc_html($presenter->presentername); ?></h1>
		<img src="<?php echo esc_url($presenter->photo1); ?>" alt="<?php echo esc_attr($presenter->presentername); ?>">
		<p><?php echo esc_html($presenter->biography); ?></p>
		<!-- Add more presenter fields as needed -->
        <pre><?php echo json_encode( $presenter, JSON_PRETTY_PRINT ); ?></pre>
	</div>

<?php get_footer(); ?>
