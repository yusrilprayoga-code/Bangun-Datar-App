import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  const Component({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
