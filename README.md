APTL
===

[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://gitlab.com/pegromDev/aptl/LICENSE)

Arch Linux packages tracking list generator.

This [pacman](https://wiki.archlinux.org/title/Pacman) hook generates a few lists of your system Installed pakages
but also keep track of the ones you remove plus keeps an eye in your system orphans pakages to; aptl provides an automatic way to keep these files safe for easy pakages restoring proposes.
Inspired by [pug](https://aur.archlinux.org/packages/pug/) this hook lets you decide where to keep your lists and to back them up as you please. 
It will generates a few lists, some provide detailed names of packages and also packages descritopns for better reading of whats on your system,including urls for farther informaion about your installed software, others are strictly for restoring propuses,
also it stores a list of every pakage you ever remove in case you one day need to remember that software you once tried and forgot about it.
One more neat addition is the notification of orphans pakages if they are available to be remove with options to clean them or add them to a white list if u ever need to.

Examples:

*	[hostname.pacman-list.txt](https://github.com/pegromdev/aptl/blob/master/examples/xps.pacman-list.txt)
	- For reviewing official Arch pakages on your system since pakages Descitptions are available.

*	[hostname.pacman-list.pkg](https://github.com/pegromdev/aptl/blob/master/examples/xps.pacman-list.pkg)
	- To easy restore official Arch pakages with `pacman -S - < hostname.pacman-list.pkg`.

*	[hostname.aur-list.txt](https://github.com/pegromdev/aptl/blob/master/examples/xps.aur-list.txt)
	- For reviewing AUR pakages on your system since pakages Descitptions are available.

*	[hostname.aur-list.pkg](https://github.com/pegromdev/aptl/blob/master/examples/xps.aur-list.pkg)
	- To easy restore AUR pakages with `paru -S - < hostname.aur-list.pkg`.

*	[hostname.uneeded.pkg](https://github.com/pegromdev/aptl/blob/master/examples/xps.uneeded-list.pkg)		
	- Orphans are store here until delition or whitelisting.

*	hostname.whitelist.txt		( *not yet implemented!* )
	- If for some reason you need an orphan to stay in your system here it will be.	

*	hostname.removed.txt	( *not yet implemented!* )
	- For way to time travel in case you ever need to remember an erased one 		


Suggestion, improvements and more are Welcome!.


![aptl](https://github.com/pegromdev/aptl/blob/master/examples/aptl.png "aptl-hook")



## Requirements

* *pacman* - A library-based package manager with dependency support

# Installation

### Package (AUR)
```bash
$ paru -S aptl
```
### Manually

```bash
$ git clone https://github.com/pegromdev/aptl.git
$ cd aptl
$ sudo make install

# Or Uninstall
$ sudo make uninstall
```


Special Thanks to:

[Wayne Wesley](https://github.com/The-Repo-Club/) 
[papajoker](https://github.com/papajoker/)
