# mikegb's dotfiles

## dotfiles

Here is my fork of @holman's dotfiles. Haven't added too much, just personalized a bit. My thanks to him and everyone that has contributed.

## install

Run this:

```sh
git clone https://github.com/mikegb/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule update --init --recursive
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.
