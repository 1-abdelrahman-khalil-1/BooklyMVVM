# BooklyMVVM

A Flutter application following the MVVM (Model-View-ViewModel) architecture pattern. **BooklyMVVM** is a modern book app that provides users with book listings, details, and search functionality.

## Features

- **Clean Architecture**: Implements MVVM for better separation of concerns.
- **API Integration**: Fetches book data from an external API.
- **State Management**: Uses `Cubit` for managing application state.
- **Responsive UI**: Designed to be adaptive to different screen sizes.
- **Caching**: Implements caching for improved performance.
- **Error Handling**: Provides error messages for failed API calls.
- **Dependency Injection**: Uses `get_it` for managing dependencies.
## Technologies Used

- **Flutter** (Dart)
- **Cubit** (State Management)
- **Dio** (HTTP Requests)
- **GoRouter** (Navigation)

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

![Screenshot 2025-02-03 222632](https://github.com/user-attachments/assets/32dcd8c8-e1cf-4262-9a75-c2142f5f0f89)
![Screenshot 2025-02-03 222433](https://github.com/user-attachments/assets/40c87650-2283-49c9-a860-c67b5a2d66ce)

## Contribution

Contributions are welcome! Feel free to submit issues or pull requests.

## License

This project is open-source and available under the [MIT License](LICENSE).

---
