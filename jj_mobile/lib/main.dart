import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ----------------------- Colors (from colors.dart) -----------------------
class AppColors {
  static const Color primaryGreen = Color(0xFFB6FF91);
  static const Color borderGreen = Color(0xFF20A109);
  static const Color yellowBorder = Color(0xFFD2CF33);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color linkBlue = Color(0xFF1877F2);
  static const Color inputBackground = Color(0xFFFFFBFB);
}

// ------------------ CustomInputField (from custom_input_field.dart) ------------------
class CustomInputField extends StatelessWidget {
  final String hintText;
  final String iconPath;
  final bool isPassword;
  final VoidCallback? onTap;
  final Widget? suffixIcon;

  const CustomInputField({
    Key? key,
    required this.hintText,
    required this.iconPath,
    this.isPassword = false,
    this.onTap,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: AppColors.borderGreen,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 19),
            Expanded(
              child: Text(
                hintText,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            if (suffixIcon != null) suffixIcon!,
          ],
        ),
      ),
    );
  }
}

// ------------------ SocialLoginButton (from social_login_button.dart) ------------------
class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

// ------------------ MyApp & SignUpScreen ------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JJ Mobile',
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 57),
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: Row(
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 4),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/bf1addb7445f923c4345a5262ed05093adda5be8?placeholderIfAbsent=true&apiKey=e4c52ee27b404bc5b140e1ffc057d031',
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
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 45),
                        padding: const EdgeInsets.fromLTRB(69, 141, 69, 11),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(100),
                          ),
                          border: Border.all(
                            color: AppColors.yellowBorder,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            CustomInputField(
                            hintText: 'Kartika Putri',
                            iconPath: 'assets/user_icon.png',
                            ),

                            const SizedBox(height: 30),
                            CustomInputField(
                            hintText: 'kartikaputri@gmail.com',
                            iconPath: 'assets/email_ikon.png',
                            ),
                            const SizedBox(height: 30),
                            CustomInputField(
                              hintText: 'Kata Sandi',
                              iconPath: 'assets/lock_icon.png',                         
                              isPassword: true,
                              suffixIcon: IconButton(
                                icon: Image.asset(
                                  'assets/eye_icon.png',                               
                                  width: 21,
                                  height: 21,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 58),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 70,
                                  vertical: 15,
                                ),
                              ),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 42),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.inputBackground,
                                border: Border.all(
                                  color: AppColors.borderGreen,
                                  width: 1,
                                ),
                              ),
                              child: const Text(
                                'atau',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 26),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SocialLoginButton(
                                  imagePath: 'https://cdn.builder.io/api/v1/image/assets/TEMP/af80f37768ca332dd83afd1a120861a6845e376d?placeholderIfAbsent=true&apiKey=e4c52ee27b404bc5b140e1ffc057d031',
                                  onPressed: () {},
                                ),
                                const SizedBox(width: 20),
                                SocialLoginButton(
                                  imagePath: 'https://cdn.builder.io/api/v1/image/assets/TEMP/b4087f01f6a7a361c7a6eb7e408f9db794b9bb8f?placeholderIfAbsent=true&apiKey=e4c52ee27b404bc5b140e1ffc057d031',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                            RichText(
                              text: const TextSpan(
                                text: 'Sudah punya akun? ',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                      color: AppColors.linkBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 50),
                            Container(
                              width: 139,
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xFF171616),
                                borderRadius: BorderRadius.circular(50),
                              ),
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
      ),
    );
  }
}
