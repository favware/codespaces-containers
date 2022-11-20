FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:18

# Install packages required for installing other packages
RUN apt-get update \
	&& apt-get -y install \
	apt-transport-https \
	ca-certificates \
	curl \
	dirmngr \
	gnupg \
	lsb-release \
	software-properties-common

# Add contrib and non-free repos to sources
RUN sed 's/buster main/buster main contrib non-free/g' -i /etc/apt/sources.list

# Install additional OS packages.
RUN add-apt-repository "deb http://ftp.us.debian.org/debian buster main contrib non-free" \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get -y install \
	build-essential \
	fonts-firacode \
	htop \
	nano \
	neofetch \
	tree \ 
	vim \
	wget \
	zsh

# Install PowerShell
# Download the Microsoft repository GPG keys
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb \ 
	# Register the Microsoft repository GPG keys
	&& dpkg -i packages-microsoft-prod.deb \
	&& apt-get update \
	&& apt-get -y install \
	powershell

# Download GitHub CLI v1.0.0 and put it in /usr/local/bin
RUN curl -sL https://github.com/cli/cli/releases/download/v1.0.0/gh_1.0.0_linux_amd64.tar.gz | tar -xz --wildcards "*gh" && mv gh*linux_amd64/bin/gh . && rm -r gh_*linux_amd64 \
	&& mv ./gh /usr/local/bin \
	&& chmod +x /usr/local/bin/gh

# Install various NPM packages globally.
RUN sudo -u node npm install -g \
	all-contributors-cli \
	commitizen \
	eslint \
	git-open \
	http-server \
	jest \
	lint-staged \
	node-gyp \
	pm2 \
	prettier \
	rimraf \
	rollup \
	standard-version \
	ts-node \
	typescript

# Switch to non-root user
USER node

# Setup Oh-my-zsh, plugins, fonts and config

## Download zsh-git-enhanced
RUN git clone https://github.com/favware/zsh-git-enhanced.git /home/node/.oh-my-zsh/custom/plugins/zsh-git-enhanced --depth 1 \ 
	# Download zsh-syntax-highlighting
	&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/node/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting --depth 1 \
	# Download zsh-autosuggestions
	&& git clone https://github.com/zsh-users/zsh-autosuggestions /home/node/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1 \
	# Download powerlevel10k
	&& git clone https://github.com/romkatv/powerlevel10k.git /home/node/.oh-my-zsh/custom/themes/powerlevel10k --depth=1 \
	# Download powerlevel10k config
	&& curl -sLo /home/node/.p10k.zsh https://raw.githubusercontent.com/Favna/dotfiles/main/.p10k.zsh \
	# Download .profile
	&& curl -sLo /home/node/.profile https://raw.githubusercontent.com/Favna/dotfiles/main/.profile \
	# Download .zshrc
	&& curl -sLo /home/node/.zshrc https://raw.githubusercontent.com/Favna/dotfiles/main/.zshrc \
	# Create fonts directory
	&& mkdir /home/node/.fonts \
	# Download MesloLGS font files
	&& curl -sLo /home/node/.fonts/MesloLGS\ NF\ Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf \
	&& curl -sLo /home/node/.fonts/MesloLGS\ NF\ Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf \
	&& curl -sLo /home/node/.fonts/MesloLGS\ NF\ Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf \
	&& curl -sLo /home/node/.fonts/MesloLGS\ NF\ Bold\ Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf \
	# Modify syntax line highlighter path
	&& curl -sL https://raw.githubusercontent.com/Favna/dotfiles/main/extra/line-highlighters-addition.zsh >> /home/node/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/highlighters/line/line-highlighter.zsh

CMD [ "/bin/zsh" ]