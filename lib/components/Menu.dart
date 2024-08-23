import 'package:flutter/material.dart';
import 'package:mobile_app/screens/CardsPage.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(64, 0, 0, 0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: PopupMenuButton(
        color: const Color(0xFF1E3A3D),
        icon: const Icon(
          Icons.menu,
          size: 30,
          color: Colors.white,
        ),
        onSelected: (String rslt) {
          switch (rslt) {
            case 'Home':
              print('Home');
              break;
            case 'Profile':
              print('Profile');
              break;
            case 'Diagnosis':
              print('Diagnosis');
              break;
            case 'voice Reconstructor':
              print('voice Reconstructor');
              break;
            case 'Cards Game':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Cardspage();
                  },
                ),
              );
              break;
            case 'Exercises':
              print('Exercises');
              break;
          }
        },
        itemBuilder: (context) {
          return <PopupMenuEntry<String>>[
            const PopupMenuItem(
              value: 'Home',
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const PopupMenuItem(
              value: 'Profile',
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const PopupMenuItem(
              value: 'Diagnosis',
              child: Text(
                'Diagnosis',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const PopupMenuItem(
              value: 'voice Reconstructor',
              child: Text(
                'voice Reconstructor',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const PopupMenuItem(
              value: 'Cards Game',
              child: Text(
                'Cards Game',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const PopupMenuItem(
              value: 'Exercises',
              child: Text(
                'Exercises',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ];
        },
      ),
    );
  }
}
