.phony: build install uninstall clean lint

build:
	gnome-extensions pack . -f --extra-source=background.jpg

install: build
	# Installing...
	sudo rm -rf /usr/local/share/gnome-shell/extensions/gdm-login-style@icedman.github.com/
	sudo mkdir -p /usr/local/share/gnome-shell/extensions/gdm-login-style@icedman.github.com/
	sudo unzip gdm-login-style@icedman.github.com.shell-extension.zip -d /usr/local/share/gnome-shell/extensions/gdm-login-style@icedman.github.com/
	# Enabling...
	sudo -u gdm gnome-extensions enable gdm-login-style@icedman.github.com

uninstall:
	sudo rm -rf /usr/local/share/gnome-shell/extensions/gdm-login-style@icedman.github.com/
	# Removed extension files.

clean:
	rm -f gdm-login-style@icedman.github.com.shell-extension.zip

lint:
	eslint ./
