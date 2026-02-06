import 'package:app1/Pages/Inscription.dart';
import 'package:flutter/material.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5AA6),
      body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width *1,
                      height: MediaQuery.of(context).size.height *0.04
                  ),
                  Image.asset("assets/images/app logo apk 2.png",height: MediaQuery.of(context).size.height *0.4,width: MediaQuery.of(context).size.height *0.4,),

                  SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.9,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.sort_by_alpha,color:Colors.white),
                          label: Text("Nom d'utilisateur",style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.045),),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.9,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Colors.white),
                          label: Text("Mot de passe",style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.045),),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height *0.06,
                    width: MediaQuery.of(context).size.width *0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.2))
                    ),
                    child: Text("Se connecter",style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.043,fontFamily: "Poppins",color: Color(0xFF2E5AA6)),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.03),

                  Container(
                    width: MediaQuery.of(context).size.width *0.6,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xFF2E5AA6),width:MediaQuery.of(context).size.width *0.0065 )
                        )
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.02),
                  Container(
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width *1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text("Pas encore de \ncompte ? ",textAlign: TextAlign.center,style: TextStyle(fontFamily: "poppins",fontSize: MediaQuery.of(context).size.width *0.043,color: Colors.white60),),
                            TextButton(onPressed: (){
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>InscriptionPage()), (route)=>false);
                            }, child: Text("s'inscire",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.043),))
                          ]
                      )
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.36),
                child: Text("BEFLÊMI KOUADIO",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: Colors.white),),
              ),

              Container(
                  alignment: Alignment.center,
                  child:Container(
                    height:MediaQuery.of(context).size.height *0.05,
                    width: MediaQuery.of(context).size.width *0.35,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color:Colors.white ,width:MediaQuery.of(context).size.width *0.007 ))
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.06),
                    child: Text("Connexion",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color:Colors.white),),)

              )
            ],
          )
      )
    );
  }
}
