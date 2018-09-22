## Directions
```
cd ~/my_dot_files
git submodule update --init --recursive
ln -s ~/my_dot_files/bashrc ~/.bashrc
ln -s ~/my_dot_files/vimrc ~/.vimrc
ln -s ~/my_dot_files/vim ~/.vim
ln -s ~/my_dot_files/ctags ~/.ctags
# set dir colors
ln -s ~/my_dot_files/dircolors.256dark ~/.dir_colors
echo "eval `dircolors ~/.dir_colors`" >> ~/.bashrc
```
