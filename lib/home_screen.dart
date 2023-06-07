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
                const SizedBox(height: 420),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(
                      width: 270,
                      child: FloatingActionButton(
                        heroTag: "RedBox",
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Product(),
                            ),
                          );
                        },
                        backgroundColor: Colors.red,
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
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
