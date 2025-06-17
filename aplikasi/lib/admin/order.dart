import 'package:flutter/material.dart';

class PesananPage extends StatelessWidget {
  const PesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pesananList = [
      {
        'judul': 'Jenang Jagung',
        'pemesan': 'Kartika Putri',
        'jumlah': '5',
        'alamat': 'Jl Supratman No 8 / Sukowono',
        'batasWaktu': '28-04-25 | 09:16',
        'gambar': 'assets/images/pict-1.png',
      },
      {
        'judul': 'Jelly Jagung',
        'pemesan': 'Cantika Dewi',
        'jumlah': '15',
        'alamat': 'Jl Rahmat no 5 / Jakarta',
        'batasWaktu': '30-04-25 | 14:16',
        'gambar': 'assets/images/pict-2.png',
      },
      {
        'judul': 'Susu Jagung',
        'pemesan': 'Kartika Putri',
        'jumlah': '5',
        'alamat': 'Jl Supratman No 8 / Sukowono',
        'batasWaktu': '30-04-25 | 10:16',
        'gambar': 'assets/images/susu-jj.png',
      },
    ];

    return Scaffold(
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
          'Pesanan',
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
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: pesananList.length,
        itemBuilder: (context, index) {
          final pesanan = pesananList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    pesanan['gambar']!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pesanan['judul']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text.rich(TextSpan(
                          children: [
                            const TextSpan(text: 'Pesanan : ', style: TextStyle(fontWeight: FontWeight.w400)),
                            TextSpan(
                              text: pesanan['pemesan'],
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                        Text('Jumlah : ${pesanan['jumlah']}'),
                        Text.rich(TextSpan(
                          children: [
                            const TextSpan(text: 'Alamat : ', style: TextStyle(fontWeight: FontWeight.w400)),
                            TextSpan(
                              text: pesanan['alamat'],
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                        Text('Proses Sebelum : ${pesanan['batasWaktu']}'),
                        const SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward, size: 16),
                          label: const Text('Lanjut Diproses'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
