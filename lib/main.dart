import 'package:flutter/material.dart';
String result1="",result2="";
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String  username="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SmartDrive'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome to SmartDrive',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
              /*  FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),*/
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        username=nameController.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstRoute(username: username)),
                        );
                      },
                    )),
              /*  Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))*/
              ],
            )));
  }
}

// class SecondRoute extends StatelessWidget {
//   final String username;
//   SecondRoute({this.username});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Welcome"),
//       ),
//       body: Center(
        
//         //
//         child: new Column(
//           children: <Widget>[
//         Text('Hello $username'),
//         RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//             // Navigate back to first route when tapped.
//           },
//           child: Text('Sign out!'),
//         ),
//           ],
//         )
//       ),
//     );
//   }
// }



class SecondRoute extends StatefulWidget{
  // final String username;
  // SecondPage({this.username});
  @override
  MyTextInputState createState() => new MyTextInputState();
}


class FirstRoute extends StatelessWidget {
  final String username;
  FirstRoute({this.username});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('SafeDrive🚙'),automaticallyImplyLeading: false),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Hello $username'),
                new IconButton(
                  icon: Icon(Icons.settings_applications,color: Colors.redAccent,),
                  iconSize: 70.0,
                  onPressed: () {/*Route route = MaterialPageRoute(builder: (context) => SecondPage());
                                Navigator.pushReplacement(context, route);//Navigator.of(context).pushNamed('/SecondPage');*/
                                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute()));
                                },
                ),
                new Text('Set Profile'),
                new IconButton(
                  icon: Icon(Icons.local_car_wash,color: Colors.redAccent,),
                  iconSize: 70.0,
                  onPressed:  () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdRoute()));}
                ),
                new Text('Lets Drive'),
                new IconButton(
                  icon: Icon(Icons.close,color: Colors.redAccent,),
                  iconSize: 70.0,
                  onPressed:  () {Navigator.pop(context);}
                ),
                new Text('Sign Out')
                
              ],
            ),
          ),
        )
        
      );
    
  }
}


class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Drive....'),),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              new Text('Lets Drive'),
              new Image(image: AssetImage('assets/car.gif'))
              ],
            ),
          ),
        )
        
      );
    
  }
}




class MyTextInputState extends State<SecondRoute>{
  final TextEditingController controller1=new TextEditingController()..text=(result1);
  final TextEditingController controller2=new TextEditingController()..text=result2;
  //String result1="",result2=""
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Profile🔩'),
        backgroundColor:Colors.deepOrange),
      body: new Container(
        child: 
          new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          new Text('Enter your contact number'),
          new TextField(
            decoration: new InputDecoration(
              //hintText:result1,
              //labelText: result1,
              semanticCounterText:  result1
            ),
            onSubmitted: (String str1){
              setState(() {
                result1=str1;
                //controller1.text='9999';
                //print("HELOOOO");
              });
            },
            controller: controller1,),
          //new Text(result1),
          SizedBox(height: 90),
          new Text('Enter your emergency contact'),
          new TextField(
            decoration: new InputDecoration(
              //hintText:result2,
              //labelText: result2,
              
            ),
            onSubmitted: (String str2){
              setState(() {
                result2=str2;
                //controller2.text='';
              });
            },
            controller: controller2,),
            
          //new Text(result2),
          SizedBox(height: 90),
          // new Container(
          //   child: 
          //   new Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: <Widget>[
          //                 new IconButton(
          //   icon: Icon(Icons.settings_applications,color: Colors.redAccent,),
          //   iconSize: 70.0,
          //   onPressed: () {},
          // )                
          //     ],
          //   ),
          // ),
          new IconButton(
            icon: Icon(Icons.save,color: Colors.redAccent,),
            iconSize: 70.0,
            alignment: Alignment.center,
            onPressed: () {/*Navigator.of(context).pushNamed('/');
            Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstPage()));
            */
            Navigator.pop(context);
            },
          )
        ],)
      ),)
    ;
  }
}