import 'package:flutter/material.dart';
import 'edit_address.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AlamatSayaPage(),
  ));
}

class AlamatSayaPage extends StatelessWidget {
  const AlamatSayaPage({super.key});

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
          'Alamat Saya',
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
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  
              SizedBox(height: 20),

              // Map Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/world_map.png', 
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 8),

              // Ganti Button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  onPressed: () {
                  Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => UbahAlamatPage()),
                );
                },

                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF20A110),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: Text(
                    'Ubah',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Poppins',
                      ),
                  ),
                   label: Image.asset(
                  'assets/icons/next.png', 
                width: 18,
              height: 18,
              color: Colors.white,
            ),
                ),
              ),

              SizedBox(height: 16),

              // Informasi Alamat
              buildInfoItem("Nama Jalan / Desa / RT RW",
                  "Jl Supratman No 8 / Sukowono / Rt 1 Rw 2"),
              buildInfoItem("Kecamatan", "Asemrowo"),
              buildInfoItem("Kota / Kabupaten / Provinsi", "Surabaya / Jawa Timur"),
              buildInfoItem("Kode Pos", "60182-60183"),
              buildInfoItem("Catatan Tambahan", "---"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoItem(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.green),
            ),
          ),
          child: Text(content),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
