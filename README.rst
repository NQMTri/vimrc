VIMRC
=======
Are you googling "best vimrc"? Give this one a try!

Introduction
************
I've been using Vim since July, 2017 for editing source codes and taking notes.
As you may know, stock Vim is pretty boring and no difference from Nano.
But with a good .vimrc file and a handful of cool packages, Vim becomes an
extremely powerful, lightweight, fast and flexible text editor.

But to have a cool .vimrc file is not an easy task. It takes weeks to edit,
try, Google around to customize Vim the way we want. So, to save your time
and also mine (sometimes, I just re-install my OS and my precious .vimrc and
packages are gone), just copy the script from the Installation section, paste
and then wait for couple of seconds. Then your Vim will looks like this:

.. image:: https://raw.githubusercontent.com/hkhoi/vimconf/master/badwolf.png

or with different themes:

.. image:: https://raw.githubusercontent.com/hkhoi/vimconf/master/papercolor.png

Installation
************
Go to your home directory and paste this to the terminal::
	
	git clone https://github.com/hkhoi/vimrc.git && \
	cd vimrc && \
	./apply.sh

Please note that one of the package (tagbar) requires ctags. To install it, just simply
paste this to your terminal.

Ubuntu/Mint...::
	
	sudo apt install ctags
 
Fedora/Centos...::
	
	sudo yum install ctags

Mac::
	brew install ctags

MacOS can also install this one, but the installation directory is different,
to resolve this problem, simply::

	whereis ctags

Copy the path, go to line 151 of .vimrc (let g:tagbar_ctags_bin='/usr/bin/ctags'),
and paste it.

If you have any errors regarding to installation, feel free to create an issue.

Packages
********
You can skip this one if you don't really care about which packages are being
used in this configuration. But it is highly recommended to read and go
to the repository page for the better documentation as well.

Here is the list of packages:

- Pathogen: https://github.com/tpope/vim-pathogen : This package managermakes 
  it super easy to install other packages.
- Auto Pairs: https://github.com/jiangmiao/auto-pairs : Inserts, deletes
  brackets, parens, quotes in pair.
- NERDCommenter: https://github.com/scrooloose/nerdcommenter :
  Comments/Uncomments code.
- NERDTree: https://github.com/scrooloose/nerdtree : File explorer side bar.
- Tabline: https://github.com/mkitt/tabline.vim : Makes tabs look better.
- Tagbar: https://github.com/majutsushi/tagbar : Shows tags (variable,
  function's names...) of the current source code file.
- Airline: https://github.com/vim-airline/vim-airline : A beautiful status bar
  for Vim.
- Airline Theme: https://github.com/vim-airline/vim-airline-themes : A huge
  collection of themes for Airline.
- EasyMotion: https://github.com/easymotion/vim-easymotion : Provides a quick
  and easy way to navigate through a file.
- Fugitive: https://github.com/tpope/vim-fugitive : An awesome Git wrapper.
- Git Gutter: https://github.com/jisaacks/GitGutter : Shows git diff of the
  current file.
- Vim Tempate: https://github.com/aperezdc/vim-template : Insert
  templates/skeleton code for certain file types.
- Vim Indexed Search: https://github.com/henrik/vim-indexed-search : Enhanced
  search feature.
- Vim Surround: https://github.com/tpope/vim-surround : Surrounds words with
  quotes, paratheses...
- Tabmerge: https://github.com/vim-scripts/Tabmerge : Merges a tab with the
  current window.
- DoxygenToolKit: https://github.com/vim-scripts/DoxygenToolkit.vim : Doxygen
  tool for Vim.
- Vim Colorscheme: https://github.com/flazz/vim-colorschemes : A massive
  collection of Vim colorschemes.

Tutorial (Still not finished)
********

Note
----
The instruction will be something like this::

	NOMRAL
	C-j

NORMAL is the current mode of Vim (can be INSERT, VISUAL...). C-j means
Control + j;

Navigation
----------
To move your cursor from a splitscreen to another::
	
	NORMAL
	gh

In this case, h  is for going left, gj to go down, gk to go up and gl to go
left.

Tabs
----
To create a new blank tab::
	
	NORMAL
	tn

To open a file in a new tab::

	NORMAL
	tt

and then enter the path of that file.

To go to the next tab::

	NORMAL
	tl

or::

	NORMAL
	th

To quit a tab, simply::

	NORMAL
	:q

NERDTree
--------
To toggle NERDTree::

	NORMAL
	C-n

When your cursor is in the panel, press ? for help. Press ma to create a new
file or directory, md to delete it.

Press enter to open that file in the current window, press s to open a file
in a vertical split screen, i for horizontal split screen.

To open a file in new tab, press t.

Tagbar
------
To toggle tagbar::

	NORMAL
	C-j

You can select a tag and press enter to jump to that variable/function...

Escape
------
No need to reach for that Esc key, just press j twice::

	INSERT
	jj

You will go to NORMAL mode.

Another way which I highly recommend is::
	
	INSERT
	C-c

Word Complition
---------------
It works like Sublime::

	INSERT
	C-n

or, for going backward::

	INSERT
	C-p


Appearance
----------
To swtich to dark scheme::

	NORMAL
	td

To switch to light scheme::

	NORMAL
	tf

Please note that only some themes support dark and light themes (i.e PaperColor).

To explore coloscheme::

	NORMAL
	:colo <TAB>

Press Tab to move to next theme, Shift-Tab to return to the previous one.

The same for Airline (status bar)::

	NORMAL
	:AirlineTheme <TAB>

Other Tips and Tricks
*********************

Search
------
There is a special way to search, move your cursor to the word you want to look
for, then press \*. This is useful to see the function definition within a
file.

Contribution
************
Any contribution is highly appreciated, give me your pull requests!

TODO
****
Things I need to write:
	- Tab merging
	- Split screen moving
	- And more..............
