<div align="center">

# ✈️ Mini_Project_1_PAB  

### 🌍 Travel Itinerary Planner Application  
💙 Flutter Mobile App Project  

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:3A4F7A,100:2EC4B6&height=180&section=header&text=Travel%20Itinerary%20App&fontSize=30&fontColor=ffffff" />

<br>

![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Language-Dart-0175C2?style=for-the-badge&logo=dart)

</div>

---

# 👩‍💻 Created By

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

Saat traveling, banyak orang sering merasa jadwalnya berantakan dan bingung menentukan tujuan karena tidak terorganisir dengan baik. Biasanya rencana perjalanan hanya ditulis di buku kecil atau notes biasa yang kurang praktis.

Travel Itinerary App dibuat untuk membantu pengguna mengatur rencana perjalanan dengan lebih mudah dan terstruktur. Pengguna cukup menambahkan daftar itinerary, mengubah status jika sudah planned atau selesai, dan semua data dapat dilihat dengan tampilan yang rapi serta mudah dipahami.

Fitur utama aplikasi ini meliputi:
- Menambahkan itinerary
- Mengedit itinerary
- Menghapus itinerary
- Melihat detail itinerary
- Memfilter berdasarkan status (All, Planned, Done)

Aplikasi ini menerapkan konsep StatefulWidget, StatelessWidget, Navigator, dan manajemen state menggunakan setState().

---

# 🎨 Dokumentasi Tampilan Aplikasi

---

<details>
<summary>🏠 1. Tampilan Home Page</summary>

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/be5058b7-cb09-4031-9993-e3e810deec33" width="300" style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Penjelasan:</b>  
Halaman utama menampilkan daftar itinerary yang telah ditambahkan.  
Terdapat header dengan gradient warna, filter status menggunakan ChoiceChip, serta Floating Action Button untuk menambah itinerary baru.

Halaman ini merupakan Home Page dari aplikasi. Pada halaman ini nantinya akan ditampilkan daftar itinerary yang telah ditambahkan oleh pengguna menggunakan ListView.builder.
Tersedia fitur filter status menggunakan ChoiceChip untuk menampilkan itinerary berdasarkan kategori All, Planned, atau Done.
Untuk menambahkan itinerary baru, pengguna dapat menekan tombol + di pojok kanan bawah yang dibuat menggunakan FloatingActionButton, lalu akan diarahkan ke halaman form menggunakan Navigator.push().
Tampilan header menggunakan Container dengan BoxDecoration dan LinearGradient untuk memberikan kesan modern pada aplikasi.

</div>

</details>

---

<details>
<summary>📝 2. Tampilan Form Tambah Itinerary</summary>

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/a5d65a82-0eb5-437e-b13b-564878504ffb" width="300" style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Penjelasan:</b>  
Halaman ini digunakan untuk menginput data itinerary.  
Menggunakan TextField untuk tanggal, waktu, aktivitas dan DropdownButtonFormField untuk memilih status perjalanan.

Halaman ini merupakan Form Tambah Itinerary yang digunakan untuk menginput data perjalanan baru.
Pengguna dapat mengisi Hari/Tanggal, Waktu, dan Aktivitas menggunakan TextField, serta memilih Status perjalanan (Planned/Done) melalui DropdownButtonFormField.
Setelah semua data diisi, pengguna dapat menekan tombol Simpan untuk menyimpan itinerary.
Data kemudian akan dikirim kembali ke Home Page menggunakan Navigator.pop() dan ditampilkan dalam daftar itinerary. Form ini juga menggunakan TextEditingController untuk mengelola input dan setState() untuk memperbarui tampilan ketika data berubah.

</div>

</details>

---

<details>
<summary>📄 3. Tampilan Detail Itinerary</summary>

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/98ca670c-1397-46bf-9fdb-eea956faaf87" width="300" style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Penjelasan:</b>  
Halaman detail menampilkan informasi lengkap dari itinerary yang dipilih.  
Data dikirim dari HomePage melalui Navigator.push().

</div>

</details>

---

<details>
<summary>✏️ 4. Fitur Edit Itinerary</summary>

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/b116d861-8adc-4a2a-bd4f-c9390531efbf" width="300" style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Penjelasan:</b>  
Fitur edit memungkinkan pengguna memperbarui data itinerary yang sudah ada.  
Data lama akan otomatis terisi pada form karena menggunakan TextEditingController dan initState().

Halaman ini menampilkan daftar itinerary yang sudah ditambahkan. Setiap item ditampilkan dalam bentuk card yang berisi hari/tanggal, waktu, aktivitas, serta status perjalanan (Planned/Done).Untuk memperbarui data, pengguna dapat menekan icon pena (✏️) pada bagian kanan card. Data lama akan otomatis terisi di halaman form karena menggunakan TextEditingController dan diinisialisasi melalui initState(). Setelah perubahan disimpan, data akan diperbarui menggunakan setState() sehingga tampilan daftar langsung berubah tanpa perlu memuat ulang halaman.


<img width="524" height="599" alt="image" src="https://github.com/user-attachments/assets/7875c108-3c98-4b54-9221-b384a1bb762d" />

<br><br>

<b>Tampilan setelah di edit:</b>  

