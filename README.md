# BooklyMVVM

A Flutter application following the MVVM (Model-View-ViewModel) architecture pattern. **BooklyMVVM** is a modern book app that provides users with book listings, details, and search functionality.

## Features

- **Clean Architecture**: Implements MVVM for better separation of concerns.
- **API Integration**: Fetches book data from an external API.
- **State Management**: Uses `Cubit` for managing application state.
- **Search Page**: Allows users to search for books easily.
- **Responsive UI**: Designed to be adaptive to different screen sizes.
- **Caching**: Implements caching for improved performance.
- **Error Handling**: Provides error messages for failed API calls.
- **Dependency Injection**: Uses `get_it` for managing dependencies.
- **Animations**: Implements animations in the splash screen.
- **Book Preview**: Uses `url_launcher` to open book previews in a web browser.
## Technologies Used

- **Flutter** (Dart)
- **Cubit** (State Management)
- **Dio** (HTTP Requests)
- **GoRouter** (Navigation)
- **GetIt** (Dependency Injection)

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/1-abdelrahman-khalil-1/BooklyMVVM.git
   ```
2. Navigate to the project directory:
   ```sh
   cd BooklyMVVM
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## Project Structure

```
lib/
│── core/            # Core utilities & configurations
│── data/            # Data layer (models, repositories, API)
│── presentation/    # UI Layer (screens, widgets, viewmodels)
│── main.dart        # Entry point of the application
```

## Screenshots
<img src = "https://github.com/user-attachments/assets/bf9e4666-06dc-4977-8440-4cb4aee950e1" width = 300 height = 500 alt = "Screenshot">

<img src = "https://github.com/user-attachments/assets/c379d7d1-debf-41d4-8cc8-e5d159ab9498" width = 300 height = 500 alt = "Screenshot">

<img src = "https://github.com/user-attachments/assets/40c87650-2283-49c9-a860-c67b5a2d66ce" width = 300 height = 500 alt = "Screenshot">


## Contribution

Contributions are welcome! Feel free to submit issues or pull requests.

## License

This project is open-source and available under the [MIT License](LICENSE).

---
