# FradSer's Homebrew Tap

Personal Homebrew formulae.

## Installation

```bash
brew tap fradser/brew
```

## Formulae

### event

CLI tool for managing Apple Reminders and Calendar via EventKit.

```bash
brew install fradser/brew/event
```

### evalcache

Cache the output of binary initialization commands to speed up shell startup.

```bash
brew install fradser/brew/evalcache
```

After installation, add to your `.zshrc`:

```bash
source $(brew --prefix)/share/evalcache/evalcache.plugin.zsh
```

Usage:

```bash
# Instead of: eval "$(rbenv init -)"
_evalcache rbenv init -

# Instead of: eval "$(hub alias -s)"
_evalcache hub alias -s

# Clear cache when needed
_evalcache_clear
```
