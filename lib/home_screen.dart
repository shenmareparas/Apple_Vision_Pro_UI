import 'package:apple_vision_pro_ui/product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/home_screen.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Fresh Releases',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'You navigate simply\nby using your eyes,\nhands, and voice.',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'So you can do the things you love in ways never before possible.',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const FloatingActionButton(
                          heroTag: "BlackBox",
                          backgroundColor: Color(0xFF2F2F2F),
                          shape: CircleBorder(),
                          elevation: 0,
                          tooltip: "Logo",
                          onPressed: null,
                          child: Icon(
                            Icons.apple,
                            size: 35,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: FloatingActionButton(
                            heroTag: "RedBox",
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Product(),
                                ),
                              );
                            },
                            backgroundColor: const Color(0xFFFF2B13),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Buy Now',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Icon(Icons.north_east, color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
