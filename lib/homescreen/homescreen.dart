import 'package:flutter/material.dart';
import 'package:mama_optics/homescreen/grid/grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 242, 126, 81),
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
                bottomLeft: Radius.circular(80),
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Image.asset('assets/logo/WhatsAppImage.png'),
                TextField(
                  cursorHeight: 25,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Where do..?',
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text('Eye care'),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text('Talk to expert'),
                )
              ],
            ),
          ),
          Container(
            child: Image.asset(
                'assets/images/WhatsApp Image 2022-11-29 at 2.25 3.png'),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 223, 105, 63)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          onPressed: () {},
                          child: const Text('men'),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 223, 105, 63)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          // textColor: Colors.white,

                          onPressed: () {},

                          child: const Text('women'),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 223, 105, 63)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          onPressed: () {},
                          child: const Text('kids'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Grid(),
        ],
      ),
    );
  }
}
