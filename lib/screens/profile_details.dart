import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext mainContext) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            width: MediaQuery.of(mainContext).size.width,
            height: MediaQuery.of(mainContext).size.height * 0.4,
          ),
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(mainContext).size.width,
              height: MediaQuery.of(mainContext).size.height * 0.6,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Material(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Hamza, 22', style: TextStyle(fontSize: 30)),
                    const Text('punjab,pakistan,    5.5',
                        style: TextStyle(fontSize: 25)),
                    const Text('Muslim, Mahar', style: TextStyle(fontSize: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.breakfast_dining),
                        Text(
                          'Markeeting manager in london',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.breakfast_dining),
                        Text('Markeeting manager in london',
                            style: TextStyle(fontSize: 20))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('creativity', style: TextStyle(fontSize: 20))
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: <Widget>[
                        Container(

                        width: 200.0,
                        color: Colors.red,
                      ),
                      Container(
                        width: 200.0,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.green,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                  ],

                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          //   _profileDetails()
        ],
      ),
    );
  }

  _profileDetails(
      {String? name,
      int? age,
      String? location,
      String? height,
      String? jobTile,
      String? religion,
      String? caste,
      String? smoke,
      String? creativity,
      String? sports,
      String? starSign,
      List? String}) {
    return Container(
      width: double.infinity,
      // height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Hamza, 22', style: TextStyle(fontSize: 30)),
          Text('punjab,pakistan,    5.5', style: TextStyle(fontSize: 25)),
          Text('Muslim, Mahar', style: TextStyle(fontSize: 30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.breakfast_dining),
              Text(
                'Markeeting manager in london',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.breakfast_dining),
              Text('Markeeting manager in london',
                  style: TextStyle(fontSize: 20))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('creativity', style: TextStyle(fontSize: 20))],
          )
        ],
      ),
    );
  }
}
