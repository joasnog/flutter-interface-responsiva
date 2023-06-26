import 'package:flutter/material.dart';

import 'custom_search_field.dart';

class RegistrationCard extends StatelessWidget {
  final double? width;

  const RegistrationCard({
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(22),
        child: const Column(
          children: [
            Text(
              'Aprenda Flutter com este curso',
              style: TextStyle(
                height: 1.2,
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Por um valor acessível, você aprende Flutter com os melhores especialistas do Brasil. Comece agora mesmo.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
