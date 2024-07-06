import 'package:flutter/material.dart';

class ConditionsWidget extends StatelessWidget {
  const ConditionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120), // Background color
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Container
            Container(
              color: const Color(0xFFFF5757), // Header color
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                'Conditions d\'utilisation', // Header title
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, // Header text color
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'En utilisant cette application, vous acceptez les conditions énoncées ci-dessous. Veuillez lire attentivement ces conditions avant d\'utiliser l\'application.',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Utilisation de l\'application :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'L\'application est destinée aux administrateurs de la salle de sport et aux clients. Les administrateurs peuvent gérer les activités de la salle, tandis que les clients peuvent accéder à leur compte, et consulter des informations sur la santé et le fitness.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Confidentialité des données :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Nous nous engageons à protéger la confidentialité des données personnelles des utilisateurs, conformément à notre politique de confidentialité.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Responsabilité :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'L\'utilisation de l\'application est à vos risques. Nous ne sommes pas responsables des dommages découlant de son utilisation.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Utilisation des installations :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Les clients doivent respecter les règles et règlements de la salle de sport lorsqu\'ils utilisent les installations.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Responsabilité des biens :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'La salle de sport n\'est pas responsable des pertes ou dommages causés aux biens personnels des clients lors de leur visite.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Comportement approprié :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Les clients doivent adopter un comportement approprié et respectueux envers le personnel et les autres membres de la salle de sport.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Conformité aux règles :',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Les clients doivent se conformer à toutes les règles et politiques de la salle de sport, telles que les horaires d\'ouverture, les règles de sécurité et les règles d\'hygiène.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
