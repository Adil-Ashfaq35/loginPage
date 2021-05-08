
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.teal
      ),
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>with SingleTickerProviderStateMixin


{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
 @override
 void initState(){
   super.initState();
     _iconAnimationController = new AnimationController(
         vsync: this,
       duration: new Duration(milliseconds: 300)


     );
     _iconAnimation=new CurvedAnimation(parent: _iconAnimationController,
         curve: Curves.bounceInOut);
      _iconAnimation.addListener(() =>this.setState(() {}));
      _iconAnimationController.forward();

  }



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: new Stack(
        fit: StackFit.expand,
        children: [
          new Image(image:new  AssetImage(
            "assets/background1.jpg"
          ),
            fit: BoxFit.cover,

          color: Colors.red,
            colorBlendMode: BlendMode.darken,

          ),


        new Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            new FlutterLogo(
                size: _iconAnimation.value*100


            ),
            new Form(child:Theme(
                data: new ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.teal,
                  inputDecorationTheme: new InputDecorationTheme(
                    labelStyle: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,


                    )
                  )
                ),

                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 50.0),

                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Email or Phone"




                        ),
                         keyboardType: TextInputType.emailAddress,

                       ),
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Password"
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,


                      ),
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      new MaterialButton(
                            height: 50.0,
                        minWidth: 100.0,

                        color: Colors.teal,
                        textColor: Colors.white,
                        child:new Text("Login" ,
                        ),
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),

                ),

              ),

            ),
          ],
        ),
    ],
      ),
    );
  }
}




