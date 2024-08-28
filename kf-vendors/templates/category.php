<?php
/**
 * Template Name: Vendors List
 *
 * @package KinkFest Vendors
 */

get_header();
?>
<div class="vendors-list">
	<?php
	global $wpdb;

	// Set the number of items per page and calculate the offset
	$items_per_page = 10;
	$page           = isset( $_GET['paged'] ) ? absint( $_GET['paged'] ) : 1;
	$offset         = ( $page - 1 ) * $items_per_page;

	// Query the database with pagination
	$vendors = $wpdb->get_results( $wpdb->prepare(
		"SELECT * FROM kfformvendor ORDER BY companyname ASC LIMIT %d, %d",
		$offset, $items_per_page
	),                             OBJECT );

	if ( $vendors ) {
		foreach ( $vendors as $vendor ) {
			echo '<div class="vendor">';

			// Inside your loop where you output each vendor:
			$vendor_link = site_url( '/vendor/' . urlencode( $vendor->companyname ) . '/' );

			echo '<a href="' . esc_url( $vendor_link ) . '">';
			echo '<h2>' . esc_html( $vendor->companyname ) . '</h2>';
			echo '</a>';

			echo '<p><a href="' . $vendor->website . '" target="_blank">' . esc_html( $vendor->website ) . '</a></p>';
			echo '</div>';
		}
	} else {
		echo '<p>No vendors found.</p>';
	}
	?>
</div>

<?php
// Calculate total pages
$total_items = $wpdb->get_var( "SELECT COUNT(*) FROM kfformvendor" );
$total_pages = ceil( $total_items / $items_per_page );

// Display pagination links
if ( $total_pages > 1 ) {
	echo '<div class="pagination">';
	echo paginate_links( array(
		                     'base'    => str_replace( 999999999, '%#%', esc_url( get_pagenum_link( 999999999 ) ) ),
		                     'format'  => '?paged=%#%',
		                     'current' => max( 1, $page ),
		                     'total'   => $total_pages,
	                     ) );
	echo '</div>';
}
?>

<?php get_footer(); ?>
