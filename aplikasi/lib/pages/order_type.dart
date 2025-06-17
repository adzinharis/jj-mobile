import 'package:flutter/material.dart';

class TipePemesananPage extends StatefulWidget {
  const TipePemesananPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TipePemesananPageState createState() => _TipePemesananPageState();
}

class _TipePemesananPageState extends State<TipePemesananPage> {
  String? _selectedOption;

  void _handleSelection(String value) {
    setState(() {
      _selectedOption = value;
    });

    Navigator.pop(context, value);
  }

  Widget _buildOption({
    required String label,
    required String assetPath,
    required String value,
  }) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Image.asset(
          assetPath,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(label),
      trailing: Radio<String>(
        value: value,
        groupValue: _selectedOption,
        onChanged: (val) {
          if (val != null) _handleSelection(val);
        },
      ),
      onTap: () => _handleSelection(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipe Pemesanan'),
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildOption(
              label: 'Pick Up',
              assetPath: 'assets/icons/pickup.png',
              value: 'pickup',
            ),
            SizedBox(height: 16),
            _buildOption(
              label: 'Delivery',
              assetPath: 'assets/icons/delivery.png',
              value: 'delivery',
            ),
          ],
        ),
      ),
    );
  }
}
