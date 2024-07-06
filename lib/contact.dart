import 'package:flutter/material.dart';
import 'package:visu/icon/my_flutter_app_icons.dart';
import 'condition.dart';
import 'package:visu/link/lib/url_launcher.dart';

class ContactusWidget extends StatelessWidget {
  const ContactusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8F8E8E),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Nous contacter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF1C2120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
            buildContactItem(MyFlutterApp.gps_fixed, 'Google maps', Colors.white),
            SizedBox(height: 32),
            buildContactItem(MyFlutterApp.gmail, 'Email', Colors.white),
            SizedBox(height: 32),
            buildContactItem(MyFlutterApp.call, 'Nous appeler', Colors.white),
            SizedBox(height: 32),
            buildContactItem(MyFlutterApp.facebook_squared, 'Facebook', Colors.white),
            SizedBox(height: 32),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }

  Widget buildContactItem(IconData iconData, String label, Color iconColor) {
    return GestureDetector(
      onTap: () {
        if (label == 'Google maps') {
          launch('https://www.google.com/maps/place//data=!4m2!3m1!1s0x128d331bda2f36eb:0x6be34d9e2854228a');
        } else if (label == 'Email') {
          launch('mailto:test@example.com?subject=Subject&body=Body'); // Remplacez test@example.com par votre adresse email
        } else if (label == 'Nous appeler') {
          launch('tel://+123456789'); // Remplacez +123456789 par le numéro de téléphone souhaité
        } else if (label == 'Facebook') {
          launch('fb://profile/100063652522042'); // Ouvrir l'application Facebook avec le lien vers votre page Facebook
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Color(0xFFFF5757),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconData,
                color: iconColor,
                size: 36,
              ),
              SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}