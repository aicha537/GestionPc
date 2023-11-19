import 'package:flutter/material.dart';

void main() {
  runApp(AccueilPage());
}

class AccueilPage extends StatelessWidget {
  List imgSrc=[
    "images/pc.png",
    "images/Demande.png",
    "images/notification.png",
    "image/historique.png",
  ]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.32,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // Ajoutez votre action ici
                          },
                          child: Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profil.jfif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cher Aicha",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "dernièrement le 18 Novembre 2022",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white54,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Recherche',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.431,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.43,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    ),
                  ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2, 
                    childAspectRatio: 1.1,
                mainAxisSpacing: 25,
                    ),
                  
                shrinkWrap: true,
                
                physics: NeverScrollableScrollPhysics(),
                itemCount:6 ,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical:8, horizontal:20),
                      decoration: BoxDecoration (
                        border: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 6,
                          )
                        ],
                      ),
                      child:Column(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                        chidren:[
                          Image.asset("name")
                      
                        ]
                        
                      )
                    ) ,
                  )
                }
                
                ),
                ),
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
