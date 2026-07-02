<div align="center">

# 🐙 GitHub Repository REST API Client

**A SwiftUI sample app that fetches GitHub repository data from the REST API using modern Swift concurrency.**

![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey?style=flat-square)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square)
![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/Rest-API-Endpoints-for-GitHub-Repository?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/Rest-API-Endpoints-for-GitHub-Repository?style=flat-square&color=4776E6)

</div>

## 📖 Overview

This project is a compact SwiftUI reference app that demonstrates how to consume the [GitHub REST API](https://docs.github.com/en/rest) with async/await. It calls the `/repos/{owner}/{repo}` endpoint, decodes the JSON response into a typed model, and displays the repository's owner avatar, owner login, and repository name. The networking layer is built around an `actor`-based service, a type-safe `Endpoint` enum, and a clean MVVM structure, making it a practical starting point for any GitHub-backed iOS app.

## ✨ Features

- 🌐 Fetches repository data from the GitHub REST API (`api.github.com/repos/{owner}/{repo}`).
- ⚡ Uses modern Swift concurrency (`async/await`) with an `actor`-isolated `GithubService`.
- 🧩 Type-safe request routing via an `Endpoint` enum and a generic, `Decodable`-driven service method.
- 🏗️ MVVM architecture with a `@MainActor` view model publishing state to the SwiftUI view.
- 🖼️ Displays the owner avatar with `AsyncImage`, including a placeholder while loading.
- 🛡️ Structured error handling through a dedicated `NetworkError` type (invalid URL, response, status code, and decoding failures).

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/Rest-API-Endpoints-for-GitHub-Repository.git
cd "Rest-API-Endpoints-for-GitHub-Repository"
open "GitHub Repository with Rest API.xcodeproj"
```

Then select an iOS Simulator (or a connected device) and press **⌘R** to build and run.

## 📋 Requirements

- iOS 18.0 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
