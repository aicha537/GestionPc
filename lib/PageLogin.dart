import 'package:flutter/material.dart';
import 'package:gestionpc/Inscription.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Entête avec une image qui occupe toute la largeur
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/login1.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -70, // Ajustez cette valeur pour changer la position verticale
                      left: MediaQuery.of(context).size.width / 4,
                      right: MediaQuery.of(context).size.width / 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .4,
                        height: MediaQuery.of(context).size.height * .4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/Login2.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
              // Formulaire avec deux champs et boutons
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Champ "Pseudo" avec son icône dans une bordure
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Pseudo',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    // Champ "Mot de passe" avec son icône dans une bordure
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Mot de passe',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    // Bouton "Connecter" avec bordure arrondie
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Ajoutez ici le code de connexion
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Se Connecter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Liens "Mot de passe oublié" et "Inscrivez-vous"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InscriptionPage()),
                      );
                    },
                        
                          child: Text(
                            'Mot de passe oublié?',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Ajoutez ici le code pour l'inscription
                          },
                          child: Text(
                            'Inscrivez-vous',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(LoginPage());
}
