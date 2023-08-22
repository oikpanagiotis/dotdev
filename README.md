## Install configurations on a new system
### tmux
1. Install tpm (https://github.com/tmux-plugins/tpm)
2. Install vim-plug (https://github.com/junegunn/vim-plug)
3. Copy .tmux.conf to ~/.tmux.conf
4. Open tmux and press <prefix>+I

### nvim
1. Install packer (https://github.com/wbthomason/packer.nvim)
2. Copy nvim to ~/.config
3. Comment out gruvbox package in ~/.config/nvim/lua/panosdev/packer.lua
4. Open packer.lua with nvim and run :so , :PackerSync 
5. Remove comment from gruvbox and re run :so , :PackerSync
