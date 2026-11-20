# Installing lazy vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
# removing the `.git` folder
rm -rf ~/.config/nvim/.git

# Removing the existing Lua Config
if [ -f "~/.config/nvim/lua/plugins/core.lua" ]; then
  rm -rf ~/.config/nvim/lua/plugins/core.lua
fi
# Copying Lua config to production lua directory
cp luafiles/core.lua ~/.config/nvim/lua/plugins/core.lua

# Removing the existing Lua Config
if [ -f "~/.config/nvim/lua/config/keymaps.lua" ]; then
  rm -rf ~/.config/nvim/lua/config/keymaps.lua
fi
# Copying Lua config to production lua directory
cp luafiles/keymaps.lua ~/.config/nvim/lua/config/keymaps.lua

# Removing the existing tmux Config
if ! [ -e "~/.tmux.conf" ]; then
  cp dotfiles/.tmux.conf ~/
else
  echo "File already exists"
fi

if ! [ -f "~/.config/fish/config.fish" ]; then
  cp dotfiles/config.fish ~/.config/fish/config.fish && source ~/.config/fish/config.fish
fi

cp dotfiles/config.ghostty ~/.config/ghostty/config.ghostty

mkdir -p ~/.config/tmux/plugins/

git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm/tpm

git clone https://github.com/jimeh/tmux-themepack.git ~/.config/tmux/plugins/
