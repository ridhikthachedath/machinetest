import 'package:flutter/material.dart';
class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F674906694147195756%2F&psig=AOvVaw1XSYu1vheHv1LuQu-eT-ZX&ust=1654334574366000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLC6ou-okfgCFQAAAAAdAAAAABAF")
    ),
        ),
      child: Column(
          children: [
          Container(
          height: 150,
          child:Center (
            child: Text("A kitten is a juvenile cat. After being born, kittens display primary altriciality and are totally dependent on their mothers for survival. They normally do not open their eyes for seven to ten days. After about two weeks, kittens develop quickly and begin to explore the world outside their nest"),
          )
      ),
  ]
    ),

    );
  }
}
