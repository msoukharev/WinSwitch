# WinSwitch.spoon

Spoon for assigning windows on your number keys to switch between them.

## Getting started

0. Get started with [Hammerspoon](https://www.hammerspoon.org). Follow the **Setup** section on [Getting Started with Hammerspoon](https://www.hammerspoon.org/go/) page.

1. Find your hammerspoon script directory. It will likely be `$HOME/.hammerspoon` after installation.

2. Download and save `WinSwitch.spoon` directory to: `{your-hammerspoon-path}/Spoons/WinSwitch.spoon`

3. In your `init.lua` file, you should import the spoon as follows:

```lua
hs.loadSpoon('WinSwitch')
```

Reload your hammerspoon config and you're ready to go 😎

## Dev workflow

For dev workflow, it is recommended that you symlink `WinSwitch.spoon` to `${HOME}/.hammerspoon/Spoons/WinSwitch.spoon` and import it in your `init.lua` file. Branch out, make changes to the the source code while reloading Hammerspoon. Push and open a PR.

## How to Use

### Assigning window

Focus a window, hold `ctrl opt cmd shift`, then press a number row key. The key is going to be assigned to the window.

### Switching to window

Hold `ctrl opt cmd shift`, then press a number row key. If a window is assigned to the key, it will be focused.
