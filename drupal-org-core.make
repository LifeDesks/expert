; Drupal core project requirements.
; Includes patches against Drupal core.

api = 2
core = 6.x

projects[drupal][type] = core
projects[drupal][version] = 6.20

; Fix for hex characters in 4xx pages when using nginx
projects[drupal][patch][355170] = https://raw.github.com/LifeDesks/patches/master/355170-hex-characters-in-4xx-pages-with-nginx.patch

; Add link fill preview to color module
projects[drupal][patch][] = https://raw.github.com/LifeDesks/patches/master/color-module-link-fill-preview.patch

; Add email address to message body for contact module
projects[drupal][patch][] = https://raw.github.com/LifeDesks/patches/master/contact-module-add-address-to-email-body.patch

; Add crossdomain policy for cooliris
projects[drupal][patch][] = https://raw.github.com/LifeDesks/patches/master/crossdomain.patch

; Add crud helper file for install profiles
; @note crud.inc is a copy from an early version of install_profile_api module
; @see  https://drupal.org/project/install_profile_api
projects[drupal][patch][] = https://raw.github.com/LifeDesks/patches/master/install_profile_api-crud-inc.patch

; Accomodate directionality of term relation in taxonomy module
projects[drupal][patch][] = https://raw.github.com/LifeDesks/patches/master/taxonomy-module-accomodate-directionality-of-term-relations.patch
