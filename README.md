# Homebrew tap for TypoCat

[TypoCat](https://github.com/hx-natthawat/typocat) fixes words typed on the wrong keyboard layout.

```bash
brew install --cask hx-natthawat/typocat/typocat
```

Update with `brew upgrade --cask typocat`.

Each release pins its version and the DMG's SHA-256, so Homebrew checks the download.
The TypoCat release workflow updates this cask when it has a `HOMEBREW_TAP_TOKEN` secret;
otherwise update `version` and `sha256` by hand (`shasum -a 256 TypoCat.dmg`).
