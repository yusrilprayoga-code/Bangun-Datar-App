import 'package:bangun_datar/screens/component.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Persegi extends Component {
  const Persegi({super.key, required super.image, required super.name});

  @override
  State<Persegi> createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  late double sisi = 0;
  late double sisi1 = 0;
  late double luas = 0;
  late double keliling = 0;
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
                          sisi = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan Sisi",
                          labelText: "Sisi",
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
                      luas = sisi * sisi;
                      keliling = 4 * sisi;
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
                  "https://lottie.host/c5954b15-2485-4c99-9a02-a4d42a18a13b/vnjNPAKHgc.json"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Persegi",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }
}
