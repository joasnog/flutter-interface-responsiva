import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';

import '../../custom_search_field.dart';
import '../../registration_card.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        // Web
        if (maxWidth >= Breakpoints.tablet) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 50,
                  child: RegistrationCard(
                    width: 450,
                  ),
                ),
              ],
            ),
          );
        }

        // Tablet
        if (maxWidth >= Breakpoints.mobile) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 20,
                  left: 20,
                  child: RegistrationCard(
                    width: 350,
                  ),
                ),
              ],
            ),
          );
        }

        // Mobile
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
          ],
        );
      },
    );
  }
}
