import 'package:flutter/material.dart';
import 'package:interface_responsiva/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      centerTitle: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FlutterLogo(),
          const SizedBox(width: 8),
          const Text(
            'Flutter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                side: const BorderSide(width: 2, color: Colors.white),
              ),
              child: const Text(
                'Fazer Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                side: const BorderSide(width: 2, color: Colors.white),
              ),
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
