import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container contenant le cercle rouge avec le nombre de notifications
        Container(
          width: 50, // Ajustez la taille du conteneur selon vos besoins
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          child: Stack(
            children: [
              // Photo de l'administrateur au centre du cercle rouge
              Center(
                child: CircleAvatar(
                  radius: 20, // Ajustez la taille du cercle selon vos besoins
                  backgroundImage: AssetImage('assets/admin.jfif'), // Remplacez par le chemin de la vraie photo
                ),
              ),
              // Nombre de notifications au coin supérieur droit du cercle rouge
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Text(
                    '5', // Remplacez par le nombre réel de notifications
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10), // Espace entre le cercle de notification et le texte

        // Zone de texte avec le message de notification (lorem ipsum pour l'instant)
        Container(
          padding: EdgeInsets.all(10),
          width: 200, // Ajustez la largeur du conteneur selon vos besoins
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Texte du message (lorem ipsum pour l'instant)
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5), // Espace entre le texte et l'icône d'affichage des détails
              // Icône d'affichage des détails
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              SizedBox(height: 5), // Espace entre l'icône et la date
              // Date de notification
              Text(
                'Date: 20/11/2023', // Remplacez par la date réelle
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
