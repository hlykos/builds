; IntPaCS Build Makefile

; ----------------------------------------
projects[] = drupal
core = 7.x
api = 2

; IntPaCS Profile
; ----------------------------------------

projects[intpacsprofile][download][type] = "git"
projects[intpacsprofile][download][url] = "git@bitbucket.org:hlykos/intpacsprofile.git"
projects[intpacsprofile][download][branch] = master
projects[intpacsprofile][type] = "profile"
