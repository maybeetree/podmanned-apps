#!/bin/sh

podman run \
	-v "$PWD:/pwd" \
	--rm \
	--init \
	-ti \
	--env LEDGER_FILE=./.hledger.journal \
	maybetree-hledger "$@"

