import 'package:flutter/material.dart';
import '../widgets/left_drawer.dart';
import '../widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem(
        "Lihat Item", Icons.checklist, const Color.fromRGBO(33, 33, 33, 1)),
    ShopItem("Tambah Item", Icons.add_shopping_cart,
        const Color.fromRGBO(97, 97, 97, 1)),
    ShopItem("Logout", Icons.logout, const Color.fromRGBO(128, 34, 27, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Vending Machine'),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
      // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),
      body: Center(
        child: SingleChildScrollView(
          // Widget wrapper yang dapat discroll
          child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
              // Widget untuk menampilkan children secara vertikal
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                  child: Text(
                    'Vending Machine', // Text yang menandakan toko
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Grid layout
                GridView.count(
                  // Container pada card kita.
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    return ShopCard(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
