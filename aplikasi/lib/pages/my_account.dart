import 'package:flutter/material.dart';

class AkunSayaPage extends StatefulWidget {
  const AkunSayaPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AkunSayaPageState createState() => _AkunSayaPageState();
}

class _AkunSayaPageState extends State<AkunSayaPage> {
  final TextEditingController namaController = TextEditingController(text: "Kartika Putri");
  final TextEditingController emailController = TextEditingController(text: "kartikaputri@gmail.com");
  final TextEditingController noHpController = TextEditingController(text: "085257103358");

  void _simpanData() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Berhasil'),
        content: Text('Data berhasil disimpan'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // tutup dialog
              Navigator.pop(context); // kembali ke halaman sebelumnya
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 6),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/icons/back.png', width: 24, height: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Akun Saya',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/pp.png'), 
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 14,
                      child: Icon(Icons.camera_alt, size: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            _buildTextField('Nama', namaController),
            _buildTextField('Email', emailController),
            _buildTextField('No HP', noHpController),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _simpanData,
              style: ElevatedButton.styleFrom(
                 backgroundColor: const Color(0xFF20A110),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Simpan',
                style: TextStyle(color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
