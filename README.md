# Flutter Stripe Integration 💳

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev)
[![Stripe](https://img.shields.io/badge/Stripe-API-blueviolet.svg)](https://stripe.com/docs/api)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A **Flutter project** demonstrating how to integrate **Stripe Payments** using the [`flutter_stripe`](https://pub.dev/packages/flutter_stripe) package with a secure backend.  

---

## ✨ Features
- Stripe **PaymentIntent API** integration  
- Flutter **Payment Sheet** for easy checkout  
- Support for **test mode** using Stripe test cards  
- Clean and simple project structure  

---
<!-- 
## 📸 Screenshots
> *(Add your app screenshots here)*  
<p align="center">
  <img src="screenshots/payment_flow.png" width="250">
  <img src="screenshots/payment_sheet.png" width="250">
</p>

--- -->

## 🛠️ Tech Stack
- **Frontend:** Flutter, Dart, [`flutter_stripe`](https://pub.dev/packages/flutter_stripe)  
- **Backend:** Node.js (Express) / Firebase Functions (example provided)  
- **Payments:** Stripe API (Test & Live Mode)  

---

## 🚀 Getting Started

### 1️⃣ Clone the repo

git clone https://github.com/your-username/stripe_integration_in_flutter.git
cd flutter-stripe-integration

### 2️⃣ Install dependencies
flutter pub get

### 3️⃣ Setup

minSdk 21 'required'


---
### 🧪 Test Cards
| Card Type  | Number                | Expiry | CVC | Description                            |
| ---------- | --------------------- | ------ | --- | -------------------------------------- |
| Visa       | `4242 4242 4242 4242` | 12/34  | 123 | Always succeeds                        |
| Mastercard | `5555 5555 5555 4444` | 12/34  | 123 | Always succeeds                        |
| 3D Secure  | `4000 0027 6000 3184` | 12/34  | 123 | Requires authentication (3DS)          |
| Declined   | `4000 0000 0000 9995` | 12/34  | 123 | Always fails with "insufficient funds" |

---

### 💡 Contributing

Pull requests are welcome! Feel free to open an issue to discuss improvements.

---

## ⭐ Support

If you find this project helpful, please give it a ⭐ on GitHub!