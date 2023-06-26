import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Flexible(
          child: AutoSizeText(
            'Criação de APPs com Flutter',
            minFontSize: 3,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Flexible(
          child: Text(
            'Prof. Fulano de Tal',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const Flexible(
          child: Text(
            'R\$ 22,90',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
