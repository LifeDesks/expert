; Add contributed and custom modules, themes and libraries

api = 2
core = 6.x

; Contributed modules
projects[administerusersbyrole][version] = 1.4
projects[apachesolr][version] = 1.2
;projects[apachesolr_image][version] = 1.2
;projects[apachesolr_search][version] = 1.2
projects[auto_nodetitle][version] = 1.2
projects[biblio][version] = 1.14
projects[biblio][patch][] = https://raw.github.com/LifeDesks/patches/master/biblio-module-change-output-of-style-apa.patch
;projects[biblio_pm][version] = 1.14
projects[captcha][version] = 2.2
projects[cck][version] = 2.8
projects[cmf][type] = module
projects[cmf][download][type] = git
projects[cmf][download][url] = http://git.drupal.org/project/cmf.git
projects[cmf][download][revision] = 13b19c52fb1ee092c6f5e7c09e084a58313ba71c
projects[cmf][version] = 1.1
projects[cmf][patch][] = https://raw.github.com/LifeDesks/patches/master/cmf-module-many-adjustments-for-lifedesks.patch
projects[config_perms][version] = 1.0
projects[creativecommons_lite][version] = 1.2
projects[ctm][version] = 1.0
projects[i18n][version] = 1.7
; Using revision instead of version tag for image otherwise patch won't apply
projects[image][type] = module
projects[image][download][type] = git
projects[image][download][url] = http://git.drupal.org/project/image.git
projects[image][download][revision] = c8dc16b935dac09c639c89e06983ee949e3f6b24
projects[image][version] = 1.0
projects[image][patch][] = https://raw.github.com/LifeDesks/patches/master/image-module-adjustment-to-update-6100.patch
projects[image][patch][] = https://raw.github.com/LifeDesks/patches/master/image-module-overriding-default-views.patch
;projects[image_gallery][version] = 1.0
;projects[invite_cancel_account][version] = 2.0-beta2
projects[invite][version] = 2.0-beta2
;projects[invite_stats][version] = 2.0-beta2

; We want directory name front_page for front module, directory_name does not
; appear to work so instead we use front_page as project name and specify the
; git repository as the front module.
projects[front_page][type] = module
projects[front_page][version] = 1.2
projects[front_page][download][type] = git
projects[front_page][download][url] = http://git.drupal.org/project/front.git
projects[front_page][download][revision] = c2e66b67fbc2bd8bd417ffe0aa629346ac2e5249
projects[front_page][patch][] = https://raw.github.com/LifeDesks/patches/master/front-page-module-alter-permissions.patch
projects[front_page][patch][] = https://raw.github.com/LifeDesks/patches/master/front-page-module-uninstall-hook-to-delete-variables.patch

projects[jquery_ui][version] = 1.3
; Using revision instead of version tag for jquery_update otherwise patch won't apply
projects[jquery_update][type] = module
projects[jquery_update][download][type] = git
projects[jquery_update][download][url] = http://git.drupal.org/project/jquery_update.git
projects[jquery_update][download][revision] = 34b5e2e1978d7000a10e1dae3af021c62fe5f2d5
projects[jquery_update][version] = 1.1
projects[jquery_update][patch][] = https://raw.github.com/LifeDesks/patches/master/jquery_update-module-additional-jquery-core-file-overrides.patch
projects[menu_admin_per_menu][version] = 1.4
projects[oai2][version] = 1.2
projects[oai2][patch][] = https://raw.github.com/LifeDesks/patches/master/oai2-module-add-classification-terms.patch
projects[opensearch][version] = 1.4-beta1
;projects[opensearch_token][version] = 1.4-beta1
projects[override_node_options][version] = 1.11
projects[path_redirect][version] = 1.0-rc1
projects[permissions_api][version] = 2.11
projects[piclens][version] = 1.4
projects[piclens][patch][] = https://raw.github.com/LifeDesks/patches/master/piclens-module-adjustment-to-mediarssapi-format-item.patch
projects[protect_critical_users][version] = 1.1
projects[recaptcha][version] = 1.4
projects[role_delegation][version] = 1.3
projects[smtp][version] = 1.0-beta5
projects[term_display][version] = 1.1
projects[token][version] = 1.15
projects[transaction][version] = 0.1
projects[transliteration][version] = 3.0
projects[update_notifications_disable][version] = 1.0
projects[views][version] = 2.11
projects[wysiwyg][version] = 2.1
projects[wysiwyg][patch][] = https://raw.github.com/LifeDesks/patches/master/wysiwyg-module-remove-clear-caches-from-update.patch

; Libraries
; solrphpclient requires apachesolr module to be downloaded first
libraries[solrphpclient][download][type] = get
libraries[solrphpclient][download][url] = https://solr-php-client.googlecode.com/files/SolrPhpClient.r22.2009-11-09.zip
libraries[solrphpclient][download][sha1] = 31cc6c4df3ea196a3e9c30e26bc386cf6051dc2e
libraries[solrphpclient][overwrite] = TRUE
libraries[solrphpclient][destination] = modules/apachesolr
libraries[solrphpclient][directory_name] = SolrPhpClient

; phpmailer requires smtp module to be downloaded first
libraries[phpmailer][download][type] = get
libraries[phpmailer][download][url] = https://github.com/PHPMailer/PHPMailer/archive/phpmailer-5.1.tar.gz
libraries[phpmailer][overwrite] = TRUE
libraries[phpmailer][destination] = modules/smtp
libraries[phpmailer][directory_name] = phpmailer

; jquery.ui requires jquery_ui module to be downloaded first
libraries[jquery.ui][download][type] = get
libraries[jquery.ui][download][url] = http://jquery-ui.googlecode.com/files/jquery-ui-1.7.2.zip
libraries[jquery.ui][overwrite] = TRUE
libraries[jquery.ui][destination] = modules/jquery_ui
libraries[jquery.ui][directory_name] = jquery.ui

; Cheating here using libraries to download multiple custom modules at once.
libraries[custom][download][type] = git
libraries[custom][download][url] = git://github.com/LifeDesks/modules.git
libraries[custom][download][branch] = master
libraries[custom][overwrite] = TRUE
libraries[custom][destination] = .
libraries[custom][directory_name] = modules

