# Vending Machine Inventory - _Mobile Version_

#### _-- By Ravie Hasan Abud_

<hr>

<details>

<summary>Tugas 9</summary>

## 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

## 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa _instance_ CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

## 3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

## 4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

## 5. Sebutkan seluruh _widget_ yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

## 6. Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas secara _step-by-step_! (bukan hanya sekadar mengikuti tutorial).

- [ ] Memastikan _deployment_ proyek tugas Django kamu telah berjalan dengan baik.
- [ ] Membuat halaman login pada proyek tugas Flutter.
- [ ] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- [ ] Membuat model kustom sesuai dengan proyek aplikasi Django.
- [ ] Membuat halaman yang berisi daftar semua item yang terdapat pada _endpoint_ `JSON` di Django yang telah kamu _deploy_.
  - [ ] Tampilkan _name_, _amount_, dan _description_ dari masing-masing item pada halaman ini.
- [ ] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
  - [ ] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
  - [ ] Tampilkan seluruh atribut pada model item kamu pada halaman ini.
  - [ ] Tambahkan tombol untuk kembali ke halaman daftar item.

</details>

<details>

<summary>Tugas 8</summary>

## 1. Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

- `Navigator.push()`
  - `push() new page`
  - Menambahkan suatu route ke dalam stack route yang dimanage oleh Navigator
  - Dapat kembali ke page sebelumnya dengan tombol back karena pagenya tidak di `pop()`, hanya saja berada tepat di bawah new page pada stack route
- `Navigator.pushReplacement()`
  - `push() current page kemudian pop() new page`
  - Menghapus route yang sedang ditampilkan dan menggantinya dengan suatu route baru
  - Tidak dapat kembali ke page sebelumnya dengan tombol back karena page sebelumnya telah di `pop()`, sehingga tidak ada di di bawah new page pada stack route

## 2. Jelaskan masing-masing _layout_ widget pada Flutter dan konteks penggunaannya masing-masing!

- `Container` => Biasanya menampung beberapa widget. Dapat digunakan untuk kustomisasi seperti background color, margin, padding, etc.
- `Row` => Menyusun childrennya pada 1 row yang sama (horizontally). Dapat digunakan untuk menata letak widget jika ingin ditempatkan pada 1 row yang sama.
- `Column` => Menyusun childrennya pada 1 column yang sama (vertically). Dapat digunakan untuk menata letak widget jika ingin ditempatkan pada 1 column yang sama.
- `ListView` => Menyusun childrennya Dapat digunakan untuk menampilkan list daftar item seperti pada left drawer di tugas ini.
- `Stack` => Menyusun childrennya secara bertumpuk (stack). Widget children akan diatur relatif terhadap satu sama lain. Dapat digunakan untuk handle widget yang mungkin overlap.
- `Expanded` => Mengontrol agar widget dapat mengisi ruang sebanyak mungkin (expand). Dapat digunakan untuk memberikan extra space pada widget.
- `Flexible` => Mengontrol seberapa besar space yang dapat diisi oleh childrennya. Dapat digunakan untuk membatasi seberapa kecil/besar space yang dapat digunakan widget.
- `GridView` => Menyusun childrennya dalam format matrix (grid). Dapatdigunakan untuk membuat tabel, menyusun card, dan lain sebagainya.
- `Wrap` => Menyusun childrennya dalam format row dan column, jika spacenya tidak cukup widget akan berpindah ke row atau column berikutnya. Dapat digunakan untuk menyesuaikan ukuran setiap row/column, menghandle agar widget tidak overflow, dan lain sebagainya.

## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

- `Form` => Saya gunakan untuk membuat dan mengelola formulir. Saya gunakan juga untuk validasi input dan menyimpan input pengguna apabila sudah sesuai.
- `SingleChildScrollView` => Saya gunakan untuk page dapat discroll apabila konten lebih besar dari ukuran screen.
- `Column` => Saya gunakan untuk mengatur widget childnya dalam kolom vertikal.
- `Padding` => Saya gunakan untuk mengatur jarak (padding) di sekitar widget childnya.
- `TextFormField` => Saya gunakan untuk tempat pengguna memberikan input, kemudian akan diproses oleh program untuk validasi input dan menyimpannya.
- `Text` => Saya gunakan untuk menampilkan teks pada page.
- `TextStyle` => Saya gunakan untuk kustomisasi teks pada page (color, size, etc.). Saya gunakan juga untuk mengubah warna text pada `TextFormField`.
- `InputDecoration` => Saya gunakan untuk mengatur dekorasi elemen input seperti label, icon, dan text style.
- `OutlineInputBorder` => Saya gunakan untuk memberikan outline pada `TextFormField`.
- `Align` => Saya gunakan untuk mengatur posisi (alignment) widget childrennya.
- `ElevatedButton` => Saya gunakan untuk efek peninggian dan memberikan respon ketika diklik.
- `ButtonStyle` => Saya gunakan untuk menentukan style button.
- `TextButton` => Saya gunakan untuk menampilkan button `OK`.

## 4. Bagaimana penerapan _clean architecture_ pada aplikasi Flutter?

