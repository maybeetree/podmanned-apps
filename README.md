# Podmanned apps

This is my personal collection of dockerfiles
that package various command line apps for podman.

The benefit of running apps in this way is that it prevents them
from cluttering up your home folder
and limits the damage caused by potential supply chain attacks.

If you are not worried about homedir clutter and supply chain attacks,
then this method is likely not for you.
If you just want to have access to a large collection of
apps that just work, consider the Nix package manager.

Most of these dockerfiles work by bind-mounting the working directory
on the host into `/pwd` in the container.
That means that you should only pass relative paths inside the working
directory to the apps that you run.
Absolute paths or paths pointing outside the working directory will not work.
A long-term goal is to write forwarder scripts that will
parse command line arguments and pass only the needed files through
to the container.

## Apps

You can "install" each app by first running the `build.sh`
script inside its directory to create the container image,
then symlinking the `run.sh` script into a directory
that's in your $PATH:

```shell
cd typst
./build.sh
ln -sf $(realpath ./run.sh) ~/.local/bin/typst
```

### github-cli

Github command line client.
Persistent data (e.g. access token) is stored in a docker volume.
PWD is mounted as rw.

### nsxiv

Image viewer for xorg.

### pdftk

a "Handy Tool for Manipulating PDF Documents"

### remarshall

Python package for converting between data formats like json and yaml

### tldr

A crowdsourced and more concise alternative to `man`.
Uses docker volume to store cache.

### typst

Typesetting engine

### uploadserver

Python package that hosts the PWD as http,
and allows clients to upload files.
`run.sh` script also helpfully prints your local IP address.



