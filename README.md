# Vending Machine Inventory - *Mobile Version*
#### -- By Ravie Hasan Abud -- Deployed at http://ravie-hasan-tugas.pbp.cs.ui.ac.id/
<hr>

<details>

<summary> Tugas 7 </summary> 

## 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
- Stateful widget dapat memberikan respon terhadap perubahan data dan melakukan refresh page untuk memperbarui konten yang akan ditampilkan pada page tersebut.
- Stateless widget bersifat static dan tidak dapat diubah setelah page dibuat.
- Jadi, stateful widget lebih cocok apabila page mengandung komponen yang perlu memberikan respon terhadap request yang dapat menyebabkan perubahan data ataupun merespon terhadap input pengguna, sedangkan stateless widget lebih cocok untuk tipe page yang static (tidak terjadi refresh/perubahan konten page berulang kali). 
- Dalam konteks pengembangan aplikasi Flutter, keputusan kapan perlu menggunakan stateless atau stateful widget dapat memengaruhi kinerja aplikasi secara signifikan mengingat masing-masing memiliki karateristiknya sendiri. Dengan pemilihan yang tepat, aplikasi dapat berjalan dengan lebih efisien.

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.    
- `MyApp - StatelessWidget` => Sebuah StatelessWidget yang berfungsi sebagai app utama.
- `MaterialApp` => Untuk kustomisasi dasar aplikasi dengan design Material (theme, title, etc.).
- `ThemeData` => Untuk mengatur theme aplikasi (colorScheme, font, etc.).
- `MyHomePage - StatelessWidget` => Sebuah StatelessWidget yang berfungsi sebagai home page dari app.
- `Scaffold` => Untuk kustomisasi struktur dasar page app (appBar, body, etc.).
- `AppBar` => Untuk menampilkan section paling atas pada page.
- `Text` => Untuk menampilkan teks pada page.
- `TextStyle` => Untuk kustomisasi teks pada page (color, size, etc.).
- `SingleChildScrollView` => Sebuah widget wrapper yang dapat discroll apabila konten lebih besar dari ukuran screen.
- `Padding` => Untuk mengatur jarak (padding) di sekitar widget childnya.
- `Column` => Untuk mengatur widget childnya dalam kolom vertikal.
- `GridView.count` => Untuk mengatur widget childnya dalam bentuk grid sesuai banyak baris dan kolom yang diinginkan.
- `ShopCard - StatelessWidget` => Sebuah StatelessWidget untuk menampilkan ShopItem dalam bentuk card
- `Material` => Untuk kustomisasi design Material pada widget (elevation, color, etc.)
- `InkWell` => Untuk dapat memberikan respons ketika diklik (semacam button).
- `SnackBar` => Untuk menampilkan pesan sementara kepada pengguna.
- `Container` => Untuk mengatur tata letak widget.
- `Center` => Untuk mengubah posisi widget childnya ke tengah.
- `Icon` => untuk menampilkan icon yang diinginkan dan dapat dikustomisasi (seperti color, size, etc.).

## 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist secara step-by-step (bukan hanya sekadar mengikuti tutorial).

- [ ] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
    - Menjalankan command berikut pada cmd:
    ```bash
    flutter create vending_machine
    cd vending_machine
    flutter run
    ```

- [ ] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - Mengubah main.dart menjadi seperti di bawah ini agar home apge berada di menu.dart
    ```dart
    import 'package:flutter/material.dart';
    import 'package:vending_machine/menu.dart';

    void main() {
        runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
        const MyApp({super.key});

        // This widget is the root of your application.
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            title: 'Vending Machine',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
                useMaterial3: true,
            ),
            home: MyHomePage(),
            );
        }
    }
    ```

    - Menambahkan class ShopItem sebagai berikut pada menu.dart:
    ```dart
    class ShopItem {
        final String name;
        final IconData icon;

        ShopItem(this.name, this.icon);
    }
    ```
    - [ ] Melihat daftar item (Lihat Item)
        - Menambahkan `ShopItem("Lihat Item", Icons.checklist, Colors.black87),` sebagai tombol Lihat Item pada final List<ShopItem> items <br>
    - [ ] Menambah item (Tambah Item)
        - Menambahkan `ShopItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(255, 16, 57, 80))` sebagai tombol Tambah Item pada final List<ShopItem> items <br>
    - [ ] Logout (Logout)
        - Menambahkan `ShopItem("Logout", Icons.logout, const Color.fromARGB(255, 128, 34, 27)),` sebagai tombol Logout pada final List<ShopItem> items <br>
        
    - Sehingga, pada akhirnya menjadi:
    ```dart
    final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist, Colors.black87),
        ShopItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(255, 16, 57, 80)),
        ShopItem("Logout", Icons.logout, const Color.fromARGB(255, 128, 34, 27)),
    ];
    ```
    - Membuat class ShopCard yang akan menjadi StatelessWidget untuk ShopItem
    - Pada MyHomePage, ubah `({super.key, required this.title})` menjadi `({Key? key}) : super(key: key);`

- [ ] Memunculkan Snackbar dengan tulisan:
    - [ ] "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
    - [ ] "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
    - [ ] "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

    - Menambahkan potongan kode berikut pada function build ShopCard agar muncul SnackBar sebagai respon ketika button diklik. Tidak perlu membuat sebanyak 3 karena hanya perlu disesuaikan dengan attribute `name` dari masing-masing ShopItem.
    ```dart
    onTap: () {
        // Memunculkan SnackBar ketika diklik
        ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(
            content: Text("Kamu telah menekan tombol ${item.name}!")));
    },
    ```

<hr>

</details>