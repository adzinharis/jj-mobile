import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: const BoxDecoration(
                color: Color(0xFF20A110),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      
                     IconButton(
                    icon: Image.asset(
                    'assets/icons/back.png', 
                    width: 20,
                    height: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                    Navigator.pop(context);
                    },
                    ),

                      const SizedBox(width: 10),
                      const Text(
                        'Tentang Kami',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Logo
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/logo.png', // ganti sesuai path logo
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Profil Perusahaan',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )
                ],
              ),
            ),

            // Deskripsi
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'UMKM Jenang Jagung (JJ) ini berawal dari ide kreatif seorang warga Probolinggo '
                  'yang terinspirasi dari tetangganya. Awalnya membuat jenang dengan rasa buah, '
                  'pelaku usaha ini kemudian berinovasi menciptakan jenang berbahan dasar jagung, '
                  'sebuah cita rasa unik yang belum banyak dijumpai di pasaran.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, height: 1.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
