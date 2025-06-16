FROM alpine:latest AS base
RUN apk add --no-cache python3

FROM base AS builder
WORKDIR /app
RUN \
	apk add --no-cache gcc make linux-headers musl-dev python3-dev && \
	python3 -m venv venv && \
	venv/bin/pip install \
		control matplotlib numpy scipy sympy pandas ipython jupyter && \
	:

FROM base AS final
COPY --from=builder /app/venv /app/venv
WORKDIR /pwd

ENTRYPOINT ["/app/venv/bin/python3"]

