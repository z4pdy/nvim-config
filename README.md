### Requirements: 
- install [`ripgrep`](https://github.com/BurntSushi/ripgrep)
- install `JetBrainsMono Nerd Font`:
```bash
mkdir -p /tmp/JetBrainsMono
wget -O /tmp/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip /tmp/JetBrainsMono.zip -d /tmp/JetBrainsMono
mkdir -p ~/.local/share/fonts
cp /tmp/JetBrainsMono/*.ttf ~/.local/share/fonts/
fc-cache -fv 
```
- install [`tree-sitter-cli`](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
