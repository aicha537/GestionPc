import 'package:flutter/material.dart';

const String quicksand = 'Quicksand';

class FormulAttribution extends StatelessWidget {
  const FormulAttribution({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFFB133),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 36.0,
                    horizontal: 24.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Formulaire",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: quicksand,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Expanded(
                    flex: 5,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0), // Ajustez la valeur en fonction de vos besoins
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 240, 146, 6),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 30,
                                      color: Color.fromARGB(255, 254, 254, 253),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Bienvenue",
                                  style: TextStyle(
                                    color: Color(0xFFFFB133),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: quicksand,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Entrez les informations",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                                fontFamily: quicksand,
                              ),
                            ),
                            SizedBox(height: 20),
                            _buildTextFieldWithIcon(
                              hintText: 'Numéro matricule',
                              icon: Icons.perm_identity,
                            ),
                            _buildTextFieldWithIcon(
                              hintText: 'Nom complet',
                              icon: Icons.person,
                            ),
                            _buildTextFieldWithIcon(
                              hintText: 'Téléphone',
                              icon: Icons.phone,
                            ),
                            _buildTextFieldWithIcon(
                              hintText: 'Numéro de PC actuel',
                              icon: Icons.computer,
                            ),
                            _buildTextFieldWithIcon(
                              hintText:
                                  'Description (Raison du changement de PC)',
                              icon: Icons.description,
                              maxLines: 3,
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Ajoutez votre logique pour le bouton Soumettre
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFB133),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Soumettre',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcon({
    required String hintText,
    required IconData icon,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
