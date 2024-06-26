# Eye Cancer

A neovim colorscheme loosely inspired by kanagawa-dragon and Jonathan Blow's Emacs theme.
There are still probably some weird highlighting issues and it has a transparent background, so
it may look different depending on your terminal. But hey, you can put sweet 90's
alt band album covers in the background.

## Screen shot of some super cool *Rust* code

![Cool Rust](/screenshots/cool_rust.png?raw=true "Cool Rust") 

## Motivation
  * I used kanagawa dragon color scheme as a starting point. It's a dependency.
  * I had Jonathan Blow's Emacs theme in mind when I made this, but I wasn't 
  looking at it when I made the pallet, so... Also it's way less green.
  * I couldn't find a good dark theme that wasn't monochrome or weird, so I made this weird thing.
  * I was using kanagawa, but it wasn't perfect and I was heavily modifying it in my config
  * I made this in a few hours and you may find it ugly. I don't care. It's for me.

## If you want eye cancer
  * using lazy
```lua
  { 'MikeWelsh801/eye-cancer', dependencies = { 'rebelot/kanagawa.nvim' } }
```
  * if you want eye-cancer to be your default colorscheme
```lua
  {
    'MikeWelsh801/eye-cancer',
    priority = 1000,
    dependencies = { 'rebelot/kanagawa.nvim' },
    config = function()
      vim.cmd("colorscheme eye-cancer")
    end
  }
```
  * other package managers
  ```lua
    -- I have no idea, probably: 
    use { 'i have eye cancer', } -- ... or something

    -- Why are you still using packer?
  ```

## Usage
```vim
colorscheme eye-cancer
```
```lua
vim.cmd("colorscheme eye-cancer")
```

