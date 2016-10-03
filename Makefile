download:
	vendor/bin/wp core download
	vendor/bin/wp core config
install:
	vendor/bin/wp core install
	vendor/bin/wp plugin install contact-form-7 --activate
	vendor/bin/wp plugin install query-monitor --activate
	vendor/bin/wp plugin install wordpress-importer --activate
	vendor/bin/wp plugin install all-in-one-seo-pack --activate
	vendor/bin/wp plugin install categories-images --activate
	#vendor/bin/wp plugin install custom-permalinks --activate
	vendor/bin/wp plugin install db-cache-reloaded-fix
	vendor/bin/wp plugin install google-sitemap-generator --activate
	vendor/bin/wp plugin install multi-device-switcher --activate
	vendor/bin/wp plugin install wp-multibyte-patch --activate
	vendor/bin/wp rewrite structure '/%category%/%post_id%/'
	php composer.phar install
	vendor/bin/wp theme activate mytheme
	vendor/bin/wp post delete 1
server:
	php -S localhost:8000 -t wordpress
phar:
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
composer:
	curl -sS https://getcomposer.org/installer | php
#import:
#	vendor/bin/wp import wordpress.xml --authors=create
#cache:
#	vendor/bin/wp term recount {taxonomy}
