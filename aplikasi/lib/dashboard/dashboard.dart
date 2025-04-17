import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 0),
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 480),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Column(
                    children: [
                      // Top section with time and icons
                      _buildTopSection(),

                      // Green card with user info
                      _buildUserInfoCard(),

                      // First row of feature cards
                      _buildFeatureCardsRow1(),

                      // Second row of feature cards
                      _buildFeatureCardsRow2(),

                      // Floating action button
                      _buildFloatingButton(),
                    ],
                  ),
                ),
              ),
            ),

            // Bottom navigation bar
            _buildBottomNavBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '10.00',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/icon1.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 6),
              Image.asset(
                'assets/images/icon2.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 6),
              SizedBox(
                width: 24,
                height: 24,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/icon3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/icon3.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfoCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 23, top: 11),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFB6FF91),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color(0xFF20A109),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.fromLTRB(29, 0, 29, 40),
        child: Column(
          children: [
            // Tab indicator
            Transform.translate(
              offset: const Offset(0, -13),
              child: Container(
                width: 145,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 29),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 62,
                      height: 7,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    const SizedBox(width: 11),
                    Container(
                      width: 10,
                      height: 9,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // User info section
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/user_icon.png',
                          width: 38,
                          height: 34,
                          fit: BoxFit.contain,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(3, 9, 3, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HALO!!',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Kartika Putri',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Adamina',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // JKoin card
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 31),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.fromLTRB(9, 2, 19, 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'JKoin Saya',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Inria Serif',
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        const Text(
                                          '45',
                                          style: TextStyle(
                                            fontSize: 32,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/images/jkoin_icon.png',
                                      width: 36,
                                      height: 36,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Check In',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
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
                  Image.asset(
                    'assets/images/arrow_icon.png',
                    width: 18,
                    height: 21,
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCardsRow1() {
    return Padding(
      padding: const EdgeInsets.only(top: 37),
      child: SizedBox(
        width: 297,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFB6FF91),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF20A109),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(18, 27, 18, 27),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/store_status_icon.png',
                      width: 54,
                      height: 53,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Status Toko',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 11),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF20A109),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(9, 3, 9, 3),
                      child: Row(
                        children: [
                          Container(
                            width: 19,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color(0xFF55FF00),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                          const SizedBox(width: 19),
                          const Text(
                            'Buka',
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Inter',
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFB6FF91),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF20A109),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(18, 39, 18, 25),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/density_icon.png',
                      width: 44,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Kepadatan',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 11),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF20A109),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(9, 3, 9, 3),
                      child: Row(
                        children: [
                          Container(
                            width: 19,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color(0xFFDA0000),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                          const SizedBox(width: 19),
                          const Text(
                            'Padat',
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Inter',
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
      ),
    );
  }

  Widget _buildFeatureCardsRow2() {
    return Padding(
      padding: const EdgeInsets.only(top: 41),
      child: SizedBox(
        width: 296,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFB6FF91),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF20A109),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(26, 43, 26, 43),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/cart_icon.png',
                        width: 55,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Keranjang',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFB6FF91),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF20A109),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(26, 36, 26, 36),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/payment_icon.png',
                      width: 55,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 13),
                    const Text(
                      'Metode \nPembayaran',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
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
      ),
    );
  }

  Widget _buildFloatingButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 31),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 59,
          height: 59,
          decoration: const BoxDecoration(
            color: Color(0xFFB6FF91),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/chat_icon.png',
              width: 35,
              height: 42,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/bottom_nav_bg.png',
          width: double.infinity,
          height: 86, // Aspect ratio 5.587 for width of 480
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 18, 32, 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/nav_icon1.png',
                width: 33,
                height: 30,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/nav_icon2.png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/nav_icon3.png',
                width: 43,
                height: 40,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}