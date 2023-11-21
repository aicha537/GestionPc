import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Cette fonction sera appelée après la première frame après le build
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 400,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Stack avec le cercle et la photo de l'utilisateur
                Stack(
                  children: [
                    // Conteneur pour la photo de l'utilisateur
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/user_photo.jpg'), // Remplacez par le chemin de la photo de l'utilisateur
                      ),
                    ),
                    // Positionnement du texte au-dessus du cercle
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Nom de l\'utilisateur',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'PC Actuel: 123',
                          ),
                          SizedBox(height: 5),
                          Text(
                            'PC Change: 456',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    Navigator.pop(context); // Ferme la bottom sheet
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Ok Fermé',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Image.asset("assets/images/background.png"),
          ),
        ],
      ),
    );
  }
}
