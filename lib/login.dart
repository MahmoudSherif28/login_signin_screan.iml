import 'package:flutter/material.dart';
import 'package:login/signup.dart';
import 'signup.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
      ),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:Color(0xff60C0CB),
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff41E1BE),
                    Color(0xff60C0CB),
                  ],
                  begin: Alignment.bottomCenter,
                  end:  Alignment.topCenter,
                )
              ),
            ),
            SizedBox(height: 50,),
            Text("LOGIN",style: TextStyle(fontSize:40,fontWeight:FontWeight.bold,color: Color(0xff37ECBA),)),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                          ),
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:"EMAIL",
                            hintStyle: TextStyle(color:Colors.grey),
                            fillColor: Colors.white,
                          filled: true,
                          contentPadding:EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:Colors.white,
                              width:.1,
                            )
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                            ),
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock,color:Colors.grey,),
                            hintText:"PASSWORD",
                            hintStyle: TextStyle(color:Colors.grey),
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding:EdgeInsets.all(10),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:Colors.white,
                                  width:.1,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 4,),
                    Container(
                      child: Container(
                        child: Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text("Forgot password",style: TextStyle( fontSize: 15, color:Color(0xff37ECBA)),)),
                            Spacer(),
                            ElevatedButton(onPressed: (){}, child: Text("LOGIN",style: TextStyle(fontSize: 20),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff37ECBA),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10)
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (_)=>signup()));},
                  child: Text("SIGN UP",
                    style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff37ECBA),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15)
                  ) ,

                ),
              ],
            ),


              ],

        ),
      ) ,
      );
  }
}
