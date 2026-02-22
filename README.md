# Homebrew Tap for Jam CLI

Official [Homebrew](https://brew.sh) tap for **[Jam CLI](https://github.com/sunilp/jam-cli)** — the developer-first AI assistant for the terminal.

## Install

```bash
brew tap sunilp/tap
brew install jam-cli
```

## Verify

```bash
jam --version
jam doctor
```

## Upgrade

```bash
brew update
brew upgrade jam-cli
```

## Uninstall

```bash
brew uninstall jam-cli
brew untap sunilp/tap   # optional: remove the tap
```

## What is Jam?

Jam is a privacy-first AI coding assistant that runs entirely in your terminal. It supports Ollama, OpenAI, Groq, and any compatible LLM provider.

- Ask questions, explain code, review diffs, generate patches
- Agentic task execution with local tool calling
- Multi-turn chat with session history
- Runs locally by default — your code never leaves your machine

For full documentation, see the [Jam CLI repository](https://github.com/sunilp/jam-cli).

## Alternative Installation Methods

```bash
# npm (global)
npm install -g @sunilp-org/jam-cli

# npx (one-shot, no install)
npx @sunilp-org/jam-cli doctor
```

## Updating the Formula

When a new version of Jam CLI is published to npm:

1. Get the new tarball URL and sha256:

```bash
VERSION=0.1.2  # set to new version
curl -sL "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-${VERSION}.tgz" | shasum -a 256
```

2. Update `Formula/jam-cli.rb`:
   - Change the `url` to point to the new version
   - Update the `sha256` checksum

3. Commit and push:

```bash
git commit -am "jam-cli ${VERSION}"
git push
```

## License

MIT — see [Jam CLI LICENSE](https://github.com/sunilp/jam-cli/blob/main/LICENSE).
