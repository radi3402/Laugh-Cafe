import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//Simple Front page for login/sign up 
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



//Page for signing up 
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    child: FlatButton(
                      onPressed: (){

                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child: Text('Sign Up', style: TextStyle(color: Colors.brown[700], fontSize: 20),),
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


//Page for logging in 
class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                    child: FlatButton(
                      onPressed: (){

                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child: Text('Log In', style: TextStyle(color: Colors.brown[700], fontSize: 20),),
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
