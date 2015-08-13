; Monobase Build Makefile

; ----------------------------------------
projects[] = drupal
core = 7.x
api = 2

; Monobase Profile
; ----------------------------------------

projects[monobase][download][type] = "git"
projects[monobase][download][url] = "git@bitbucket.org:hlykos/monobase.git"
projects[monobase][type] = "profile"
