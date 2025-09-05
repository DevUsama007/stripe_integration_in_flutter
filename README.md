# Flutter Stripe Integration 💳

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev)
[![Stripe](https://img.shields.io/badge/Stripe-API-blueviolet.svg)](https://stripe.com/docs/api)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A **Flutter project** demonstrating how to integrate **Stripe Payments** using the [`flutter_stripe`](https://pub.dev/packages/flutter_stripe) package with a secure backend.  

---

## ✨ Features
- Stripe **PaymentIntent API** integration  
- Flutter **Payment Sheet** for easy checkout  
- Secure backend communication (Node.js / Firebase example)  
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

git clone https://github.com/your-username/flutter-stripe-integration.git
cd flutter-stripe-integration

### 2️⃣ Install dependencies
flutter pub get

### 3️⃣ Setup Backend

Use the provided Node.js or Firebase Functions example to create a PaymentIntent.

Add your Stripe Secret Key in the backend.

Start your backend server (e.g., http://localhost:3000).

### 4️⃣ Update Flutter App

Add your Stripe Publishable Key in Flutter:

Stripe.publishableKey = "pk_test_...";

---
### 🧪 Test Cards
| Card Number           | Description           |
| --------------------- | --------------------- |
| `4242 4242 4242 4242` | ✅ Successful payment  |
| `4000 0000 0000 0002` | ❌ Declined payment    |
| `4000 0027 6000 3184` | 🔒 3D Secure required  |
