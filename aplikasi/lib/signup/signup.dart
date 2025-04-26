import 'package:flutter/material.dart';

class SignUpRevisi extends StatelessWidget {
  const SignUpRevisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 480),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromRGBO(182, 255, 145, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 39, top: 57),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/7b7f44d75f79b50a62c5c3a1408b811fb6dbf8d4?placeholderIfAbsent=true',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 45),
                padding: const EdgeInsets.fromLTRB(69, 141, 69, 11),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(100),
                    bottom: Radius.circular(100),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromRGBO(210, 207, 51, 1),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Name input field
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 11,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(32, 161, 9, 1),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/770a2157cd53d2cd4c8afa097a4b380c46668f38?placeholderIfAbsent=true',
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 19),
                          const Expanded(
                            child: Text(
                              'Kartika Putri',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Email input field
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 17,
                        vertical: 11,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(32, 161, 9, 1),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/5d898006ad8363ff2d807b2e8f40d5e90aef249f?placeholderIfAbsent=true',
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 19),
                          const Expanded(
                            child: Text(
                              'kartikaputri@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Password input field
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 21,
                        vertical: 11,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(32, 161, 9, 1),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/bfcd89a66bb478905706a22c66215519a5718a10?placeholderIfAbsent=true',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 13),
                              const Text(
                                'Kata Sandi',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/5c87f1609f5a5159886d578079ffe9b05c2f881d?placeholderIfAbsent=true',
                            width: 21,
                            height: 21,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 58),

                    // Sign Up button
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(182, 255, 145, 1),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 70,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(height: 42),

                    // "atau" divider
                    Center(
                      child: Container(
                        width: 57,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 251, 251, 1),
                          border: Border.all(
                            color: const Color.fromRGBO(32, 161, 9, 1),
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          'atau',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 26),

                    // Social media login options
                    Center(
                      child: SizedBox(
                        width: 142,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/f416d3052b55effc6ca865c6c181160567ec3890?placeholderIfAbsent=true',
                                width: 50,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/75f9a99259b7f042c3311804cd94d0cd008ce48a?placeholderIfAbsent=true',
                                width: 50,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Login link
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: 'Sudah punya akun? '),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Color.fromRGBO(24, 119, 242, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),

                    // Bottom indicator
                    Center(
                      child: Container(
                        width: 139,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(23, 22, 22, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
