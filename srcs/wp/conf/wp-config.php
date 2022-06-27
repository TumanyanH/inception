<?php

    define( 'DB_NAME', 'wp_base' );
    define( 'DB_USER', 'root' );
    define( 'DB_PASSWORD', 'wp_secret_12345' );
    define( 'DB_HOST', 'mariadb:3306' );
    define( 'DB_CHARSET', 'utf8' );


    $table_prefix = 'wp_';

    define( 'WP_DEBUG', false );

    if ( ! defined( 'ABSPATH' ) ) {
    	define( 'ABSPATH', '/var/www/html/wordpress' );
    }

    require_once ABSPATH . 'wp-settings.php';
?>