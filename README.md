# dotfiles

weineel's dotfiles, power by [chezmoi](https://github.com/twpayne/chezmoi).

## TODO

- [ ] 自动安装软件（setup 时先检查是否已经安装过了）

  - zsh，并设置为默认(chsh -s /bin/zsh)
  - chezmoi 使用对应系统的包管理器安装(ubuntu `snap install chezmoi --classic`)。[安装文档](https://www.chezmoi.io/install/)
  - brew？
  - unzip
  - neovim

    - 目前的实现是 在 Ubuntu 上使用 vim
    - .osRelease.id 为 ubuntu 时需要特殊处理安装 0.8 以上版本
    - 不同 场景下（hosttag）使用的插件不同，毕竟不会在 server 上开发

  - tmux
  - exa 使用 rust cargo 安装 https://github.com/ogham/exa/issues/978#issuecomment-1508621417

## Other dotfiles manager.

[dotfiles manager](https://dotfiles.github.io/utilities/)
