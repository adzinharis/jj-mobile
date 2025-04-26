import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFB6FF91),
            ),
            width: 480,
            padding: const EdgeInsets.only(top: 118),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFFD2CF33),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 23),
                        padding: const EdgeInsets.symmetric(horizontal: 47),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Center(
                              child: Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/7e32494f99d2fa68fdfb1bae2d8e0a6a780519df?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                                width: 120,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 56),
                            const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 54),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: const Color(0xFF20A109),
                                  width: 2,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 64,
                                vertical: 15,
                              ),
                              child: const Text(
                                'Nama',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 26),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: const Color(0xFF20A109),
                                  width: 2,
                                ),
                              ),
                              padding: const EdgeInsets.only(
                                left: 65,
                                right: 27,
                                top: 12,
                                bottom: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Kata Sandi',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscurePassword = !_obscurePassword;
                                      });
                                    },
                                    child: Image.network(
                                      'https://cdn.builder.io/api/v1/image/assets/TEMP/39e38baca2795e88a8ac9e0bd6c3a7f317d77d19?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                                      width: 30, //24
                                      height: 30, //24
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 13),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Lupa sandi?',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22),
                      Container(
                        width: 335,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFFB6FF91),
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 44),
                      Container(
                        width: 57,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFBFB),
                          border: Border.all(
                            color: const Color(0xFF20A109),
                            width: 1,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'atau',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 26),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/c7bd15c72f9abc76e73fd29443ecced1a9979f4f?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 20),
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/19a5c5ada40491f855418e71f45eb5461a620a55?placeholderIfAbsent=true&apiKey=02676d61b03e41ea97c0e9a6486452f7',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: 'Belum punya akun? '),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(color: Color(0xFF153ACF)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 64),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
