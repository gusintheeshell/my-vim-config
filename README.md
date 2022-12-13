# My Vim Config
<img src="https://img.shields.io/static/v1?label=VIM&message=Text%20Editor&color=339933&style=for-the-badge&logo=Vim"/>

Repository to store my .vimrc file settings

## What is a VIMRC file?

Settings file used by Vim, a text editing program often used by source code developers and system administrators; saves the default settings for the editor when it is opened; allows users to customize options for the editor.

## More Information

VIMRC files are saved in a plain text format. They store a series of instructions, each of which can be run manually in the Vim editor by typing a colon ":" character and entering the command. Common settings include text indentation properties and window and font colors.

On Unix-based systems (Linux, Mac OS X, etc.), VIMRC files are saved to the user's home directory as a hidden file with no filename prefix (~/.vimrc).

_NOTE:_ gVim, the Windows Vim editor, uses a file with the name \_vimrc instead of .vimrc.

### Plugins Overview

- [Vundle](https://github.com/VundleVim/Vundle.vim) - Vundle is short for Vim bundle and is a Vim plugin manager.
- [WakaTime](https://wakatime.com/vim) - The open source plugin for productivity metrics, goals, leaderboards, and automatic time tracking.
- [YATS](https://github.com/HerringtonDarkholme/yats.vim) - Yet Another TypeScript Syntax
- [Conquer of Completition](https://github.com/neoclide/coc.nvim) - Intellisense. Make your Vim/Neovim as smart as VSCode.
- [The NERDTree](https://github.com/preservim/nerdtree) - File system explorer for the Vim editor.
- [NERDTree Git Plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) - A plugin of NERDTree showing git status flags.
- [Git Gutter](https://github.com/airblade/vim-gitgutter) - A Vim plugin which shows a git diff in the sign column.
- [Vim Airline](https://github.com/vim-airline/vim-airline) - Lean & mean status/tabline for vim that's light as air.
- [Vim Airline Themes](https://github.com/vim-airline/vim-airline-themes) - Themes for Airline Plugin.
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) - A code-completion engine for Vim.
- [Vim Prettier](https://github.com/prettier/vim-prettier) - An opinionated code formatter.
- [Neoformat](https://github.com/sbdchd/neoformat) - A (Neo)vim plugin for formatting code.

### How to use this file [Linux]

First at all, you need to have GIT installed (hard not to have since you're on linux).

With that, you need to install vundle, run the command:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

After that, open vim and run:
```vim
:PluginInstall
```
That's it!
