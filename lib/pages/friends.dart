import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:krowd_app/partials.dart';

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Friends',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              minLeadingWidth: 50,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'dantofey_14',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Dan Tofey',
                      style: TextStyle(color: Colors.grey.shade300, fontSize: 12),
                    )
                ],
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: HexColor('#C887DF')
                ),
                onPressed: (){},
                child: Text('Follow'),
                )
            ),
            ListTile(
              minLeadingWidth: 50,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'itoney_15',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Ivan Toney',
                      style: TextStyle(color: Colors.grey.shade300, fontSize: 12),
                    )
                ],
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: HexColor('#C887DF')
                ),
                onPressed: (){},
                child: Text('Follow'),
                )
            ),
            ListTile(
              minLeadingWidth: 50,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'sanchooooo',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Jadon Sancho',
                      style: TextStyle(color: Colors.grey.shade300, fontSize: 12),
                    )
                ],
              ),
              trailing: Icon(Icons.check_circle_sharp, color: Colors.purple.shade200,)
            ),
          ],
        ),
      ),
    );
  }
}
