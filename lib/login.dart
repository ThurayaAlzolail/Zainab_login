import 'package:flutter/material.dart';
import 'package:zainab_login/sign.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;

    return  Scaffold(
      body:SafeArea(
          child: Container(
            width: width,
            padding:  const EdgeInsets.symmetric(
              horizontal: 20.0
            ),
            child:  Stack(
              children: [
                
                SingleChildScrollView(
                  child:SizedBox(
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.center ,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: const Column(
                            children: [
                              Text('Welcome',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 40.0,
                               fontWeight: FontWeight.bold

                              ),
                              ),
                              Text('Please login to continue',
                              style: TextStyle(
                                color: Colors.green,                        
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),),
                            ],
                          ),
                        ),
                         const SizedBox(
                          height: 20.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_rounded,
                            color: Colors.green,
                            ),
                            hintText: 'Email Address',
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.all(Radius.circular(40.0))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40.0)
                              ),
                              borderSide: BorderSide(color: Colors.green)
                            ),
                            ),

                        ),
                        
                        const SizedBox(
                          height: 15.0,
                        ),

                        const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_open_outlined,
                            color: Colors.green,
                            ),
                            hintText: 'Enter password',
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.all(Radius.circular(40.0))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40.0)),
                              borderSide: BorderSide(color: Colors.green)
                            )
                            ),

                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          width: width,


                          child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                padding: const EdgeInsets.symmetric( vertical: 20.0),
                                  shape:const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(40.0),
                                      topLeft: Radius.circular(40.0)
                                    )
                                  )

                                
                              ),
                              child: const Text('LOGIN',
                              style: TextStyle(
                              color: Colors.white,),
                              ),
                              
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 30.0),
                          child: const Row(
                            children: [
                              Expanded(child: Divider(indent: 1.0,
                              color: Colors.black38,)),
                            Text('OR'),
                            Expanded(child: Divider(indent: 1.0,
                              color: Colors.black38,)),
                            ],
                          ),
                        ),
                         Row(
                          children: [
                            const Text('Do create your account'), 
                            const SizedBox(
                              width: 5.0,

                            ),                          
                            InkWell(
                              onTap: () => Navigator.push(
                                context, MaterialPageRoute(builder: (context) => 
                              const Sign()
                              ),
                              ),
                              child: const Text('Register',style: TextStyle(
                                color: Colors.green
                              ),),
                            ),


                        
                          ],
                          
                        ),
                           
                      ],
                    ),
                  ) ,
                ),
                const Positioned(
                  top: 15.0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Row(
                         mainAxisAlignment:
                         MainAxisAlignment.spaceBetween,
                         children: [
                           Icon(Icons.menu,
                           color: Colors.green,),
                            Text('L O G I N',style: TextStyle(
                              color: Colors.black38,
                            ),),
                          
                           Icon(Icons.notifications_none,color:
                             Colors.green,),
                         ], 
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        
                      ],
                    ),
                )
              ],
            ),
        
      )) ,
    );
  }
}
