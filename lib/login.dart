import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'firstPage.dart';
import 'Page2.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    initState();
  }
  Widget build(BuildContext ctxt) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.navigate_next,
                color: Colors.purple,
                size: 40,
              ),
              onPressed: () {
                Navigator.push(
                  ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new FirstScreen()),
                );
              }
          )
        ],
        leading:
        IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.purple,
              size: 40,
            ),
            onPressed: (){
              Navigator.push(
                ctxt,
                new MaterialPageRoute(builder: (ctxt) => new Page2()),
              );
            }
        ),
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          children: [

              Padding(
                  padding: EdgeInsets.only(right: 100),
                  child:
                  Container(
                    padding: EdgeInsets.all(8.0),
                    width: MediaQuery.of(ctxt).size.width,
                    // constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0)
                      ),

                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        colors: <Color>[
                          Color(0x5b5b5b5b),
                          Color(0xFFBA68C8),
                        ], // Gradient from https://learnui.design/tools/gradient-generator.html
                        tileMode: TileMode.mirror,
                      ),
                    ),
                    // height: 50,
                    child: Text(
                      ' Welcome back',
                      style: TextStyle(
                        // backgroundColor: Colors.grey,
                        fontFamily: 'Gabriela',
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 33,
                      ),
                    ),
                  )
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children:[
                    SizedBox(height: 50,),
                    Container(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Login your account',
                        style: TextStyle(
                          // backgroundColor: Colors.white,
                            fontFamily: 'Gabriela',
                            color: Colors.purple,
                            //fontStyle: FontStyle.italic,
                            fontSize: 30),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: nameController,
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.purple),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.purple),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.red),
                                  ),
                                  labelText:'Username',
                                  labelStyle:TextStyle(
                                    fontSize: 20,
                                    color:Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: TextField(
                                obscureText: true,
                                controller: passwordController,
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.purple),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.purple),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.red),
                                  ),
                                  labelText: 'Password',
                                  labelStyle:TextStyle(
                                    fontSize: 20,
                                    color:Colors.purple,
                                  ),

                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                //forgot password screen
                              },
                              child: Align(
                                alignment: Alignment.topLeft,
                                child:
                                const Text(
                                  'Forgot Password ?',
                                  style:TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Gabriela',
                                    fontStyle: FontStyle.italic,
                                    color:Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // height: 50,
                              // width: 50,
                                margin: EdgeInsets.only(right: 70, left: 70, top: 70),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    colors: <Color>[
                                      Color(0x5b5b5b5b),
                                      Color(0xFFBA68C8),
                                    ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                    tileMode: TileMode.mirror,
                                  ),
                                ),
                                child: ElevatedButton(

                                  child: Text('Login',
                                      style: TextStyle(
                                          fontFamily: 'Gabriela',
                                          fontStyle: FontStyle.italic,
                                          fontSize: 30
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                  ),
                                  // ),
                                  // ),
                                  onPressed: () {
                                    print(nameController.text);
                                    print(passwordController.text);
                                  },
                                )
                            ),
                            Row(
                              children: <Widget>[
                                TextButton(
                                  child: const Text(
                                    'Create Account',
                                    style: TextStyle(fontSize: 20,
                                      color:Colors.purple,),
                                  ),
                                  onPressed: () {
                                    //signup screen
                                  },
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ],
                        )
                    )
                  ]
              ),
            ],
          )
        )
    );
  }
}




