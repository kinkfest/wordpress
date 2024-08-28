<?php
/**
 * Template Name: Presenters List
 *
 * @package KinkFest Presenters
 */

get_header();
?>
<div class="presenters-list">
	<?php
	global $wpdb;

	// Set the number of items per page and calculate the offset
	$items_per_page = 10;
	$page           = isset( $_GET['paged'] ) ? absint( $_GET['paged'] ) : 1;
	$offset         = ( $page - 1 ) * $items_per_page;

	// Query the database with pagination
	$presenters = $wpdb->get_results( $wpdb->prepare(
		"SELECT * FROM kfpresenters ORDER BY presentername ASC LIMIT %d, %d",
		$offset, $items_per_page
	),                                OBJECT );

	if ( $presenters ) {
		foreach ( $presenters as $presenter ) {
			echo '<div class="presenter">';

			// Inside your loop where you output each presenter:
			$presenter_link = site_url('/presenter/' . urlencode($presenter->presentername) . '/');

			echo '<a href="' . esc_url( $presenter_link ) . '">';
			echo '<h2>' . esc_html( $presenter->presentername ) . '</h2>';
			echo '</a>';

			echo '<p>' . esc_html( $presenter->biography ) . '</p>';
			echo '</div>';
		}
	} else {
		echo '<p>No presenters found.</p>';
	}
	?>
</div>

<?php
// Calculate total pages
$total_items = $wpdb->get_var( "SELECT COUNT(*) FROM kfpresenters" );
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
