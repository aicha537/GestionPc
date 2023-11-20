import 'package:flutter/material.dart';


class InscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderImage(),
              SizedBox(height: 20),
              MiddleImage(), // Ajout de la deuxième image
              SizedBox(height: 20),
              FormContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Group 3955.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Text(
          'Inscription',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Inria Serif',
          ),
        ),
      ),
    );
  }
}

class MiddleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/young_man_with_laptop_on_chair.png'), // Correction du chemin de l'image
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Couleur de fond gris
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CustomTextField(label: 'Email', icon: Icons.email),
          CustomTextField(label: 'Téléphone', icon: Icons.phone),
          CustomTextField(
            label: 'Mot de Passe',
            icon: Icons.lock,
            isPassword: true,
          ),
          CustomTextField(
            label: 'Confirmer Mot de Passe',
            icon: Icons.lock,
            isPassword: true,
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 20),
          Text(
            'Continuer avec',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Inria Serif',
              fontWeight: FontWeight.w400,
            ),
          ),
          SocialMediaIcons(),
          SizedBox(height: 20),
          InscrireButton(),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.icon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: UnderlineInputBorder(),
        prefixIcon: Icon(icon),
      ),
    );
  }
}

class InscrireButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action à effectuer lors du clic sur le bouton
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('S\'inscrire', style: TextStyle(color: Colors.white)),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_forward, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIcon(icon: Icons.facebook, color: Colors.blue),
        SocialMediaIcon(icon: Icons.link, color: Colors.red),
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const SocialMediaIcon({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
