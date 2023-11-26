import 'package:bangun_datar/screens/component.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Segitiga extends Component {
  const Segitiga({super.key, required super.image, required super.name});

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  late double alas = 0;
  late double tinggi = 0;
  late double luas = 0;
  late double keliling = 0;
  late double sisi = 0;
  late double sisi1 = 0;
  late double sisi2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name), backgroundColor: Colors.blue),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CardHalamanDetail(),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          alas = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan Alas",
                          labelText: "Alas",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          tinggi = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan Tinggi",
                          labelText: "Tinggi",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          sisi = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan Sisi1",
                          labelText: "Sisi1",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          sisi1 = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan Sisi2",
                          labelText: "Sisi2",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          sisi2 = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan SiSi3",
                          labelText: "Sisi3",
                          border: OutlineInputBorder()),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {
                    setState(() {
                      luas = 0.5 * alas * tinggi;
                      keliling = sisi + sisi1 + sisi2;
                    });
                  },
                  child: const Text(
                    "Hitung",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Luas : $luas",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Keliling : $keliling",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class CardHalamanDetail extends StatelessWidget {
  const CardHalamanDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Lottie.network(
                  "https://lottie.host/0a031e25-4117-4727-abea-ba072b5ae1ee/4URjReRbob.json"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Segitiga",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }
}
