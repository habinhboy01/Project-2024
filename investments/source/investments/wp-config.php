<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'investments' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '7mD5Y,LH6X5W2!GHA|zt3g$({G}t2Xhj#XlCvkW%I~5+^0)CM 2`iR&v<&My`KLH' );
define( 'SECURE_AUTH_KEY',  '{/LxVe%HyFg_de<X3#~iPQFm]90]7@^r3<kr~BmC&sK:EUp}x1G)Q%}f>Yzn~@`M' );
define( 'LOGGED_IN_KEY',    '+{:E{1R[v 3EW=>O.^BB-l.--d2,Y}mhO)(;1MY<+ p1m=K5B Y#@g05d{+x*pGw' );
define( 'NONCE_KEY',        'GX1J1;}+it;Ho7:bV${cnK^yFfxLn)H%,7Jt+mq;[0YHr*trwa#%.8+]IRVkx:mw' );
define( 'AUTH_SALT',        'Ja+3mKxYKrj4I)*~7QG4 ~a|Ph^lB6Sb [b./J5E|p[6;Lt_iWP`k5sX.u5/7HhR' );
define( 'SECURE_AUTH_SALT', '%oA*cynW=YeF4`q_%oaAbi9A[4X6(UnIPqWeB 9v,[=)%%+QcK}qCWut,g|.O<G0' );
define( 'LOGGED_IN_SALT',   '] T[2f5Cl1eREF|&=_>RWO`p#>-{B._p(b,@%5E[-jLPSS:D3G,O ei&cFJ(e6u?' );
define( 'NONCE_SALT',       '.Fel*_Z.VpLN9*o>G30{$[(`^:hXO~N#ZGb*Z|Gm1o#MNC_3KrX!*oNZ1<B>>[?C' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';