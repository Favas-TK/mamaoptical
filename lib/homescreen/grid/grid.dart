import 'package:flutter/material.dart';
import 'package:mama_optics/extra/res/const_widget.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                child: Image.asset('assets/images/eyeglasses 1.png'),
              ),
              CircleAvatar(
                child: Image.asset('assets/images/eyeglasses 1.png'),
              ),
              CircleAvatar(
                child: Image.asset('assets/images/eyeglasses 1.png'),
              ),
            
            ],
          ),
          space10,
          space10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                child: Image.asset('assets/images/eyeglasses 1.png'),
              ),
              CircleAvatar(
                child: Image.asset('assets/images/eyeglasses 1.png'),
              ),
              CircleAvatar(
                child: Image.asset('assets/images/eyeglasses 1.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
