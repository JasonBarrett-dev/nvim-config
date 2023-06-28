# Jason's NeoVim Config

Instructions for Mac but easily applicable to other platforms.

Prerequisites:
* NeoVim installed: `brew install --HEAD neovim`
* npm installed (preferably via nvm):
  * nvm: https://github.com/nvm-sh/nvm#installing-and-updating
  * Then run `nvm install -lts` to get the LTS version of NPM/Node.
* ripgrep installed: `brew install repgrep` (https://github.com/BurntSushi/ripgrep#installation)
* packer installed (https://github.com/wbthomason/packer.nvim):
    ```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
* `nvim-tree/nvim-web-devicons` requires that you use a patched font with the icons. I use the "Hack Nerd Font" from https://www.nerdfonts.com.
 After installing the font, in iTerm2, go to Settings -> Profiles -> Text tab, then tick "Use a different front for non-ASCII text" and select Hack Nerd Font Mono
 as the Non-ASCII Font. I'm sure it's similar for other terminal emulators.

