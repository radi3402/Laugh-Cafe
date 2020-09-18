import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

//Navigation Page
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('< < Navigation > >'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.grey,
                      Colors.blueGrey[900],
                    ]
                )
            ),
          ),
        Column(
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              // width: Checkbox.width,
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: FloatingActionButton.extended(
                heroTag: "button1",
                  // padding: EdgeInsets.all(20),
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => FunnyPage()));
                  },
                backgroundColor: Colors.blueGrey,
                  label: Text('Today\'s Special   ★', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
              ),
            ),
            ],
          ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: FloatingActionButton.extended(
                      heroTag: "button1",
                      // padding: EdgeInsets.all(20),
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => FunnyPage()));
                      },
                      backgroundColor: Colors.blueGrey,
                      label: Text('      Explore        🔭 ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: FloatingActionButton.extended(
                      heroTag: "button1",
                      // padding: EdgeInsets.all(20),
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => FunnyPage()));
                      },
                      backgroundColor: Colors.blueGrey,
                      label: Text( ' Subscriptions    🔔', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(

                  margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(19),
                      onPressed: (){},
                      color: Colors.blueGrey[50],
                      child: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.teal[300],
                        size: 30.0,
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(15),
                      onPressed: (){},
                      color: Colors.blueGrey[50],
                      child: Icon(
                        Icons.assignment_ind,
                        color: Colors.teal[300],
                        size: 35.0,
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(10),
                      onPressed: (){},
                      color: Colors.blueGrey[50],
                      child: Icon(
                        Icons.add,
                        color: Colors.teal[300],
                        size: 45.0,
                      )
                  ),
                ),
              ],
            ),
          ],
        ),

      ],

      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Text('click'),
      //   backgroundColor: Colors.red[600],
      // ),
    );
  }
}

// class FunnyPage extends StatefulWidget {
//   @override
//   _FunnyPageState createState() => _FunnyPageState();
// }
//
// class _FunnyPageState extends State<FunnyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text('Funny'),
//             backgroundColor: Colors.brown
//         )
//     );
//   }
// }



