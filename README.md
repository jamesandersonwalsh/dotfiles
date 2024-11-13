# Dotfiles

For synchronizing development environments through Homebrew & YADM.

<hr />

## Pre-requisites

1. [Install HomeBrew](https://docs.brew.sh/Installation) then run the following:
```bash
brew install yadm
```
2. Install Password Manager responsible for managing Git SSH keys _(or authenticate with Github through HTTPS)_. You will need to be able to read from the repo for `yadm clone` to succeed.

## Bootstrap Device

```bash
yadm clone https://github.com/jamesandersonwalsh/dotfiles.git --bootstrap
```

## Inspired By

- [mattstratton/my-brewfile-1pob](https://dev.to/mattstratton/my-brewfile-1pob)
- [BenGu3/dotfiles](https://github.com/BenGu3/dotfiles/blob/main/README.md)
