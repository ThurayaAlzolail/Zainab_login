import 'package:flutter/material.dart';
class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
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
                              Text('create sign to continue',
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
                            prefixIcon: Icon(Icons.person,
                            color: Colors.green,
                            ),
                            hintText: 'Name',
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
                         const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person,
                            color: Colors.green,
                            ),
                            hintText: 'conf password',
                             suffixIcon: Icon(Icons.remove_red_eye),                           
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
                              child: const Text('SIGN UP',style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),),    
                          ),
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
