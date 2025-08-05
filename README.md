# iPhone Settings Replica

A Flutter UI replica of the iPhone Settings screen using only Cupertino widgets. This project focuses purely on front-end implementation and demonstrates iOS-style design without using any Material components.

## 📱 Features

- Built 100% with Cupertino widgets (no Material widgets used)
- iOS-style layout with grouped settings sections
- Custom tile widgets for:
  - Toggle switches
  - Icons and images as leading widgets
  - Trailing text labels and arrows
- Uses `CupertinoListTile`, `CupertinoListSection`, `CupertinoSwitch`, and `CupertinoPageScaffold`

## 📸 UI Preview

> This app replicates the visual look of iOS Settings. It includes:
- Profile section with circular avatar
- Search bar with always-visible mic icon
- Multiple settings categories (Airplane Mode, Wi-Fi, Bluetooth, etc.)
- Both icon-based and image-based list tiles
- Toggle buttons for options like Airplane Mode

## 🛠 Project Structure
```
lib/
├── main.dart
└── settings_page.dart // Main UI with all sections and reusable tile builders
assets/
├── profile.png
├── accessibility.png
├── apps.png
├── switch.png
├── password.png
└── privacy.png
```
## 🧪 Getting Started

```bash
git clone https://github.com/SainediAmbika/iPhoneSettingsReplica.git
cd iPhoneSettingsReplica
flutter pub get
flutter run