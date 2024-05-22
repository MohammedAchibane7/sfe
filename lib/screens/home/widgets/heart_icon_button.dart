import 'package:flutter/material.dart';

class HeartIconButton extends StatelessWidget {
  final bool isfav;
  const HeartIconButton({super.key, required this.isfav});

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 30,
  height: 30,
  decoration: BoxDecoration(
    color: Colors.grey.withOpacity(0.2),
    shape: BoxShape.circle,
  ),
  child: Center(
    child: IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: () {
        // Add your onPressed function here
      },
      iconSize: 20,// Adjust the size of the icon
      icon: Icon(
        Icons.favorite,
        color: isfav ? Colors.red : Colors.grey,
      ),
    ),
  ),
);
  }
}
