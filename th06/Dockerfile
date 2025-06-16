FROM alpine:latest

RUN apk add --no-cache \
	alsa-utils \
	pipewire-alsa \
	wine \
	fluidsynth `# for playing the BGM ` \
	\
	`# for compiling nowrite.so ` \
	gcc \
	musl-dev \
	\
	musl-locales ` # maybe needed?? idk ` \
	\
	`# Maybe needed for hw accel?? ` \
	mesa-vulkan-intel \
	vulkan-loader

WORKDIR /app
CMD ["/app/run.sh"]


