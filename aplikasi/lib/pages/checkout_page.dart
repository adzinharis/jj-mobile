import 'package:flutter/material.dart';
import 'paymentmethod_page.dart';
import 'saved_address.dart';
import 'order_type.dart';
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

    @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isJKoinChecked = false;
  String selectedPaymentMethod = 'Tunai';
  String selectedOrderType = 'Pick Up';
  String selectedAddress = "Jalan Supratman,\nSurabaya.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/icons/back.png', width: 24, height: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Check Out',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProductItem("Jenang Jagung", "Rp 20.000", "assets/images/pict-1.png"),
            const SizedBox(height: 12),
            _buildProductItem("Balok Jagung", "Rp 20.000", "assets/images/pict-2.png"),
            const SizedBox(height: 20),

            _buildSectionTitle("Tipe Pemesanan"),
            _buildInfoCard(
            Icons.local_shipping,
            selectedOrderType == 'pickup'
            ? "Pick Up"
            : selectedOrderType == 'delivery'
            ? "Delivery"
            : "Pick Up",
            "Ubah",
            () async {
            final result = await Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => TipePemesananPage(),
            ),
            );

            if (result != null && result is String) {
            setState(() {
            selectedOrderType = result;
            });
            }
            },
            ),

            const SizedBox(height: 12),

            _buildSectionTitle("Alamat"),
            _buildInfoCard(Icons.location_on, selectedAddress, "Ubah", () async {
            final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AlamatSayaPage()),
            );

            if (result != null && result is String) {
            setState(() {
            selectedAddress = result;
            });
            }
            }),


            const SizedBox(height: 12),
            _buildSectionTitle("Metode Pembayaran"),
            _buildInfoCard(Icons.credit_card, selectedPaymentMethod, "Ubah", () async {
              final result = await Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => PaymentMethodPage(initialMethod: selectedPaymentMethod),
              ),
            );

              if (result != null && result is String) {
                setState(() {
                  selectedPaymentMethod = result;
                });
              }
            }),

            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: isJKoinChecked,
                   onChanged: (value) {
                    setState(() {
                      isJKoinChecked = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
                const Text('JKoin', style: TextStyle(fontSize: 16)),
              ],
            ),

            const SizedBox(height: 10),
            const Text(
              "Rincian Pembayaran",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildPaymentDetail("Subtotal Pesanan", "Rp. 40.000"),
           if (isJKoinChecked) 
          _buildPaymentDetail("Diskon JKoin", "-Rp. 5.000", isDiscount: true),


            const Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "Rp. 35.000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Pesanan Berhasil"),
      content: const Text("Terima kasih! Pesanan Anda telah diterima."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Tutup dialog
          },
          child: const Text("OK"),
        ),
      ],
    ),
  );

  // Setelah dialog ditutup, kembali ke halaman sebelumnya
  if (context.mounted) {
    Navigator.pop(context);
  }
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF20A110),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Pesan",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProductItem(String name, String price, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFF9F9F9),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(price, style: const TextStyle(color: Colors.black54, fontSize: 14)),
              ],
            ),
          ),
          const Text("1 x"),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16));
  }

  Widget _buildInfoCard(IconData icon, String content, String actionText, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF20A110),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Expanded(child: Text(content, style: const TextStyle(color: Colors.white))),
          TextButton(
            onPressed: onTap,
            child: const Text("Ubah", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetail(String label, String value, {bool isDiscount = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(
          value,
          style: TextStyle(color: isDiscount ? Colors.red : Colors.black),
        ),
      ],
    );
  }
}


