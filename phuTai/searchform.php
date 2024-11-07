<?php
/**
 * Custom Search Form.
 */

?>

<form role="search" method="get" class="form-inline search-form my-2 my-lg-0"
    action="<?php echo esc_url( home_url( '/' ) ); ?>">
    <input class="form-control mr-sm-2" type="search" placeholder="" value="<?php the_search_query(); ?>"
        aria-label="Search" name="s">
    <button class="search-btn" type="submit">
        <i class="fa-solid fa-magnifying-glass" style="color: grey"></i>
    </button>
</form>