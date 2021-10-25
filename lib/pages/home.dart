import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:krowd_app/partials.dart';
import 'package:krowd_app/widgets/eventcard.dart';
import 'package:krowd_app/widgets/recommendation_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: [
          Text(
            '29 October 2021',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Tonight\'s recommendations',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) => RecommendationCard())),
          SizedBox(
            height: 20,
          ),
          Text(
            'Upcoming',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) => EventCard())),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: HexColor('#C887DF')),
                onPressed: () => Navigator.pushNamed(context, '/events'),
                child: Text(
                  'See More',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Friends',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (_, index) => Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(avatarUrl),
                          radius: 40,
                        ),
                      ))),
        ],
      ),
    );
  }
}

