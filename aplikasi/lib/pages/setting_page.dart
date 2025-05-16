import 'package:aplikasi/pages/my_address.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SettingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _notifikasiAktif = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back.png',
            width: 20,
            height: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Pengaturan',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // Item: Akun Saya
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text("Akun Saya"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                
              },
              ),
              const Divider(),

              // Item: Notifikasi
              ListTile(
                leading: const Icon(Icons.notifications_outlined),
                title: const Text("Notifikasi"),
                trailing: Switch(
                  value: _notifikasiAktif,
                  onChanged: (value) {
                    setState(() {
                      _notifikasiAktif = value;
                    });
                  },
                  activeColor: Colors.greenAccent,
                ),
              ),
              const Divider(),

              // Item: Alamat Saya
              ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: const Text("Alamat Saya"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlamatSayaPage()),
              );
              },
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
