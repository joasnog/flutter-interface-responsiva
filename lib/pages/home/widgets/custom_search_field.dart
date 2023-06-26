import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        hintStyle: const TextStyle(color: Colors.white),
        hintText: 'Digite o seu E-mail',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.white,
        ),
      ),
    );
  }
}
