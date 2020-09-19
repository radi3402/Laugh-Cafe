import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

//Explore Page
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore 🔭'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.brown[900],
                      Colors.brown[100],
                    ]
                )
            ),
          ),
          Column(
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(20),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FunnyPage()));
                      },
                      color: Colors.blueGrey,
                      child: Text('Funny', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                )
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(20),
                      onPressed: (){},
                      color: Colors.amber,
                      child: Text('Cringe', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue))
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(20),
                      onPressed: (){},
                      color: Colors.amber,
                      child: Text('Silly', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue))
                  ),
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(20),
                      onPressed: (){},
                      color: Colors.amber,
                      child: Text('Dark', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue))
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(20),
                      onPressed: (){},
                      color: Colors.amber,
                      child: Text('SUPER Silly', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue))
                  ),
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                      padding: EdgeInsets.all(20),
                      onPressed: (){},
                      color: Colors.amber,
                      child: Text('Experimental', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue))
                  ),
                )
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

class FunnyPage extends StatefulWidget {
  @override
  _FunnyPageState createState() => _FunnyPageState();
}

class _FunnyPageState extends State<FunnyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Funny'),
        backgroundColor: Colors.brown
      )
    );
  }
}

