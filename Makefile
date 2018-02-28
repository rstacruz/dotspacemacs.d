# Installs spacemacs
install:
	if [ ! -e ~/.emacs.d ]; then git clone https://github.com/syl20bnr/spacemacs.git ~/.emacs.d -b develop; fi
