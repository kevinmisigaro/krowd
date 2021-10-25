import 'package:flutter/material.dart';
import 'package:krowd_app/partials.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.white, fontSize: 18);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(avatarUrl),
              radius: 40,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'kunbata',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Text(
              'Account',
              style: textStyle,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          ListTile(
            leading: Text(
              'Friends',
              style: textStyle,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 30.0,
            ),
            onTap:() => Navigator.pushNamed(context, '/friends'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/notifications'),
            leading: Text(
              'Notifications',
              style: textStyle,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          ListTile(
            leading: Text(
              'Privacy',
              style: textStyle,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          ListTile(
            leading: Text(
              'About',
              style: textStyle,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
