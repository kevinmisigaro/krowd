import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showSheet(context),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                image: NetworkImage(
                    'https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'))),
        height: 120,
        margin: EdgeInsets.only(right: 10),
        width: 150,
        child: Stack(
          children: [
            Positioned(
                bottom: 10,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(bottom: 5, left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Havoc',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
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
                  'Havoc',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
        
              ),
              ListTile(
                leading: Icon(
                  Icons.timelapse,
                  color: Colors.grey.shade400,
                ),
                title: Text(
                      '10:00 am - late',
                      style: TextStyle(color: Colors.white, fontSize: 15,
                      fontWeight: FontWeight.bold),
                    )
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.grey.shade400,
                ),
                title: Text(
                      'Sayansi Dar es Salaam',
                      style: TextStyle(color: Colors.white, fontSize: 15,
                      fontWeight: FontWeight.bold),
                    )
              ),
              ListTile(
                leading: Icon(
                  Icons.money,
                  color: Colors.grey.shade400,
                ),
                title: Text(
                  '10,000 TZS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'About',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum et dolor sit cum sim uma guarda chuva, quid dum adonaris egeleterianum ignatus nunqum et labor proprio e cosmopolitaniraria eggletive id obtania sept ad astra',
                style: TextStyle(color: Colors.grey.shade300),
              )
            ],
          ),
        );
      });
}
