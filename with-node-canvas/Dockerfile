FROM favware/codespaces-containers:base

# Install additional OS packages.
RUN sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
	&& sudo apt-get -y install \
	libcairo2-dev \
	libgif-dev \
	libjpeg-dev \
	libpango1.0-dev \
	librsvg2-dev