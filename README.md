# dotfiles

weineel's dotfiles, power by [chezmoi](https://github.com/twpayne/chezmoi).

## Utils

### chezmoi

- 使用对应系统的包管理器安装(ubuntu `snap install chezmoi --classic`)。
- [安装文档](https://www.chezmoi.io/install/)
- 一次性执行

### [Atuin](https://docs.atuin.sh/) 管理命令行历史纪录

```shell
# 同步命令行历史纪录（需要账号密码，数据也是加密的）
atuin login -u weineel
atuin sync
```

## TODO

- zdharma-continuum/zinit-annex-rust（zinit 插件）： 安装 rustup、cargo 等
- [ ] 自动安装软件（setup 时先检查是否已经安装过了）

  - zsh，并设置为默认(chsh -s /bin/zsh)
  - git
  - brew？
  - unzip
  - atuin (命令行历史管理)
  - neovim

    - 目前的实现是 在 Ubuntu 上使用 vim
    - .osRelease.id 为 ubuntu 时需要特殊处理安装 0.8 以上版本
    - 不同 场景下（hosttag）使用的插件不同，毕竟不会在 server 上开发

  - tmux
  - starship
  - volta

## Other dotfiles manager.

[dotfiles manager](https://dotfiles.github.io/utilities/)
