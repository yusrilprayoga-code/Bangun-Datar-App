import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            //make profile foto nama nim tanggal lahir dan deskripsi
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/profile.JPG'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'MOH YUSRIL PRAYOGA',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  '124210006',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Tolitoli, 9 Agustus 2003',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Saya adalah seorang mahasiswa di UPN Veteran Yogyakarta Prodi Sistem Informasi. Saya lahir di Tolitoli, 9 Agustus 2003. Saya tinggal di Sleman, Yogyakarta. Saya memiliki hobi bermain game dan olahraga. Saya memiliki cita-cita menjadi seorang pengusaha.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
