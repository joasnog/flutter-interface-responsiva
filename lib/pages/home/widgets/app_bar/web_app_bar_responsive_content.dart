import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquisar',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: constraints.maxWidth >= 400,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Aprender',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: constraints.maxWidth >= 500,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
