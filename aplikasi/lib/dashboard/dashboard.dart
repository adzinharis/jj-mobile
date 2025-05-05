import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 480),
          child: Column(
            children: [
              // Green Header Section
              Container(
                padding: const EdgeInsets.fromLTRB(33, 38, 33, 109),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFB6FF91),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // User Profile and Notification
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // User Profile
                        Row(
                          children: [
                            Image.network(
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/699e6fc72eb9e938df2f18356d187910bae7a765?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                              width: 56,
                              height: 56,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Halo, Kartika Putri!',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF0F4A05),
                                  ),
                                ),
                                Text(
                                  'Selamat Datang!',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF0F4A05),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Notification Icon
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/392091afea8360b5502a4a76cacc892405105619?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                          width: 29,
                          height: 29,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),

                    // JKoin Card
                    Container(
                      margin: const EdgeInsets.only(top: 59, bottom: 22),//change it from -22 to 22
                      padding: const EdgeInsets.fromLTRB(22, 13, 22, 13),
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'JKoin',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '45',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/ccfc85ddfb5fd8a2f26c399340be6f33b3f4cdd9?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                            width: 31,
                            height: 31,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Main Content Section
              Container(
                padding: const EdgeInsets.fromLTRB(54, 25, 54, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Status Row
                    Row(
                      children: [
                        // Store Status
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(22),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFB6FF91),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/560fb2558859f6c8a858a3c181d17859fe129897?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                                  width: 49,
                                  height: 49,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 11),
                                Text(
                                  'Status Toko',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 11),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFF20A109),
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            1000,
                                          ),
                                          color: const Color(0xFF55FF00),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        'Buka',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 33),
                        // Density Status
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(22),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFB6FF91),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/2817bf3e239a2f115597e9a5ed0230110f29123d?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                                  width: 44,
                                  height: 44,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Kepadatan',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 11),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFF20A109),
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            1000,
                                          ),
                                          color: const Color(0xFFFF0202),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        'Padat',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Action Buttons Row
                    const SizedBox(height: 41),
                    Row(
                      children: [
                        // Message Button
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 38,
                              horizontal: 26,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFB6FF91),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/ff3bca0e6016b2a92dde5430ed6de0515fd5317e?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                                  width: 47,
                                  height: 47,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Pesan',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 32),
                        // Payment Method Button
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 28,
                              horizontal: 26,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFB6FF91),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/1e0222cbf73989607cf0be7be0af0b11cbe6194b?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                                  width: 59,
                                  height: 59,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 9),
                                Text(
                                  'Metode\nPembayaran',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Circular Button
                    const SizedBox(height: 35),
                    Container(
                      width: 59,
                      height: 59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFB6FF91),
                      ),
                      child: Center(
                        child: Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/a6445321d7e1db7760b7737c1b3b82196f89491e?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                          width: 43,
                          height: 43,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom Navigation Bar
              Container(
                margin: const EdgeInsets.only(
                  top: 26,
                ), //real -26, i change it to 26 to check the error
                height: 80, // Adjusted to match the aspect ratio
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/767bc2e9e41cd2801ea24f9903f787556b9b9769?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 11, 40, 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/d94d5ff2241932911479ce585d72dfc315fbdea1?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                            width: 47,
                            height: 47,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 49),
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/017f67d59ccb101769d30747b0266704eee93fab?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                            width: 38,
                            height: 38,
                            fit: BoxFit.contain,
                          ),
                          const Spacer(),
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/6ca4ae0bd60b5fc51a7fda12f15b211f256a9866?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                            width: 35,
                            height: 35,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
