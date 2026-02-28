
<div align="center">

# ✈️ Mini_Project_1_PAB  

### 🌍 Travel Itinerary Planner Application  
💙 Flutter Mobile App Project  

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:3A4F7A,100:2EC4B6&height=180&section=header&text=Travel%20Itinerary%20App&fontSize=30&fontColor=ffffff" />

<br>

![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Language-Dart-0175C2?style=for-the-badge&logo=dart)
![UI Design](https://img.shields.io/badge/UI-Modern%20Design-FFBF69?style=for-the-badge)
![Project](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

</div>

---

# 👩‍💻 Created By:

<div align="center">

| 🧾 Informasi | 📌 Detail |
|--------------|-----------|
| **Nama** | Tsabitah Kawiswara |
| **Kelas** | Sistem Informasi C |
| **NIM** | 2409116099 |
| **Mata Kuliah** | Pemrograman Aplikasi Bergerak (PAB) |

</div>

---

# 📱 Travel Itinerary App

## 🌟 Overview

Travel Itinerary App adalah aplikasi mobile berbasis **Flutter** yang dirancang untuk membantu pengguna dalam menyusun dan mengelola rencana perjalanan secara terorganisir dan interaktif.

Aplikasi ini memungkinkan pengguna untuk mencatat jadwal perjalanan lengkap dengan tanggal, waktu, aktivitas, serta status perjalanan (Planned atau Done). Dengan sistem filtering dan navigasi antar halaman, pengguna dapat mengelola itinerary dengan lebih efisien.

Aplikasi dikembangkan menggunakan konsep:

- 🔹 Stateful & Stateless Widget
- 🔹 Navigasi antar halaman (Navigator.push & pop)
- 🔹 Manajemen state menggunakan setState()
- 🔹 Dynamic List dengan ListView.builder
- 🔹 UI Modern dengan Gradient dan Custom Styling

---

# 🎨 Tampilan Aplikasi

📸 TARO SCREENSHOT HOMEPAGE DI SINI  

📸 TARO SCREENSHOT FORM PAGE DI SINI  

📸 TARO SCREENSHOT DETAIL PAGE DI SINI  

---

# 🗂 Struktur Folder Project

```bash
lib/
│
├── models/
│   └── itinerary_model.dart
│
├── pages/
│   ├── home_page.dart
│   ├── form_page.dart
│   └── detail_page.dart
│
└── main.dart

## 🎯 Fitur Aplikasi

<details>
<summary>🚀 Klik untuk melihat fitur</summary>

Berikut fitur yang tersedia dalam aplikasi:

- ✅ Tambah itinerary baru
- ✅ Edit itinerary
- ✅ Hapus itinerary
- ✅ Filter itinerary berdasarkan status
- ✅ Tampilan detail itinerary
- ✅ Snackbar notifikasi saat menyimpan data
- ✅ Tampilan modern dengan gradient header
- ✅ Floating Action Button untuk tambah data

</details>

---

## 🧩 Widget yang Digunakan

<details>
<summary>🛠 Klik untuk melihat daftar widget</summary>

Berikut widget yang digunakan dalam project ini:

- `MaterialApp`
- `Scaffold`
- `AppBar`
- `SafeArea`
- `Column`
- `Row`
- `Container`
- `Text`
- `Icon`
- `IconButton`
- `FloatingActionButton`
- `ListView.builder`
- `GestureDetector`
- `SnackBar`
- `ChoiceChip`
- `DropdownButtonFormField`
- `TextField`
- `SizedBox`
- `Padding`
- `Expanded`
- `SingleChildScrollView`
- `Navigator`
- `StatefulWidget`
- `StatelessWidget`

</details>

---

# 🧠 Penjelasan Struktur dan Implementasi Kode

---

## 📦 1. Model Data (itinerary_model.dart)

<details>
<summary>📌 Klik untuk melihat penjelasan model</summary>

```dart
class Itinerary {
  String tanggal;
  String waktu;
  String aktivitas;
  String status;
}
