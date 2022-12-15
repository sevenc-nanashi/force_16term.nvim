# force_16term.nvim /	Force 16-colored terminal in any colorscheme!

This is a simple plugin that forces the terminal to use 16 colors, even your colorscheme only provides 8 colors.

## Installation

Use your favorite plugin manager, for example:

```vim
call dein#add('sevenc-nanashi/force_16term.nvim')
```

## Usage

Add the following line to your vimrc **AFTER** loading your colorscheme:

```vim
Force16Term
```

## Functions

### Force16Term `{background}` `{fax}`

Forces 16-colored terminal in any colorscheme.

`{background}` is a background color of terminal.  It must be one of the following values:
	"dark"		: dark background
	"light"		: light background
	"auto"		: automatically detect background color

`{fax}` is a factor to adjust colors.  Default is `1.2`.

## License

This plugin is released under the MIT License.
