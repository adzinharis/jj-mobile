import 'package:flutter/material.dart';
import 'checkout_page.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<int> itemCounts = [1, 1, 1];
  List<bool> isSelected = [false, false, false];
  bool useJKoin = false;
  bool selectAll = false;

  final List<Map<String, dynamic>> products = [
    {
      'name': 'Jenang Jagung',
      'price': 20000,
      'image': 'assets/images/pict-1.png',
    },
    {
      'name': 'Balok JJ',
      'price': 10000,
      'image': 'assets/images/pict-2.png',
    },
    {
      'name': 'Jelly Jagung',
      'price': 15000,
      'image': 'assets/images/pict-3.png',
    },
  ];

  void toggleSelectAll(bool value) {
    setState(() {
      selectAll = value;
      isSelected = List.generate(isSelected.length, (index) => value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
         automaticallyImplyLeading: false,
       title: const Text(
      'Keranjang',
        style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        
        color: Colors.black,
      ),
      ),   
    ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // List produk
            ...List.generate(products.length, (index) {
              final product = products[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // Checkbox bulat
                    Radio<bool>(
                      value: true,
                      groupValue: isSelected[index],
                      onChanged: (_) {
                        setState(() {
                          isSelected[index] = !isSelected[index];
                        });
                      },
                    ),
                    // Gambar
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        product['image'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Info produk
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product['name'],
                            style: const TextStyle(
                              fontSize: 16,
                              
                            ),
                          ),
                          Text(
                            'Rp ${product['price'].toStringAsFixed(0)}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Tombol +/- jumlah
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          color: Colors.green,
                          onPressed: () {
                            setState(() {
                              if (itemCounts[index] > 1) {
                                itemCounts[index]--;
                              }
                            });
                          },
                        ),
                        Text('${itemCounts[index]}'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          color: Colors.green,
                          onPressed: () {
                            setState(() {
                              itemCounts[index]++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),

            // Checkbox 
            Row(
              children: [
               
                const SizedBox(width: 10),
                Checkbox(
                  value: selectAll,
                  onChanged: (value) => toggleSelectAll(value!),
                  activeColor: Colors.green,
                ),
                const Text('Semua'),
              ],
            ),
           
          const SizedBox(height: 20),

            // Tombol Checkout
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CheckoutPage()),
                );
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF20A110),
                  padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Chek Out',
                  style: TextStyle(
                    fontFamily: 'Poppins',
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
}
