<div align="center">

<a href="https://favware.tech"><img src="https://cdn.favware.tech/img/home.png" height="200" alt="logo"/></a>

# Favware Codespaces Containers

**Useful Docker containers designed for GitHub Codespaces**

[![GitHub](https://img.shields.io/github/license/favware/codespaces-containers)](https://github.com/favware/codespaces-containers/blob/main/LICENSE.md)
![Docker Pulls](https://img.shields.io/docker/pulls/favware/codespaces-containers?logo=docker&logoColor=%23FFFFFF)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/favware/codespaces-containers/base?label=base%20image%20size&logo=docker&logoColor=%23FFFFFF)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/favware/codespaces-containers/canvas?label=with-node-canvas%20image%20size&logo=docker&logoColor=%23FFFFFF)

</div>

**Table of Contents**

-   [Favware Codespaces Containers](#favware-codespaces-containers)
    -   [Quick reference](#quick-reference)
    -   [Supported tags and respective `Dockerfile` links](#supported-tags-and-respective-dockerfile-links)
    -   [What are Codespaces-containers?](#what-are-codespaces-containers)
        -   [What is included in the `base` image?](#what-is-included-in-the-base-image)
            -   [Debian Packages](#debian-packages)
            -   [Globally installed NPM CLI Tools](#globally-installed-npm-cli-tools)
            -   [Other CLI Tools](#other-cli-tools)
            -   [CLI Configuration](#cli-configuration)
            -   [Dotfiles Configuration](#dotfiles-configuration)
            -   [Other](#other)
        -   [What is included in the `with-node-canvas` image?](#what-is-included-in-the-with-node-canvas-image)
            -   [Debain Packages](#debain-packages)
    -   [Buy us some doughnuts](#buy-us-some-doughnuts)
    -   [Contributors ✨](#contributors-%E2%9C%A8)

## Quick reference

-   **Maintained by**:  
    [Favware](https://github.com/favware)

-   **Where to get help**:  
    [the Favware Discord server](https://redirect.favware.com/discord/), [the Skyra Discord server](https://join.skyra.pw), or [the Sapphire Project Discord server](https://joins.skyra.com/sapphire)

-   **Where to file issues**:  
    [https://github.com/favware/codespaces-containers/issues](https://github.com/favware/codespaces-containers/issues)

## Supported tags and respective `Dockerfile` links

-   [`latest`, `main`, `base`](https://github.com/favware/codespaces-containers/blob/main/base/Dockerfile)
-   [`with-node-canvas`, `with-canvas`, `canvas`](https://github.com/favware/codespaces-containers/blob/main/with-node-canvas/Dockerfile)

## What are Codespaces-containers?

Images published under [`favware/codespaces-containers`] are designed to be used for GitHub Codespaces. They are specifically set up to provide the best Debian 9 (Stretch) based VSCode coding experience out-of-the-box and zero-config to get started quick and easy.

### What is included in the `base` image?

First of all this image is based on the [`mcr.microsoft.com/vscode/devcontainers/typescript-node:14`] image so everything that is included in that image, is also included in here. Additionally, the following are also included:

#### Debian Packages

-   [apt-transport-https]
-   [build-essential]
-   [curl]
-   [fonts-firacode]
-   [gnupg]
-   [htop]
-   [nano]
-   [neofetch]
-   [NodeJS](v14)
-   [powershell](v7)
-   [tree]
-   [vim]
-   [wget]
-   [zsh]

#### Globally installed NPM CLI Tools

-   [all-contributors-cli]
-   [commitizen]
-   [eslint]
-   [git-open]
-   [http-server]
-   [jest]
-   [lint-staged]
-   [node-gyp]
-   [pm2]
-   [prettier]
-   [rimraf]
-   [rollup]
-   [standard-version]
-   [ts-node]
-   [typescript]

#### Other CLI Tools

-   [GitHub CLI][] (v1.0.0)

#### CLI Configuration

The default shell is set to [`zsh`], with the [`oh-my-zsh`] framework. The following custom plugins are added:

-   [zsh-git-enhanced]
-   [zsh-syntax-highlighting]
-   [zsh-autosuggestions]

Furthermore oh-my-zsh is configured to use the [`powerlevel10k`] theme.

For the full zsh configuration see the [Dotfiles Configuration](#dotfiles-configuration)

#### Dotfiles Configuration

-   [`.p10k.zsh`]
-   [`.profile`]
-   [`.zshrc`]

#### Other

Lastly the [MesloLGS NF][] font has been added to provide proper glyphs for the [`powerlevel10k`] theme

### What is included in the `with-node-canvas` image?

First of all this image is based on the `codespaces-containers:base` image so everything listed above is included. Additionally, the following are also included:

#### Debain Packages

-   [libcairo2-dev]
-   [libgif-dev]
-   [libjpeg-dev]
-   [libpango1.0-dev]
-   [librsvg2-dev]

## Buy us some doughnuts

Favware projects are open source and always will be, even if there are no donations. That said, we also know there are people out there that may still want to donate just to show their appreciation so this is for you guys. Thanks in advance!

You can contribute in a multitude of ways:

-   [PayPal](https://donate.favware.tech/paypal)
-   [Patreon](https://www.patreon.com/favna)
-   [Ko-Fi](https://ko-fi.com/favna)
-   [GitHub Sponsors Favna](https://github.com/sponsors/Favna)
-   Bitcoin: `1E643TNif2MTh75rugepmXuq35Tck4TnE5`
-   Ethereum: `0xF653F666903cd8739030D2721bF01095896F5D6E`
-   LiteCoin: `LZHvBkaJqKJRa8N7Dyu41Jd1PDBAofCik6`

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://favware.tech/"><img src="https://avatars3.githubusercontent.com/u/4019718?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Jeroen Claassens</b></sub></a><br /><a href="https://github.com/favware/codespaces-containers/commits?author=Favna" title="Code">💻</a> <a href="https://github.com/favware/codespaces-containers/commits?author=Favna" title="Documentation">📖</a> <a href="#projectManagement-Favna" title="Project Management">📆</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

<!-- LINKS -->

[`.p10k.zsh`]: https://raw.githubusercontent.com/Favna/dotfiles/main/.p10k.zsh
[`.profile`]: https://raw.githubusercontent.com/Favna/dotfiles/main/.profile
[`.zshrc`]: https://raw.githubusercontent.com/Favna/dotfiles/main/.zshrc
[`favware/codespaces-containers`]: https://github.com/favware/codespaces-containers
[`mcr.microsoft.com/vscode/devcontainers/typescript-node:14`]: https://hub.docker.com/_/microsoft-vscode-devcontainers
[`oh-my-zsh`]: https://ohmyz.sh/
[`powerlevel10k`]: https://github.com/romkatv/powerlevel10k
[`zsh`]: https://en.wikipedia.org/wiki/Z_shell
[all-contributors-cli]: https://npmjs.com/package/all-contributors-cli
[apt-transport-https]: https://packages.debian.org/stretch/apt-transport-https
[build-essential]: https://packages.debian.org/stretch/build-essential
[commitizen]: https://npmjs.com/package/commitizen
[curl]: https://packages.debian.org/stretch/curl
[eslint]: https://npmjs.com/package/eslint
[fonts-firacode]: https://packages.debian.org/stretch/fonts-firacode
[git-open]: https://npmjs.com/package/git-open
[github cli]: https://github.com/cli/cli/
[gnupg]: https://packages.debian.org/stretch/gnupg
[htop]: https://packages.debian.org/stretch/htop
[http-server]: https://npmjs.com/package/http-server
[jest]: https://npmjs.com/package/jest
[libcairo2-dev]: https://packages.debian.org/stretch/libcairo2-dev
[libgif-dev]: https://packages.debian.org/stretch/libgif-dev
[libjpeg-dev]: https://packages.debian.org/stretch/libjpeg-dev
[libpango1.0-dev]: https://packages.debian.org/stretch/libpango1.0-dev
[librsvg2-dev]: https://packages.debian.org/stretch/librsvg2-dev
[lint-staged]: https://npmjs.com/package/lint-staged
[meslolgs nf]: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
[nano]: https://packages.debian.org/stretch/nano
[neofetch]: https://packages.debian.org/stretch/neofetch
[node-gyp]: https://npmjs.com/package/node-gyp
[nodejs]: https://nodejs.org/en/
[pm2]: https://npmjs.com/package/pm2
[powershell]: https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7
[prettier]: https://npmjs.com/package/prettier
[rimraf]: https://npmjs.com/package/rimraf
[rollup]: https://npmjs.com/package/rollup
[standard-version]: https://npmjs.com/package/standard-version
[tree]: https://packages.debian.org/stretch/tree
[ts-node]: https://npmjs.com/package/ts-node
[typescript]: https://npmjs.com/package/typescript
[vim]: https://packages.debian.org/stretch/vim
[wget]: https://packages.debian.org/stretch/wget
[zsh-autosuggestions]: https://github.com/zsh-users/zsh-autosuggestions
[zsh-git-enhanced]: https://github.com/favware/zsh-git-enhanced
[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh]: https://packages.debian.org/stretch/zsh
