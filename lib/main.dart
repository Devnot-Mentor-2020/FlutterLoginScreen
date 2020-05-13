import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(      
          elevation: 0,
          backgroundColor: Colors.white,   
          title: BackButton( onPressed: (){},color: Colors.black,)      
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 30,
                    
                    color: Colors.black
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                  "Sing in to continue",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26
                  ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 20
                    )
                    ,),
                  TextFormField(                            
                       decoration: InputDecoration(                               
                       hintText: "Enter your username ",
                      hintStyle: TextStyle(color: Colors.black26)
                        ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 20
                    )
                    ,),
                  TextFormField(                 
                    obscureText: true,           
                       decoration: InputDecoration(                               
                       hintText: "Enter your password ",
                      hintStyle: TextStyle(color: Colors.black26)
                        ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                    ),
                    SizedBox(height: 50,),
                    Center(
                      child: SizedBox(
                        width: 270,
                        height: 45,
                        
                          child: RaisedButton(
                          shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                          onPressed: (){},
                          color: Colors.pink.shade200,
                          child: Text("Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                          ),),
                          ),
                          
                      ),
                    )
                    

              ],
            ),
            
          ),
      )
        
        
      ),
    );
    
  }
}

