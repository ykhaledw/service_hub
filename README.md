# Service Marketplace App

A modern Flutter application that allows users to browse services, create service requests, and communicate with service providers in a clean and scalable architecture.

## 📱 Overview

This app simulates a real-world service marketplace where users can:

- Browse available services (e.g., plumbing, electrical, delivery)
- Create and manage service orders
- Communicate with service providers
- Manage their profile and account

The project focuses on building a production-level Flutter application with clean architecture and scalable code structure.

## ✨ Features

## 🔐 Authentication
    - Login & Register
    - Form validation
    - Token handling (local storage)
    - Error handling

## 🏠 Services
    - Services listing
    - Search & filtering
    - Pagination (infinite scroll)

## 📦 Orders
    - Create new order
    - Track order status (Pending / Active / Completed)
    - View order details

## 💬 Chat
    - Chat between user and service provider
    - Message list & conversation UI

## 👤 Profile
    - View and edit profile
    - Settings


## 🧱 Architecture

This project follows a simplified Clean Architecture approach:

## Presentation Layer
    - UI + State Management (Cubit)
## Domain Layer
    - Business logic (use cases)
## Data Layer
    - API services + models + repositories
    

## ⚙️ Tech Stack
    - Flutter
    - Dart
    - Cubit (State Management)
    - Dio (Networking)
    - SharedPreferences (Local Storage)

## 📂 Project Structure
    lib/
    │
    ├── core/
    │   ├── di/        
    │   ├── helpers/       
    │   ├── networking/        
    │   ├── routing/        
    │   ├── widgets/        
    │   └── theming/      
    │
    ├── features/
    │   └── feature_name/
    │       ├── data/
    │       │   ├── repositories/
    │       │   └── models/
    │       ├── logic/
    │       │   ├── cubit/
    │       │   └── states/
    │       └── ui/
    │           ├── screen/
    │           └── widgets/
    │
    |__ service_hub.dart
    └── main.dart


## ⭐ Notes

This project is built for learning and demonstrating real-world Flutter development skills, focusing on clean code, scalability, and production-ready practices.