Setelah melakukan edit dan klik simpan, daftar akan berubah sesuai input yang dimasukkan saat mengedit. Contohnya pada tampilan di atas mengubah aktifitas "Berenang" menjadi "Breakfast"


</div>

</details>

---

<details>
<summary>🗑️ 5. Fitur Delete Itinerary</summary>

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/38bbabf6-a470-451f-921c-b328d007e057" width="300" style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Penjelasan:</b>  
Fitur delete memungkinkan pengguna menghapus itinerary dari daftar.  
Data dihapus dari List menggunakan removeAt() dan tampilan diperbarui dengan setState().

Fitur delete memungkinkan pengguna menghapus itinerary yang sudah tidak diperlukan dari daftar. Untuk menghapus data, pengguna dapat menekan icon tempat sampah (🗑️) yang terdapat pada setiap card itinerary. Data akan dihapus dari List menggunakan method removeAt(), kemudian tampilan akan diperbarui dengan setState() sehingga daftar itinerary pada Home Page langsung berkurang secara otomatis tanpa perlu refresh aplikasi.

</div>

</details>

---

<details>
<summary>🔎 6. Filter Status (All / Planned / Done)</summary>

<br>

<div align="center">

<img src="https://github.com/user-attachments/assets/9f7e62c2-9905-4eb1-88ca-4b93a433747c" width="300" style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Penjelasan:</b>  
Filter menggunakan ChoiceChip untuk memisahkan itinerary berdasarkan status.  
Filtering dilakukan dengan method getFilteredList().

</div>

</details>

---

# 🗂 Struktur Folder Project

<details>
<summary>🚀 Klik untuk melihat struktur folder</summary>

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
```
</details>

---

# 🎯 Fitur Aplikasi

<details>
<summary>🚀 Klik untuk melihat fitur aplikasi</summary>

<br>

Aplikasi Travel Itinerary ini memiliki fitur sebagai berikut:

- ✅ **Tambah Itinerary Baru**  
  Pengguna dapat menambahkan rencana perjalanan melalui Form Page.

- ✅ **Edit Itinerary**  
  Data itinerary yang sudah ada dapat diperbarui menggunakan fitur edit.

- ✅ **Hapus Itinerary**  
  Itinerary dapat dihapus dari daftar dengan tombol delete.

- ✅ **Filter Berdasarkan Status**  
  Menggunakan ChoiceChip untuk memfilter data berdasarkan:
  - All
  - Planned
  - Done

- ✅ **Detail Itinerary**  
  Menampilkan informasi lengkap dari itinerary yang dipilih.

- ✅ **Snackbar Notifikasi**  
  Menampilkan notifikasi ketika data berhasil disimpan.

- ✅ **UI Modern dengan Gradient Header**  
  Tampilan menggunakan kombinasi warna Dark Blue, Tosca, dan Soft Orange.

</details>

---

# 🧩 Widget yang Digunakan

<details>
<summary>🛠 Klik untuk melihat daftar widget</summary>

<br>

Berikut adalah widget yang digunakan dalam pengembangan aplikasi ini:

### 📌 Root & Struktur Dasar
- `MaterialApp`
- `Scaffold`
- `SafeArea`

### 📌 Layouting
- `Column`
- `Row`
- `Container`
- `Padding`
- `SizedBox`
- `Expanded`

### 📌 List & Interaksi
- `ListView.builder`
- `GestureDetector`
- `FloatingActionButton`
- `IconButton`

### 📌 Input & Form
- `TextField`
- `DropdownButtonFormField`
- `TextEditingController`

### 📌 Navigasi & State
- `Navigator`
- `StatefulWidget`
- `StatelessWidget`
- `setState()`

</details>

---

# 📲 Cara Menggunakan Aplikasi

<details>
<summary>✨ Klik untuk melihat cara penggunaan</summary>

<br>

Berikut langkah-langkah penggunaan aplikasi:

1️⃣ Buka aplikasi  
2️⃣ Tekan tombol ➕ pada pojok kanan bawah  
3️⃣ Isi data itinerary (Tanggal, Waktu, Aktivitas)  
4️⃣ Pilih status perjalanan (Planned / Done)  
5️⃣ Klik tombol **Simpan**  
6️⃣ Data akan muncul pada halaman utama  
7️⃣ Gunakan filter (All / Planned / Done) jika ingin menyaring data  
8️⃣ Klik salah satu itinerary untuk melihat detail  
9️⃣ Gunakan tombol Edit atau Delete sesuai kebutuhan  

</details>

---

# 📌 Kesimpulan

<details>
<summary>📖 Klik untuk melihat kesimpulan</summary>

<br>

Melalui Mini Project ini, saya mempelajari:

- 🔹 Penggunaan **StatefulWidget & StatelessWidget**
- 🔹 Navigasi antar halaman menggunakan **Navigator.push() & pop()**
- 🔹 Manajemen state menggunakan **setState()**
- 🔹 Implementasi dynamic list dengan **ListView.builder**
- 🔹 Penggunaan **TextEditingController** untuk form input
- 🔹 Implementasi filter data menggunakan **ChoiceChip**
- 🔹 Pembuatan UI modern menggunakan **Container, Gradient, dan BoxDecoration**

 

</details>

---

<div align="center">

✨ Terima kasih telah melihat dokumentasi project ini ✨  
💙 Mini_Project_1_PAB - Travel Itinerary App 💙

</div>
