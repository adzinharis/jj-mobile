import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 480),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: AspectRatio(
                aspectRatio: 1.78,
                child: Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/e34335ed6d6c595cae6d2d508041457a90c22bed?placeholderIfAbsent=true&apiKey=e4c52ee27b404bc5b140e1ffc057d031',
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 62),
            Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/984e03261831a6cac07a1638b3efb70c1f9f735e?placeholderIfAbsent=true&apiKey=e4c52ee27b404bc5b140e1ffc057d031',
              fit: BoxFit.contain,
              width: 196,
            ),
            const SizedBox(height: 328),
            Container(
              width: 139,
              height: 5,
              margin: const EdgeInsets.only(bottom: 11),
              decoration: BoxDecoration(
                color: const Color(0xFF171616),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
