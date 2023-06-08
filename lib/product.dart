import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/product.jpg",
            ),
            fit: BoxFit.contain,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Apple Vision Pro',
                          style: TextStyle(
                              color: Color(0xFF252525),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        SizedBox(width: 10),
                        FloatingActionButton(
                          shape: CircleBorder(),
                          elevation: 0,
                          heroTag: "NewBox",
                          backgroundColor: Color(0xFFFF2B13),
                          onPressed: null,
                          child: Text(
                            'New',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Available early next year in the U.S.',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$3499",
                          style: GoogleFonts.inter(
                            fontSize: 40,
                            color: const Color(0xFF2F2F2F),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Text(
                            "The stadard VAT rate may be charged folloing the law of your country",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: FloatingActionButton(
                            heroTag: "BlackBox",
                            elevation: 0,
                            backgroundColor: const Color(0xFF2F2F2F),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {},
                            child: const Text(
                              "Preorder",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Divider(color: Colors.grey),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: null,
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Color(0xFFFF2B13),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
