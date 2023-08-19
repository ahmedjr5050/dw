import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/ServicesItem.dart';
import 'PagePdf.dart';

class Filteration extends StatelessWidget {
  const Filteration({super.key});
  static String id = 'Filteration';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
          backgroundColor: Colors.grey[600],
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/images/return.svg'),
            ),
            const SizedBox(width: 34),
            const Text(
              "Filteration",
              style: TextStyle(
                color: Color(0xff300759),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ])),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                SingleChildScrollView(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Filteration.id);
                    },
                    child: ServiceItem(
                      image:
                          'assets/images/WhatsApp Image 2023-08-04 at 18.52.58_640x640.jpg',
                      text: 'Mécanique planifié',
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PageForPdf.id);
                    },
                    child: ServiceItem(
                      image:
                          'assets/images/WhatsApp Image 2023-08-04 at 18.53.42_640x640.jpg',
                      text: 'Maintenence systèmatique',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Filteration.id);
                  },
                  child: ServiceItem(
                    image:
                        'assets/images/WhatsApp Image 2023-08-04 at 18.54.11_640x640.jpg',
                    text: 'Convoyeurs',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Filteration.id);
                  },
                  child: ServiceItem(
                    image:
                        'assets/images/WhatsApp Image 2023-08-04 at 19.00.57_640x640.jpg',
                    text: 'Graissage',
                  ),
                ),
                SingleChildScrollView(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Filteration.id);
                    },
                    child: ServiceItem(
                      image:
                          'assets/images/WhatsApp Image 2023-08-04 at 19.01.24_593x640.jpg',
                      text: 'Réversion générale',
                    ),
                  ),
                ),
                ServiceItem(
                  image:
                      'assets/images/WhatsApp Image 2023-08-04 at 19.01.40_638x640.jpg',
                  text: 'Safety',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
