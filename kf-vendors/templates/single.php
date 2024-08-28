<?php
/**
 * Template Name: Vendor Details
 *
 * @package KinkFest Vendors
 */

get_header();
?>

	<div class="vendor-details">
		<h1><?php echo esc_html($vendor->companyname); ?></h1>
		<p><?php echo esc_html($vendor->website); ?></p>
		<!-- Add more fields as needed -->
        <pre><?php echo json_encode( $vendor, JSON_PRETTY_PRINT ); ?></pre>
	</div>

<?php get_footer(); ?>
