#!/bin/sh

(
	oldpwd="$PWD"

	cd "$(dirname "$(realpath "$0")")"

	if [ -d "$oldpwd/fonts" ]
	then
		fontcmd="-v $oldpwd/fonts:/root/.fonts/host:ro"
	else
		fontcmd=""
	fi

	exec podman run \
		-v "$oldpwd:/pwd" \
		-v maybetree-typst-homedir:/root \
		-v ./app:/app:ro  \
		$fontcmd \
		--rm \
		-ti \
		--init \
		maybetree-typst "$@"
)

