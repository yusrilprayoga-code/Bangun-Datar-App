import 'package:bangun_datar/BangunDatar/lingkaran.dart';
import 'package:bangun_datar/BangunDatar/persegi.dart';
import 'package:bangun_datar/BangunDatar/segitiga.dart';
import 'package:bangun_datar/BangunDatar/trapesium.dart';
import 'package:bangun_datar/screens/component.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16, // Increased spacing between items
          crossAxisSpacing: 16, // Increased spacing between items
          childAspectRatio: 1,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          final bangunRuang =
              getBangunRuang(index); // Replace this with your data source
          return MenuCard(bangunRuang: bangunRuang);
        },
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.bangunRuang});
  final Component bangunRuang;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return bangunRuang;
        }));
      },
      child: Card(
        elevation: 4, // Add shadow to the card
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center content vertically
          children: [
            Container(
              height: 120,
              width: 120,
              child: Image.network(bangunRuang.image),
            ),
            SizedBox(height: 8), // Add spacing between the image and text
            Text(
              bangunRuang.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Component getBangunRuang(int index) {
  switch (index) {
    case 0:
      return Lingkaran(
        name: "Lingkaran",
        image:
            "https://th.bing.com/th/id/OIP.vSVzB7HGiaEzKphouZLwrgAAAA?pid=ImgDet&rs=1",
      );
    case 1:
      return Persegi(
        name: "Persegi",
        image:
            "https://th.bing.com/th/id/R.0570c72ec1adedeb5a6388970189fd51?rik=XFRz%2fGQIx1r4EQ&riu=http%3a%2f%2fwww.broexcel.com%2fwp-content%2fuploads%2f2016%2f09%2fGambar-Persegi-460x460.jpg&ehk=UGSp06m2332C6YWSyx9EPsYVKUxlBLT%2bfelrDae96GA%3d&risl=&pid=ImgRaw&r=0",
      );
    case 2:
      return Trapesium(
        name: "Trapesium",
        image:
            "https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2021/01/29/2241577161.jpg",
      );
    case 3:
      return Segitiga(
        name: "Segitiga",
        image:
            "https://th.bing.com/th/id/R.b39f0ec18014d01538fcce7893d1e214?rik=G1NR7%2fSOGX3WWQ&riu=http%3a%2f%2fwww.broexcel.com%2fwp-content%2fuploads%2f2016%2f09%2fGambar-Segitiga-460x409.jpg&ehk=2loqx1bc3p9ROM6Aun2tMeqw%2f42rzfx3hjBBbRlKkzI%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",
      );
    default:
      throw Exception("Invalid index");
  }
}
