# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

Personal macOS dotfiles for Tom Liptrot. The repo is the source of truth; the running machine is a copy. Files live here under their plain names (`.zshrc`, `.gitconfig`, `Brewfile`, `karabiner.json`, `starship.toml`, `iterm-profile.json`) and get copied into their real locations by `setup.sh`.

## Two-way sync model

Sync is a manual copy in either direction — there are no symlinks.

- `setup.sh` — repo → machine. Bootstraps a fresh macOS install: software updates, Xcode CLT, Homebrew + `brew bundle` from `Brewfile`, nerd fonts (every `font-*-nerd-font` cask via a `brew search` glob), zsh as default shell, `uv` + Python 3.11/3.12, then copies each config file to its destination.
- `create.sh` — machine → repo. Pulls the live configs back into the repo so edits made directly on disk can be committed. Run this before editing in-repo if the machine version may have drifted.

When changing a config, decide which direction is authoritative for that file before editing — editing in-repo and on-disk simultaneously will cause one side to be lost on the next sync.

Destination paths to know:
- `iterm-profile.json` → `~/Library/Application Support/iTerm2/DynamicProfiles/`
- `karabiner.json` → `~/.config/karabiner/`
- `starship.toml` → `~/.config/`
- `scripts/*` → `~/.local/bin/` (which is on `PATH` via `.zshrc`)

## scripts/

Executables copied to `~/.local/bin`. They are run by name from anywhere on the machine, not invoked from the repo.

- `new-client` — uv-shebang script (`#!/usr/bin/env -S uv run --script`) with PEP 723 inline dependencies. Creates a Google Drive folder for a new customer, copies a Docs proposal template into it, replaces `__CUSTOMER__` placeholder, and creates a shortcut. Reads OAuth client secrets from `/Users/tomliptrot/gcloud_credentials.json` and caches the user token at `/Users/tomliptrot/token.json`. Hard-coded Drive IDs (`TEMPLATE_FILE_ID`, `PARENT_FOLDER_ID`, `SHORTCUTS_FOLDER_ID`) at the top of the file. Invoked as `new-client "Customer Name"`.
- `duotone` — uv-shebang script that applies a duotone effect to an image and pastes random pixel overlays from a `pixels/` folder. Depends on `duotone` (from `github.com/carloe/duotone-py`) and `typer`. Light/dark colour values are hard-coded in `process_image`.

When adding a new script: place it in `scripts/`, make it executable, prefer the `uv run --script` shebang for Python so dependencies stay self-contained, and add a copy line to `create.sh` so it round-trips. `setup.sh` already copies everything in `scripts/` to `~/.local/bin/` and chmods +x, so no per-script edit there.

## Conventions worth knowing

- Python on this machine is `uv`-managed. `.zshrc` aliases `python`/`python3` to `uv run python`; new Python scripts should use the `uv run --script` shebang pattern shown in `scripts/new-client`.
- `.gitconfig` sets `pull.rebase = true` and `push.autoSetupRemote = true` — pulls rebase by default and first pushes auto-create the upstream.
- `setup.sh` is mostly idempotent: `chsh` is guarded by a shell check and copies use `mkdir -p`. `xcode-select --install` and the Homebrew installer print harmless errors on re-run.
