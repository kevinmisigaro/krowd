import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showSheet(context),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                image: NetworkImage(
                    'https://images.pexels.com/photos/2747446/pexels-photo-2747446.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'))),
        height: 120,
        margin: EdgeInsets.only(right: 10),
        width: 150,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: HexColor('#666666')),
                  padding: EdgeInsets.only(bottom: 5, left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bata Meetup',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Samaki Samaki',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '10:00 pm to 06:00 am',
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 52,
              left: 14,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: HexColor('#1F1F1F'),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      '10',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'Aug',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

showSheet(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.black,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Text(
                  'Nyamachoma Festival',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: HexColor('#C887DF'),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.timelapse,
                  color: Colors.grey.shade400,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mon, 8 July 2022',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '10:00 am - late',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.grey.shade400,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UCC Grounds',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sayansi Dar es Salaam',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.money,
                  color: Colors.grey.shade400,),
                title: Text(
                      '10,000 TZS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
              ),
              SizedBox(height: 20,),
              Text('About', style: TextStyle(color: Colors.white, fontSize: 15),),
              SizedBox(height: 5,),
              Text('Lorem ipsum et dolor sit cum sim uma guarda chuva, quid dum adonaris egeleterianum ignatus nunqum et labor proprio e cosmopolitaniraria eggletive id obtania sept ad astra', style: TextStyle(color: Colors.grey.shade300),)
            ],
          ),
        );
      });
}
