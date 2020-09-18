import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.brown[900],
                      Colors.brown[300],
                    ]
                )
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 220, 0, 0),
                child: Icon(Icons.local_cafe, color: Colors.white, size: 200,),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Text('Laugh Cafe',
                  style: TextStyle(color: Colors.white,
                      fontSize: 50, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 500, 0, 0),
                width: 170,
                height: 50,
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage()));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Text('Log In', style: TextStyle(color: Colors.brown[700], fontSize: 20),),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 500, 0, 0),
                width: 170,
                height: 50,
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Text('Sign Up', style: TextStyle(color: Colors.brown[700], fontSize: 20),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final myControllerEmail = TextEditingController();
  final myControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.brown[900],
                          Colors.brown[300],
                        ]
                    )
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Text('Sign Up',
                      style: TextStyle(color: Colors.white,
                        fontSize: 50, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 235, 0, 0),
                    child: Text('Email', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
                        width: 350,
                        child: TextField(
                          controller: myControllerEmail,
                          decoration: InputDecoration(
                            hintText: ' example@gmail.com',
                            prefixIcon: Icon(Icons.mail_outline,),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text('Password', style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        width: 350,
                        child: TextField(
                          controller: myControllerPassword,
                          decoration: InputDecoration(
                            hintText: ' password',
                            prefixIcon: Icon(Icons.vpn_key,),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 125, 0, 0),
                    child: Builder(
                      builder: (context) => FlatButton(
                        onPressed: (){
                          print(myControllerEmail.text);
                          if(myControllerPassword.text == '' || myControllerEmail.text == ''){
                            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Please enter the required information.')));
                          }
                          else{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                          }
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        child: Text('Sign Up', style: TextStyle(color: Colors.brown[700], fontSize: 20),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],

      ),
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final myControllerEmail = TextEditingController();
  final myControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      body: ListView(
        children: [
          Stack(
            children: [

              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.brown[900],
                          Colors.brown[300],
                        ]
                    )
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Text('Log In',
                      style: TextStyle(color: Colors.white,
                        fontSize: 50, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 235, 0, 0),
                    child: Text('Email', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
                        width: 350,
                        child: TextField(
                          controller: myControllerEmail,
                          decoration: InputDecoration(
                            hintText: ' example@gmail.com',
                            prefixIcon: Icon(Icons.mail_outline,),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text('Password', style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        width: 350,
                        child: TextField(
                          controller: myControllerPassword,
                          decoration: InputDecoration(
                            hintText: ' password',
                            prefixIcon: Icon(Icons.vpn_key,),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 125, 0, 0),
                    child: Builder(builder: (context) => FlatButton(
                      onPressed: (){
                        if(myControllerPassword.text == '' || myControllerEmail.text == ''){
                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Please enter the required information.')));
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                        }
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child: Text('Log In', style: TextStyle(color: Colors.brown[700], fontSize: 20),),
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> memeImages = [
  'https://i.pinimg.com/originals/f7/ae/e8/f7aee8753832af613b63e51d5f07011a.jpg',
  'https://i.pinimg.com/736x/ce/c0/74/cec074ab85ddb1b716c8ea9ed2a79d4f.jpg',
  'https://wallpaperaccess.com/full/636909.jpg',
  ];
  Widget buildCarousel(images){
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://images.squarespace-cdn.com/content/5b47794f96d4553780daae3b/1531516790942-VFS0XZE207OEYBLVYR99/profile-placeholder.jpg?content-type=image%2Fjpeg'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text('UserName', style: TextStyle(color: Colors.brown, fontSize: 16, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(160, 5, 10, 5),
              child: OutlineButton(
                color: Colors.brown,
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Text('Subscribe', style: TextStyle(color: Colors.brown),),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 465,
          child: Image(
            image: NetworkImage('$images'),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.brown,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  color: Colors.brown,
                  child: Icon(Icons.favorite, color: Colors.white, size: 45,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  color: Colors.brown,
                  child: Icon(Icons.comment, color: Colors.white, size: 45,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  color: Colors.brown,
                  child: Icon(Icons.share, color: Colors.white, size: 45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              color: Colors.brown,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text('Today\'s Specials', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 30,),
                  ),
                ],
              ),
            ),
          ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height - 90,
           child: ListView(
             padding: EdgeInsets.all(0),
             scrollDirection: Axis.vertical,
             children: memeImages.map((images) => buildCarousel(images)).toList(),
           ),
         ),
        ],
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
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

class NavigationPage extends StatelessWidget {
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
                        heroTag: "button3",
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
                        heroTag: 'button1',
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
                        heroTag: 'button2',
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




