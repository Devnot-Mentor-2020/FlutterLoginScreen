import 'package:flutter/material.dart';
import 'package:login_ui/strings/strings.dart';
import 'package:login_ui/style/textstyle.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState(); 
}
final kullaniciAdi=TextEditingController();
final sifre=TextEditingController();
class _LoginPageState extends State<LoginPage>{

  void alertDialogs(BuildContext context){
    var alertDialog=AlertDialog(
      title: Text("Username: "+kullaniciAdi.text),
            content: Text("Password: "+ sifre.text),
          );
          showDialog(context: context,
          builder: (BuildContext context){
            return alertDialog;
          }
          );
        }
        
        @override
        Widget build(BuildContext context){          
          return Scaffold(
            appBar:AppBar(      
                elevation: 0,
                backgroundColor: Colors.white,   
                title: BackButton( onPressed: (){},color: Colors.black,)      
            ),
            body: Center(             
                child: Container(                 
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child:SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(Strings.ViewTitle, style: titleStyle,),
                            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                            Text(Strings.SingInContinue,style: title2Style),
                            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                            Text(Strings.UserName, style:inputTitle),
                            TextFormField(             
                                 controller: kullaniciAdi, 
                                 decoration: InputDecoration(                               
                                 hintText: Strings.EnterUserName,
                                 hintStyle: inputHintText
                                  ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Text(Strings.Password,style:inputTitle ),
                            TextFormField(      
                                controller: sifre,
                                 obscureText: true,           
                                 decoration: InputDecoration(                               
                                 hintText: Strings.EnterPassword,
                                 hintStyle: inputHintText
                                  ),
                              ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(Strings.ForgotPassword,style:forgotPass)
                              ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                              Center(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width*1/1.3,
                                  height: MediaQuery.of(context).size.height*1/12,                                  
                                    child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                    onPressed: (){
                                        alertDialogs(context);
                                    },
                                    color: Colors.pink.shade200,
                                    child: Text(Strings.Login,style: loginStyle),
                                    ),     
                                ),
                              )
                        ],
                      ),
                    ),
                  ),
                ),
            )
          );
        }        
      }
      
      

