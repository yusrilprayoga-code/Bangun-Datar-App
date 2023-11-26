import 'package:bangun_datar/screens/component.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Trapesium extends Component {
  const Trapesium({super.key, required super.image, required super.name});

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  late double ab = 0;
  late double dc = 0;
  late double t = 0;
  late double sisi = 0;
  late double sisi1 = 0;
  late double sisi2 = 0;
  late double sisi3 = 0;
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
                          ab = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan AB",
                          labelText: "AB",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          dc = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan DC",
                          labelText: "DC",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          t = double.parse(value);
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
                          hintText: "Masukkan Sisi3",
                          labelText: "Sisi3",
                          border: OutlineInputBorder()),
                    )),
                Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          sisi3 = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Masukkan Sisi4",
                          labelText: "Sisi4",
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
                      luas = ((ab + dc) * t) / 2;
                      keliling = sisi + sisi1 + sisi2 + sisi3;
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
                  "https://lottie.host/bbd14c1a-f6f1-4423-ba6a-83081e568c3c/kWu02Tsr3h.json"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Trapesium",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }
}
