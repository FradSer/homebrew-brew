# FradSer's Homebrew Tap ![](https://img.shields.io/badge/homebrew-tap-orange)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**English** | [简体中文](README.zh-CN.md)

Personal Homebrew formulae for macOS and Linux.

## Usage

Add this tap:

```bash
brew tap fradser/brew
```

Then install any formula below.

## Formulae

### event

[event](https://github.com/FradSer/event) is a CLI tool for managing Apple Reminders and Calendar via EventKit.

```bash
brew install fradser/brew/event
```

### evalcache

[evalcache](https://github.com/mroth/evalcache) caches the output of binary initialization commands to speed up shell startup.

```bash
brew install fradser/brew/evalcache
```

After installation, add to your `.zshrc`:

```bash
source $(brew --prefix)/share/evalcache/evalcache.plugin.zsh
```

Example usage:

```bash
# Instead of: eval "$(rbenv init -)"
_evalcache rbenv init -

# Instead of: eval "$(hub alias -s)"
_evalcache hub alias -s

# Clear the cache
_evalcache_clear
```

### git-agent

[git-agent](https://github.com/FradSer/git-agent-cli) is an AI-powered git commit agent.

```bash
brew install fradser/brew/git-agent
```

## Contributing

To add a new formula, place a `.rb` file in the `Formula/` directory. See the [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook) for details.

## License

MIT
