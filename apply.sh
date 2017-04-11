#/bin/bash

echo ">> Removing current setting"
rm -rf ~/.vim
rm -f ~/.vimrc

echo ">> Installing Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo ">> Installing Auto-Pair"
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

echo ">> Installing NERDCommenter"
git clone https://github.com/scrooloose/nerdcommenter.git \
	~/.vim/bundle/nerdcommenter

echo ">> Installing NERDTree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo ">> Installing Tabline"
git clone git://github.com/mkitt/tabline.vim.git ~/.vim/bundle/tabline.vim

echo ">> Installing Tagbar"
git clone git://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar

echo ">> Installing Airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

echo ">> Installing Airline Themes"
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

echo ">> Installing EasyMotion"
git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion

echo ">> Installing Fugitive"
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

echo ">> Installing GitGutter"
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

echo ">> Installing VimTemplate"
git clone git://github.com/aperezdc/vim-template.git ~/.vim/bundle/vim-template

echo ">> Installing Indexed Search"
git clone https://github.com/henrik/vim-indexed-search.git ~/.vim/bundle/vim-indexed-search

echo ">> Installing Vim Surround"
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround

echo ">> Installing Tabmerge"
git clone https://github.com/vim-scripts/Tabmerge.git ~/.vim/bundle/Tabmerge

echo ">> Installing DoxygenToolkit"
git clone https://github.com/vim-scripts/DoxygenToolkit.vim.git ~/.vim/bundle/DoxygenToolkit

echo ">> Installing colorschemes"
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes

echo ">> Applying configuration"
cp .vimrc ~/

echo ">> Done"
