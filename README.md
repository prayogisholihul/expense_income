# Expense/Income Tracker Application

[Watch Demo Video](https://drive.google.com/file/d/1W56VTordsX9zHZuMmLFRODYPkISlm6uC/view?usp=sharing)
[File APK](https://drive.google.com/drive/folders/1cvB5Z3vP7YpPqEj8SN9ZQZoNRRQtb_mE?usp=sharing)

## Overview

This Flutter application allows users to manage their expenses and income. The app provides functionalities for creating, reading, updating, and deleting (CRUD) transactions. Additionally, it offers a feature to convert USD currency and suggests random activities as busywork.

## Features

- **Expense/Income Management (CRUD)**
    - Create, Read, Update, and Delete transactions.
- **USD Currency Conversion**
    - Convert to USD.
- **Random Activity Busywork**
    - Suggests random activities to keep users busy.

## Architecture

The application follows a clean architecture design pattern which includes the following layers:

### 1. Data Source (Remote/Local)

#### Remote Data Source
- Handles data fetching from network services (e.g., REST APIs).
- Utilizes the `dio` library for HTTP requests.

#### Local Data Source
- Manages data from local storage solutions.
- Uses `sqflite` for SQLite database management.

### 2. Repository

- Acts as an intermediary between data sources and the rest of the application.
- Abstracts the data layer, providing a clean API for data access.
- Can combine and process data from multiple data sources.

### 3. Presenter (Using Riverpod)

- Manages state and business logic.
- `Riverpod` is used for state management, providing a robust and simple way to handle state and dependency injection in Flutter applications.

### 4. Screen/UI

- The visual layer of the application where users interact with the app.
- Utilizes the state and business logic provided by the Presenter.

## Libraries Used

- **UUID**: Generates unique identifiers.
- **Google UUID**: Provides UUID generation capabilities.
- **sqflite**: A plugin for SQLite database management in Flutter.
- **Riverpod**: A state management library for managing state and dependencies.
- **Dio**: A powerful HTTP client for Dart, used for making network requests.
