import 'package:flutter/material.dart';
import 'condition.dart';
import 'contact.dart'; // Importer la page contact.dart
import 'gallerie.dart'; // Importer la page gallerie.dart

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              'https://i.pinimg.com/474x/df/02/30/df02301797468da149c8d7f0790b162d.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          SafeArea(
            child: SingleChildScrollView( // Utilisation de SingleChildScrollView
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header Container
                  Container(
                    color: const Color(0xFFFF5757),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      'A propos de la salle',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  // Description Text
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Bienvenue dans notre salle de sport, où le fitness rencontre la convivialité ! Avec nos équipements de pointe et nos programmes personnalisés, nous sommes là pour vous aider à atteindre vos objectifs. Rejoignez-nous pour une expérience fitness exceptionnelle dès aujourd\'hui !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  // Useful Links Text
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Pages utiles:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ConditionsWidget()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF5757), // Background color
                      ),
                      child: Text(
                        'Conditions d\'utilisation',
                        style: TextStyle(
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContactusWidget()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF5757), // Background color
                      ),
                      child: Text(
                        'Nous contacter',
                        style: TextStyle(
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GallerieWidget()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF5757), // Background color
                      ),
                      child: Text(
                        'Galerie',
                        style: TextStyle(
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).padding.bottom), // Ajout d'un espace pour éviter le débordement
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
