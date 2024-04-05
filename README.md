# Eye Cancer

## Motivation
  * uses kanagawa dragon color scheme as a starting point
  * I had Jonathan Blow's Emacs theme in mind when I made this, but I wasn't looking at it when I made the pallet, so...
  * I couldn't find a good dark theme that wasn't monochrome or weird
  * I was using kanagawa, but it wasn't perfect and I was heavily modifying it in my config
  * I used a lot of the modifications to kanagawa-dragon as a starting point for this
  * I made this in a few hours and you may find it ugly. I don't care. It's for me.

## If you want eye cancer
  * using lazy
```lua
  {
    'MikeWelsh801/eye-cancer',
    priority = 1000,
    dependencies = { 'rebelot/kanagawa.nvim', name = 'kanagawa' },
    config = function ()
      require('eye-cancer').setup()
    end
  },
```
  * other package managers
  ```lua
    -- I have no idea probably use... or something
    -- Why are you still using packer?
  ```

## Screen shot of some super cool *Rust* code

![Cool Rust](/screenshots/cool_rust.png?raw=true "Cool Rust") 
