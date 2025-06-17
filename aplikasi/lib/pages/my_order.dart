import 'package:flutter/material.dart';

class PesananPage extends StatelessWidget {
  const PesananPage({super.key});

  final List<Map<String, String>> pesananList = const [
    {
      'produk': 'Jenang Jagung',
      'status': 'Sedang Diproses',
      'tanggal': '10 Mei 2025',
    },
    {
      'produk': 'Jenang Jagung',
      'status': 'Dikirim',
      'tanggal': '8 Mei 2025',
    },
    {
      'produk': 'Jenang Jagung',
      'status': 'Selesai',
      'tanggal': '3 Mei 2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading:  IconButton(
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
          'Pesanan Saya',
          style: TextStyle(
          color: Colors.black,
          fontSize: 20, 
          fontFamily: 'Poppins'
        )
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: pesananList.length,
        itemBuilder: (context, index) {
          final item = pesananList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(item['produk']!),
              subtitle: Text('Status: ${item['status']!}\nTanggal: ${item['tanggal']!}'),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
