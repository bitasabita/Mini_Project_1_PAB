
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

Travel Itinerary App adalah aplikasi yang dirancang untuk membantu pengguna mengatur rencana perjalanan secara lebih terstruktur dan efisien.
Saat melakukan perjalanan, banyak orang mengalami kesulitan dalam menyusun jadwal karena perencanaan yang kurang terorganisir. Umumnya, itinerary hanya dicatat pada buku kecil atau aplikasi catatan sederhana yang kurang praktis dan tidak terstruktur dengan baik.

Aplikasi ini hadir sebagai solusi dengan menyediakan fitur pengelolaan itinerary yang mudah digunakan, sehingga pengguna dapat menyusun, mengelola, dan memantau rencana perjalanan mereka dalam satu tampilan yang rapi dan informatif.

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

<img src="https://github.com/user-attachments/assets/bf183c95-42aa-4d0a-a37f-db9cface465e" 
width="300" 
style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />
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


<img src="https://github.com/user-attachments/assets/7875c108-3c98-4b54-9221-b384a1bb762d" 
width="300" 
style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />


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
<img src="https://github.com/user-attachments/assets/3ff56c5e-4c32-4785-945e-9b6e6b968a54" 
width="300" 
style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

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

<!-- FILTER ALL -->
<img src="https://github.com/user-attachments/assets/190b2b4e-91cf-4ce1-9a05-587ef68849c6" 
width="300" 
style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />


<br><br>

<b>Filter: All</b><br>
Menampilkan seluruh itinerary tanpa memfilter status.<br>
Semua data dengan status <b>Planned</b> maupun <b>Done</b> akan ditampilkan.

<br><br><br>

<!-- FILTER PLANNED -->
<img src="https://github.com/user-attachments/assets/fdcbaea4-63e7-465f-a5a8-aa11a245f7a1" 
width="300" 
style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Filter: Planned</b><br>
Menampilkan itinerary dengan status <b>Planned</b> saja.<br>
Fitur ini membantu pengguna melihat daftar perjalanan yang masih direncanakan.

<br><br><br>

<!-- FILTER DONE -->
<img src="https://github.com/user-attachments/assets/d72c97af-152b-4391-a3e7-ceaa71dde7d5" 
width="300" 
style="border-radius:20px; box-shadow:0 4px 15px rgba(0,0,0,0.2);" />

<br><br>

<b>Filter: Done</b><br>
Menampilkan itinerary yang sudah selesai dilakukan.<br>
Pengguna dapat dengan mudah memisahkan perjalanan yang telah selesai dari yang masih direncanakan.

<br><br><br>

<!-- UPDATE STATUS -->

<br><br>

<b>Update Status Itinerary</b><br>
Ketika pengguna mengedit itinerary dan mengubah status menjadi <b>Planned</b> atau <b>Done</b>,<br>
data akan diperbarui menggunakan <code>setState()</code> dan langsung menyesuaikan dengan filter yang aktif.<br>
Dengan demikian, pengguna dapat melihat perubahan status secara real-time tanpa perlu memuat ulang halaman.

</div>

<br>

<b>Implementasi Teknis:</b><br>

- Filter menggunakan widget <code>ChoiceChip</code>  
- Proses penyaringan data dilakukan melalui method <code>getFilteredList()</code>  
- Pembaruan tampilan menggunakan <code>setState()</code>  
- List ditampilkan menggunakan <code>ListView.builder</code>  

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
  Itinerary dapat dihapus dari daftar dengan tombol icon tempat sampah (hapus).

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

