import 'package:eppointer/UI/stores_list.dart';
import 'package:eppointer/pages/profile.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Theme.of(context).accentColor,
                      //size:24.0,
                    ),
                    Text(
                      'Vile Parle West',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 2),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                        child: CircleAvatar(
                            //backgroundColor: Colors.white,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xFF2E3131),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text(
                        'Search Through Appointments',
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Spacer(flex: 2),
                    Expanded(
                      child: Icon(Icons.search,
                          color: Theme.of(context).accentColor),
                    ),
                  ],
                ),
              ),
              /*Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Text(
                      'Saved Places',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
              */
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                child: Row(children: <Widget>[
                  Text(
                    'Saved Places',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(flex: 5),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => print('See All'),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ),
                  ),
                ]),
              ),
              StoresList(),
            ],
          ),
        ),
      ),
    );
  }
}