- Clean architecture pada aplikasi Flutter memisahkan kode menjadi beberapa lapisan (layer) dengan tujuan penggunaan yang berbeda.
- Separation of concern.
- Dengan pemisahan lapisan tersebut, akan memudahkan proses perancangan aplikasi dan proses debugging aplikasi apabila terdapat error karena telah terpisahkan di awal dan hanya perlu mengubah bagian yang error.
- Contoh pemisahan komponennya adalah user interface, dependencies injection, testing, domain, data, dan lain sebagainya.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ secara _step-by-step_! (bukan hanya sekadar mengikuti tutorial)

- [ ] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

  - Membuat file `shoplist_form.dart` untuk mengisi data Item (name, price, amount, dan description)
  - `ShopFormPage()` akan entends `StatefulWidget()` karena dapat memberikan respon pop-up dan send error message
  - [ ] Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
    - Saya memakai 5 atribut yang masing-masingnya dibungkus dalam widget `Padding()` berbeda dan setiap elemen input menggunakan widget `TextFormField()`:
      - String \_name = "";
      - int \_price = 0;
      - int \_amount = 0;
      - String \_description = "";
      - String dateAdded = DateFormat('dd/MM/yyyy').format(DateTime.now()); => Otomatis terisi (user tidak perlu input)
    -
  - [ ] Memiliki sebuah tombol `Save`.
    - Menggunakan widget `ElevatedButton()` yang di dalam widget `Align()`
    - Menggunakan `onPressed()` untuk handle ketika button diklik
    - Apabila input sudah sesuai ketentuan ketika user klik button `Save`, maka akan ada pop-up konten yang menampilkan detail dari instance `Item` yang baru saja diinput
  - [ ] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
    - Menggunakan `validator: (String? value) {...}` di setiap `TextFormField()`
    - Apabila input tidak sesuai, akan diminta input ulang (input tidak disave) dan field menjadi warna merah
    - [ ] Setiap elemen input tidak boleh kosong.
      - `if (value == null || value.isEmpty)` untuk memastikan input tidak null atau input tidak kosong
    - [ ] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
      - Apabila int: `if (int.tryParse(value) == null)` untuk memastikan parse berhasil (jika gagal, maka int.tryParse(value) bernilai null)
      - Apabila String: tidak handle parse, cukup memastikan tidak kosong atau tidak null seperti di atas

- [ ] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Tambah Item` pada halaman utama.

  - Memanfaatkan `Navigator.push()` agar tetap bisa kembali ke page sebelumnya
  - `Navigator.push()` ditambahkan di `left_drawer.dart` dan button `Tambah Item` di file `menu.dart`
  - `Navigator.push()` akan mengarahkan ke `ShopFormPage()` pada file `shopform_page.dart` untuk menjalankan build

- [ ] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru.

  - Menggunakan `onPressed()` function kemudian validasi input
  - Jika input sesuai, maka akan muncul pop-up message menggunakan `showDialog()` dan `AlertDialog()`
  - Menambahkan item baru ke `Item.list`
  - Tampilkan pesan "Item Berhasil Tersimpan" beserta detail atribut item tersebut (name, price, amount, description, dan dateAdded) menggunakan widget `Text`

- [ ] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:

  - Membuat file `left_drawer.dart` untuk menampilkan drawer
  - [ ] Drawer minimal memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`.
    - Menambahkan widget `ListTitle()` untuk setiap opsi
    - Terdapat 3 opsi, `Halaman Utama`, `Tambah Item`, dan `Lihat Item`
  - [ ] Ketika memiih opsi `Halaman Utama`, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    - Memanfaatkan `Navigator.pushReplacement()` karena tidak perlu kembali ke page sebelumnya (ingin ke home)
    - `Navigator.push()` ditambahkan di `left_drawer.dart` sebagai suatu `ListTile()`
    - `Navigator.push()` akan mengarahkan ke `MyHomePage()` pada file `menu.dart` untuk menjalankan build
  - [ ] Ketika memiih opsi `Tambah Item`, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
    - Memanfaatkan `Navigator.push()` agar tetap bisa kembali ke page sebelumnya
    - `Navigator.push()` ditambahkan di `left_drawer.dart` sebagai suatu `ListTile()`
    - `Navigator.push()` akan mengarahkan ke `ShopFormPage()` pada file `shoplist_form.dart` untuk menjalankan build

- [ ] Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.

  - Membuat file `shoplist_page.dart` yang akan menampilkan seluruh Item
  - Iterasi setiap instance `Item()` yang ada di `item.dart`, dapat diakses melalui static attribut `Item.list`
  - Tampilkan setiap instance `Item()` dalam bentuk semacam card, implementasinya ada di file `item_card.dart` yang akan menampilkan detail attribute suatu item

- [ ] Mengarahkan pengguna ke halaman tersebut jika menekan tombol `Lihat Item` pada halaman utama atau drawer.
  - Memanfaatkan `Navigator.push()` agar tetap bisa kembali ke page sebelumnya
  - `Navigator.push()` ditambahkan di `left_drawer.dart` dan button `Lihat Item` di file `menu.dart`
  - `Navigator.push()` akan mengarahkan ke `ShopListPage()` pada file `shoplist_page.dart` untuk menjalankan build

<hr>

</details>

<details>

<summary>Tugas 7</summary>

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
