# Add to Order Screen Feature

This Flutter module implements the "Add these products to the order" feature for the meatfacture-mobile app.

---

## 📱 Feature Overview

A clean and adaptive screen that shows 3–5 recommended products and allows users to add them to their order with visual feedback.

### UI Elements:
- AppBar with title `"Add to order"` and a back button
- Scrollable list of recommended products
- Each product includes:
  - Image
  - Name
  - Price
  - “Add” button → changes to “Added” when tapped

---

## ⚙️ Technical Stack

- **Flutter SDK**: 3.x
- **Architecture**: Stateless screen, Provider for state management
- **UI**: Material 3 with responsive layout
- **Code Quality**:
  - Uses `const` constructors
  - Avoids hardcoded styles (uses ThemeData)
  - Fully compliant with `flutter analyze`

---

## 📂 Folder Structure

```plaintext
lib/
├── main.dart
├── models/
│   └── product_model.dart
├── providers/
│   └── product_provider.dart
├── screens/
│   └── add_to_order_screen.dart
├── widgets/
    └── ass_button.dart
    └── empty_products_view.dart
    └── product_card.dart
    └── product_image.dart
    └── product_info.dart