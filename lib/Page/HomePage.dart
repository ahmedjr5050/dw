import 'package:dw/Page/Filteration.dart';
import 'package:flutter/material.dart';

import '../utils/ServicesItem.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100, top: 30),
            child: Text('Which service \ndo you need?',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(height: 0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Filteration.id);
                  },
                  child: ServiceItem(
                    image: 'assets/images/Filteration (1).jpg',
                    text: 'Filtration',
                  ),
                ),
                ServiceItem(
                  image: 'assets/images/sechage.jpg',
                  text: 'Séchage',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
