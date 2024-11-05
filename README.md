<h1 align="center">GDM Login Style</h1>

<h3 align="center">Customize the GDM login screen with your own background image</h3>

## Features

* Safely and easily customize the GDM login screen. No need to extract, and recompile shell resources.

## Install

To install or update the background and stylesheet:

```sh
make install
```

If you get an error the first time, try to run the command:

```sh
sudo -u gdm dbus-launch gnome-extensions enable gdm-login-style@icedman.github.com
```

To remove:

```sh
make uninstall
```

## Customize

### Background image

Just replace the `background.jpg` file with your own image.

### Style

Edit the `stylesheet.css` file for a fully customized login screen.

```css
.login-dialog {
  background-color: transparent;
}

#lockScreenGroup,
#lockDialogGroup {
  background: url(file:///usr/local/share/gnome-shell/extensions/gdm-login-style@icedman.github.com/background.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
```

## Technical Information

The gdm login screen is run as user *gdm*. The extension will be installed and enabled at the *gdm* user profile. In some systems (like Arch linux), a dconf reset may be needed for user *gdm*.

```sh
sudo -u gdm dconf reset -f
```

It is compatible with immutable distros like **Fedora Silverblue** that have a writable `/var` directory.

## Credit

<https://github.com/PRATAP-KUMAR/gdm-extension/>
