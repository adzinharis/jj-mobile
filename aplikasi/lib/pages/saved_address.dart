import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AlamatSayaPage extends StatelessWidget {
  final List<Map<String, String>> alamatList = [
    {
      'nama': 'Kartika Putri',
      'telepon': '085806027778',
      'alamat':
          'Jalan Supratman, No. 08, Desa Sukowono, RT. 01/RW. 02, Kecamatan Asemrowo, Surabaya, Jawa Timur',
      'kota': 'ASEMROWO, SURABAYA, JAWA TIMUR, ID 6666',
      'utama': 'true'
    },
    {
      'nama': 'Kartika Putri',
      'telepon': '085806027778',
      'alamat':
          'Jalan Mastrip Gang Pelangi, Jember, Kaliwates, Rt 03/Rw 04 Kec. Kaliwates, Kabupaten Jember, Jawa Timur',
      'kota': 'KALIWATES, JEMBER, JAWA TIMUR, ID 6123',
      'utama': 'false'
    },
  ];

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
          'Alamat Saya',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: alamatList.length,
              itemBuilder: (context, index) {
                final alamat = alamatList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context, alamat);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  alamat['nama']!,
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 8),
                                const Text('|'),
                                const SizedBox(width: 8),
                                Text(
                                  alamat['telepon']!,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(alamat['alamat']!),
                            const SizedBox(height: 8),
                            Text(
                              alamat['kota']!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                            if (alamat['utama'] == 'true') ...[
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Utama',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ]
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextButton.icon(
              onPressed: () {
          
              },
                icon: Image.asset(
                'assets/icons/plus.png', 
                width: 18,
                height: 18,
              ),
              label: const Text(
                'Tambahkan Alamat',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
