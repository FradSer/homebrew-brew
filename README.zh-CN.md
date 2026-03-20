# FradSer's Homebrew Tap ![](https://img.shields.io/badge/homebrew-tap-orange)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[English](README.md) | **简体中文**

个人 Homebrew 软件仓库，适用于 macOS 和 Linux。

## 使用方法

添加此 tap：

```bash
brew tap fradser/brew
```

然后安装下方任意 formula。

## 可用 Formula

### event

[event](https://github.com/FradSer/event) 是一个通过 EventKit 管理 Apple 提醒事项和日历的 CLI 工具。

```bash
brew install fradser/brew/event
```

### evalcache

[evalcache](https://github.com/mroth/evalcache) 缓存 shell 初始化命令的输出，加快 shell 启动速度。

```bash
brew install fradser/brew/evalcache
```

安装后，在 `.zshrc` 中添加：

```bash
source $(brew --prefix)/share/evalcache/evalcache.plugin.zsh
```

使用示例：

```bash
# 替代：eval "$(rbenv init -)"
_evalcache rbenv init -

# 替代：eval "$(hub alias -s)"
_evalcache hub alias -s

# 清除缓存
_evalcache_clear
```

### git-agent

[git-agent](https://github.com/FradSer/git-agent-cli) 是一个 AI 驱动的 git 提交代理工具。

```bash
brew install fradser/brew/git-agent
```

## 贡献

如需添加新的 formula，在 `Formula/` 目录中放置一个 `.rb` 文件。详见 [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)。

## 许可证

MIT
