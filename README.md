APTL
===

[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://gitlab.com/pegromDev/aptl/LICENSE)

Arch Linux packages tracking list generator.

*This [!pacman](https://wiki.archlinux.org/title/Pacman) hooj generates lists of systems Installed pakages files
but also keep track of the ones you remove plus orphans to; provides an automatic way to keep these safe for restoring proposes.
Inspired by [!pug](https://aur.archlinux.org/packages/pug/) aptl lets you decide where to keep your lists and to back them up as you please. 
It generates five lists, some provide detailed names of packages and also packages descritopns and others are strictly for restoring propuses,
also it stores a list of every pakage you ever remove in case you one day need to remember that software you once tried and forgot about it,
one more neat addition is the notification of orphans pakages if they are available to be remove with options to clean them or add them to a white list if u ever need to.




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
