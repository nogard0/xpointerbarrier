# xpointerbarrier

This is a fork of xpointerbarrier from Peter Hofmann.
It adds the functionality to pass through barriers while holding specific key.

## Prerequisites

For Debian/Ubuntu:
```bash
$ sudo apt install libx11-dev libxfixes-dev libxrandr-dev libxi-dev
```

## Compilation and Installation
```bash
$ make
$ sudo make install
```

## Configuration

    Options:
      -v, --verbose        Enable verbose messages (default: Off)
      -k, --katria         Read Katria insets
      -t, --top PIXELS     Specify TOP inset (default: 0)
      -b, --bottom PIXELS  Specify BOTTOM inset (default: 0)
      -l, --left PIXELS    Specify LEFT inset (default: 0)
      -r, --right PIXELS   Specify RIGHT inset (default: 0)
      -c, --ctrl           Holding CTRL key disables barriers (default: Off)
      -a, --alt            Holding ALT key disables barriers (default: Off)
      -s, --shift          Holding SHIFT key disables barriers (default: Off)
      -w, --win            Holding WIN key disables barriers (default: Off)
      -n, --no-comb        The specified keys does not need to be in combination (default: Off)
      -h, --help           Print this help message

## Running
Example of running with no insets and with CTRL key for barriers pass-through:

    $ xpointerbarrier -c

# Original README Follows


                    _       _            _                     _
  __  ___ __   ___ (_)_ __ | |_ ___ _ __| |__   __ _ _ __ _ __(_) ___ _ __
  \ \/ / '_ \ / _ \| | '_ \| __/ _ \ '__| '_ \ / _` | '__| '__| |/ _ \ '__|
   >  <| |_) | (_) | | | | | ||  __/ |  | |_) | (_| | |  | |  | |  __/ |
  /_/\_\ .__/ \___/|_|_| |_|\__\___|_|  |_.__/ \__,_|_|  |_|  |_|\___|_|
       |_|
  https://uninformativ.de/git/xpointerbarrier
  https://uninformativ.de/bugs.html


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


This program creates four pointer barriers around each XRandR screen,
thus effectively jailing your mouse pointer to one physical screen.

Pointer barriers are mostly useful when there is more than one physical
screen connected to your computer. Properly placed barriers can then
make you feel like you're sitting in front of only one screen: When you
throw your mouse in the upper right corner, it does not suddenly switch
to another monitor.

See also:

http://who-t.blogspot.de/2012/12/whats-new-in-xi-23-pointer-barrier.html


Installation
------------

The following C libraries are required:

    - libx11
    - libxfixes
    - libxrandr

The XFIXES extension must be available on your X server.

xpointerbarrier expects to be run on a POSIX-ish operating system.

To build the program and install it to /usr/local:

    $ make
    # make install


Running
-------

Simply run the program in your ~/.xinitrc:

    $ xpointerbarrier 47 7 7 27

It's probably best to first configure your screens, then run the
program.
