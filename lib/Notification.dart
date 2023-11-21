import 'package:flutter/material.dart';
import 'package:gestionpc/DetailPage.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width / 1.25;

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width / 1.5;

  double getSmallerDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width / 1.75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallerDiameter(context) / 3,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFF8A435), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 4,
            top: -getSmallerDiameter(context) / 4,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallerDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFF8A435), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/admin.jfif'),
                        ),
                      ),
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
                            '5',
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
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/admin.jfif'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                // Navigate to the detail page when the icon is clicked
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(),
                                  ),
                                );
                              },
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Date: 20/11/2023',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
