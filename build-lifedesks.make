; Drush build file for Expert, Admin and Help LifeDesks
; Build distribution with local references

api = 2
core = 6.x

; Add Drupal core and apply custom patches
includes[] = https://raw.github.com/LifeDesks/expert/master/drupal-org-core.make

; Add contributed and custom modules, themes and libraries destined for sites/all/
includes[] = https://raw.github.com/LifeDesks/expert/master/shared.make

; Add expert profile
projects[expert][type] = profile
projects[expert][download][type] = git
projects[expert][download][url] = git://github.com/LifeDesks/expert.git
;projects[expert][download][branch] = master

