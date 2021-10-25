import 'package:flutter/material.dart';

class ClubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Container(
            height: 200,
            width: 150,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Kidimbwi',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.grey.shade500, width: 1.0),
            )),
            child: ListTile(
              leading: Text(
                'Entrance fee',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Text(
                '10,000',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.grey.shade500, width: 1.0),
            )),
            child: ListTile(
                leading: Text(
                  'Alcohol Price',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Icon(
                  Icons.star,
                  color: Colors.yellow.shade400,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.grey.shade500, width: 1.0),
            )),
            child: ListTile(
              leading: Text(
                'Current Krowd members',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Text(
                '10',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'View menu',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          )
        ],
      ),
    );
  }
}
