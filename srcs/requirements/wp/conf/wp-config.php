<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_base' );

/** Database username */
define( 'DB_USER', 'wp_editor' );

/** Database password */
define( 'DB_PASSWORD', 'wp_secret_12345' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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

define('AUTH_KEY',         '-f^|}XiB.NU-NBhSy*yE|5t5*I4YB.Ph5piP!w_b;}hZc{;fP9^Wr>?VCUO{S^3,');
define('SECURE_AUTH_KEY',  '}5,=z5<a v>qs<-j+zh>x:n-R!vb!Xc<=12Ru/ ]G/V-YHH$g((},RsPzV^*:}^{');
define('LOGGED_IN_KEY',    'd]+lrGl#N4i5`y*!kbhZ`,L6R%NGvm]Ij-mc&O}q:fd!|fu[%)S`grRA:5m3Ay9O');
define('NONCE_KEY',        'Z.dDJ?kk&MvV=*/8(^xqEBY9-?r.x3dN~;@~JN-!W9UaZ.(oL$#X&Rh]PK`_meAS');
define('AUTH_SALT',        '`59Y+Arux2K-=@sPx`GXZ`7[FvT-Y|:h82`rAL=n_jR);k-TH/0R$^ks;,-c-+;s');
define('SECURE_AUTH_SALT', 'hkPM%5G3xUA;ZjC+&u!W7TEv`33).*49Oux0;:3o13WVYbYce {}xGiJZg>h&IiP');
define('LOGGED_IN_SALT',   'Rqw]3fOVGO7>q|^EO0}UykU-9Ny-=.`) :)dq{>Ya#c0a:@+i+Ddw-2dv4)*!9k3');
define('NONCE_SALT',       'Qe6EfB^N~M^uK_s&[V0yK7OjUIEM,Zq21oeBfv4*G.XSu;0sk+s+:-B}1(d#SaC>');

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';