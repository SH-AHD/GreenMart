# GreenMart - Fresh Grocery Mobile App

**GreenMart** is a modern, minimalist e-commerce mobile application built with **Flutter**. The app focuses on providing a seamless shopping experience for organic fruits and groceries, featuring clean UI/UX and solid architectural principles.

---

## Key Features

* **Product Browsing:** Explore a wide variety of fresh products with detailed descriptions.
* **Smart Favorites**: Advanced wishlist that allows users to Add/remove items and bulk-move all items to the cart with a single click, ensuring data synchronization between repositories with real-time UI updates.
* **Real-time Calculations**: Implementing dynamic price-quantity logic to reflect instant changes in the shopping cart total.
* **Smooth Navigation:** Intuitive user flow with custom transitions and route management.
* **Dynamic UI:** Responsive layouts that adapt to different screen sizes.

---

## Technical Stack & Skills Applied

As a **Computer and Information Science** Senior Student, I focused on applying industry-standard practices:

* **Flutter & Dart:** Leveraging the latest features for high-performance rendering.
* **Clean Code Principles:** Writing readable, maintainable, and reusable code.
* **OOP (Object-Oriented Programming):** Implementing classes, models, and encapsulation.
* **Singleton Pattern:** Used for global data management (e.g., `ShopRepository`).
* **State Management:** Managed local state efficiently using `StatefulWidgets` and callbacks (evolving towards Cubit/BLoC).

---

## Screenshots

| Splash Screen | Home Screen | Favorite System |
| :---: | :---: | :---: |
| <img width="250" alt="Splash Screen" src="https://github.com/user-attachments/assets/11411d98-a3de-47d4-9274-30fb4bff6709" /> | <img width="250" alt="Home Screen" src="https://github.com/user-attachments/assets/b9f2e4f6-33a6-4f30-8176-c2c2205bf1da" /> | <img width="250" alt="Favorite System" src="https://github.com/user-attachments/assets/be3ebf3e-2fad-4163-9a22-68d0ec1498e6" /> |


| Product Screen | Account Screen | Explore Screen |
| :---: | :---: | :---: |
| <img width="250" alt="Product Screen" src="https://github.com/user-attachments/assets/4b81e2d5-11b3-4289-94b6-25ac9518bc90" /> | <img width="250" alt="Account Screen" src="https://github.com/user-attachments/assets/7a616380-77ee-4d85-896f-0e31027cb7da" /> | <img width="250" alt="Explore Screen" src="https://github.com/user-attachments/assets/3191492b-bca6-4408-b9b5-4a8b2152c0de" /> |


---

## Video Demo
[Watch GreenMart in Action](https://drive.google.com/file/d/1XHUQ6KLeLRCdHWCbCLmyD-6l7zB6_YoK/view?usp=drive_link)

---

## Architecture

The project follows a modular structure to ensure scalability:
- `core/`: Constants, shared widgets, and global styles.
- `features/`: Separated modules for Shop, Favorites, Cart, and Account.
- `data/`: Models and Repositories (Singleton pattern).

---

## Environment & Setup

Developed on **Linux Mint**.

1.  **Clone the repo:**
    ```bash
      git clone https://github.com/SH-AHD/GreenMart.git
    ```
2.  **Get dependencies:**
    ```bash
    flutter pub get
    ```
3.  **Run the app:**
    ```bash
    flutter run
    ```

---

## Author
**Shahd Sameh (SH-AHD)**
* Computer and Information Science Senior Student.
* Passionate Flutter Developer.
