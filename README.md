APTL
===

[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://gitlab.com/pegromDev/aptl/LICENSE)

#	ARCH PAKAGE TRACKING LIST

*aplt is a pacman hook bash script aiming at generating Arch Linux systems Installed pakages lists.
Inspired by [!pug](https://aur.archlinux.org/packages/pug/) this  project is diferent in the sense that provides pkgs description files, it also check for uneeded pkgs and
it dosent requiere gist or any repositorie uploading, the goal is to let you decide how you want to back them up.
 It will generate 5  files:
	* pacman explicit installed pkgs list and AUR explicit installed pkgs list.
	* pamcan and aur list if installed pkgs with pkgs descriptions.
	* undeeded pkgs list when leftovers are found.

Tracking remove pakages list history with dates and more  are going to be also part of aptl in the near future...

Make sure you link these files and back them up.. They Location is /etc/aptl
Man Page will be included in the future and posible export function to automatic link them to home/.config/aptl.. and others function as they come to mind...

Suggestion, improvements and more are Welcome!.



## Requirements

* *pacman* - A library-based package manager with dependency support

# Installation

### Package (AUR)

```bash
$ paru -S aptl
```

### Manually

```bash
$ git clone https://gitlab.com/pegromDev/aptl.git
$ cd aptl
$ sudo make install
# Or Uninstall
$ sudo make uninstall
```
