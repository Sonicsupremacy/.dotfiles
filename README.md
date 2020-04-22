My dotfiles are managed by gnu stow (a symling farm manager) so they can reside
in a single folder and then be symlinked to a proper location

# How to install #
* clone this repo into your home directory
* cd into ~/.dotfiles
* run stow _config-to-install_ (eg. stow openbox)

__Before installing a config backup and delete any relevant config files as
stow can not create a symlink if a file exists!__

A huge thank you goes to [xero](http://xero.nu) for his sourcerer color scheme!
