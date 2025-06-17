import 'package:flutter/material.dart';

class UbahAlamatPage extends StatefulWidget {
  const UbahAlamatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UbahAlamatPageState createState() => _UbahAlamatPageState();
}

class _UbahAlamatPageState extends State<UbahAlamatPage> {
  final TextEditingController jalanController =
      TextEditingController(text: 'Jl Supratman No 8 / Sukowono / Rt 1 Rw 2');
  final TextEditingController kecamatanController =
      TextEditingController(text: 'Asemrowo');
  final TextEditingController kotaProvinsiController =
      TextEditingController(text: 'Surabaya / Jawa Timur');
  final TextEditingController kodePosController =
      TextEditingController(text: '60182–60183');
  final TextEditingController catatanController = TextEditingController();

  void _simpanAlamat() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Alamat Disimpan'),
        content: Text('Alamat berhasil diperbarui.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Tutup dialog
              Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {String? hintText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(height: 4),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: Color(0xFFEFEFEF),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

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
          'Ubah Alamat',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildTextField("Nama Jalan / Desa / RT RW", jalanController),
              _buildTextField("Kecamatan", kecamatanController),
              _buildTextField("Kota / Kabupaten / Provinsi", kotaProvinsiController),
              _buildTextField("Kode Pos", kodePosController),
              _buildTextField("Catatan Tambahan", catatanController, hintText: "Ketik disini"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _simpanAlamat,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF20A110),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
