# Notely for Homebrew

Install Notely on macOS 15 or later (Apple silicon and Intel):

```sh
brew install --cask adeydas/notely/notely
```

Download and update files are served by [Notely](https://notelyapp.ca). The cask pins an exact signed, notarized installer and verifies its checksum.

Notely can update itself through **Notely → Check for Updates**. To upgrade explicitly with Homebrew:

```sh
brew update
brew upgrade --cask --greedy adeydas/notely/notely
```

Existing installations that used the old update service need a one-time replacement using the website installer. Your workspace stays in its existing folder.

Releases are published manually after website download and Sparkle feed checks pass. This repository contains distribution metadata only. See [installation help](https://notelyapp.ca/help/install-and-activate).
