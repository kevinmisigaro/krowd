import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:krowd_app/pages/event.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Recommendations',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.7),
                                  BlendMode.dstATop),
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/2747446/pexels-photo-2747446.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'))),
                      height: 120,
                      margin: EdgeInsets.only(right: 15),
                      width: 150,
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: HexColor('#666666')),
                                
                                padding: EdgeInsets.only(
                                    bottom: 5, left: 10, top: 10, right: 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bata Meetup',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Samaki Samaki',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '10:00 pm to 06:00 am',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9),
                                    ),
                                  ],
                                ),
                              )),
                          Positioned(
                            bottom: 52,
                            left: 14,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: HexColor('#1F1F1F'),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Column(
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  Text(
                                    'Aug',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => EventPage()),
                        ));
              }),
        ));
  }
}
