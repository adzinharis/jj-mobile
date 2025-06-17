import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  final String? initialMethod;
  const PaymentMethodPage({super.key, this.initialMethod});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String? selectedMethod;
  bool showEwallet = false;
  bool showTransfer = false;

  @override
  void initState() {
  super.initState();
  selectedMethod = widget.initialMethod ?? 'Tunai'; 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back.png', 
            width: 24,
            height: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Metode Pembayaran',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
        ),
       
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildMethodTile(
            icon: 'assets/icons/tunai.png',
            title: "Tunai",
            methodValue: "Tunai",
          ),
          buildMethodTile(
            icon: 'assets/icons/e-wallet.png',
            title: "E-Wallet",
            methodValue: "E-Wallet",
            expandable: true,
            expanded: showEwallet,
            onExpandToggle: () {
              setState(() {
                showEwallet = !showEwallet;
              });
            },
          ),
          if (showEwallet) ...[
            buildSubMethodTile('assets/icons/dana.png', 'Dana'),
            buildSubMethodTile('assets/icons/ovo.png', 'OVO'),
            buildSubMethodTile('assets/icons/gopay.png', 'Gopay'),
            buildSubMethodTile('assets/icons/linkaja.png', 'Link aja'),
          ],
          buildMethodTile(
            icon: 'assets/icons/transfer.png',
            title: "Transfer Bank",
            methodValue: "Transfer Bank",
            expandable: true,
            expanded: showTransfer,
            onExpandToggle: () {
              setState(() {
                showTransfer = !showTransfer;
              });
            },
          ),
          if (showTransfer) ...[
            buildSubMethodTile('assets/icons/mandiri.png', 'Bank Mandiri'),
            buildSubMethodTile('assets/icons/bri.png', 'Bank BRI'),
            buildSubMethodTile('assets/icons/bni.png', 'Bank BNI'),
            buildSubMethodTile('assets/icons/bca.png', 'Bank BCA'),
          ],
        ],
      ),
    );
  }

  Widget buildMethodTile({
    required String icon,
    required String title,
    required String methodValue,
    bool expandable = false,
    bool expanded = false,
    VoidCallback? onExpandToggle,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: Image.asset(icon, width: 28, height: 28),
      title: Text(title),
      trailing: expandable
          ? IconButton(
              icon: Icon(
                expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              ),
              onPressed: onExpandToggle,
            )
          : Radio<String>(
              activeColor: Colors.green,
              value: methodValue,
              groupValue: selectedMethod,
              onChanged: (value) {
                setState(() {
                  selectedMethod = value;
                });
                Navigator.pop(context, value);
              },
            ),
      onTap: () {
        if (!expandable) {
          setState(() {
            selectedMethod = methodValue;
          });
          Navigator.pop(context, methodValue);
        }
      },
    );
  }

  Widget buildSubMethodTile(String iconPath, String methodName) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 60),
      leading: Image.asset(iconPath, width: 24, height: 24),
      title: Text(methodName),
      trailing: Radio<String>(
        activeColor: Colors.green,
        value: methodName,
        groupValue: selectedMethod,
        onChanged: (value) {
          setState(() {
            selectedMethod = value;
          });
          Navigator.pop(context, value);
        },
      ),
      onTap: () {
        setState(() {
          selectedMethod = methodName;
        });
        Navigator.pop(context, methodName);
      },
    );
  }
}
