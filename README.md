# Mini App Task

A minimal Flutter application using BLoC and Clean Architecture to manage and display a list of items with favorite toggling.

> This is a challenge by Coodesh

## Features

- ✅ Display list of items with their creation date and colored tags.
- ❤️ Toggle items as favorites.
- 📦 Layered architecture with `data`, `domain`, and `presentation`.
- 📡 Repository pattern with `ItemApi` abstraction.
- 🚀 Flutter BLoC for state management.

## Tech Stack

- Flutter 3.29.0 (via FVM)
- BLoC
- Clean Architecture

## Getting Started

### Prerequisites

- Install [Flutter](https://docs.flutter.dev/get-started/install)
- Install [FVM](https://fvm.app/docs/getting_started/installation/)

### Install Dependencies

```bash
fvm use 3.29.0
fvm flutter pub get
```

### Run App

```bash
fvm flutter run
```

## Folder Structure

```
lib/
├── core/             # Shared widgets
├── data/             # Data layer (models, APIs)
├── domain/           # Business logic layer(repositories)
├── presentation/     # UI layer (pages, blocs)
```

## State Management

Uses `flutter_bloc` for managing UI state via:

- `ItemsBloc`: Fetch and update items list
- Events: `getItems`, `saveFavorite`
- States: `loading`, `success`, `failure`

## Sample UI

- List of items with their title and creation date
- Favorite icon toggle (red heart for favorited)

---

Made with ❤️ using Clean Architecture principles.
