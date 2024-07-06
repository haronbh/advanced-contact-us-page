import 'package:flutter/material.dart';

class GallerieWidget extends StatelessWidget {
  const GallerieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5757),
        title: Text(
          'Galerie',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildImage(context, 'lib/images/1.jpg'),
          _buildImage(context, 'lib/images/2.jpg'),
          _buildImage(context, 'lib/images/3.jpg'),
          _buildImage(context, 'lib/images/4.jpg'),
          _buildImage(context, 'lib/images/5.jpg'),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () {
        // Afficher l'image en taille complète
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FullScreenImage(imagePath)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16), // Ajouter un espacement entre les images
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red, // Bordure rouge
            width: 2, // Épaisseur de la bordure
          ),
        ),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover, // Ajuster l'image pour couvrir le conteneur
          height: 150, // Hauteur fixe de l'image
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imagePath;

  const FullScreenImage(this.imagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5757),
        title: Text(
          'Image',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain, // Afficher l'image en taille complète
        ),
      ),
    );
  }
}
