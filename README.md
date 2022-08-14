# configs

## OS X

Hide icons from desktop:

```
defaults write com.apple.finder CreateDesktop false
killall Finder
```

Remove dock autohide animation

```
defaults write com.apple.dock autohide-time-modifier -int 0;
killall Dock
```

Reduce dock autohide animation

```
defaults write com.apple.dock autohide-time-modifier -float 0.25;
killall Dock
```
