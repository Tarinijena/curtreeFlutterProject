import 'package:curtree/doctor_appointment.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import 'curtree_home_page.dart';

class PopularDoctorInfo extends StatefulWidget {
  const PopularDoctorInfo({super.key});

  @override
  State<PopularDoctorInfo> createState() => _PopularDoctorInfoState();
}

class _PopularDoctorInfoState extends State<PopularDoctorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40,),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CurtreeHomePage(),
                            ));
                          },
                          child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.arrow_back,
                                size: 15,
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Doctor Details",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(width: 2, color: Colors.black),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://tse1.mm.bing.net/th?id=OIP.j6Eg2a_GN765REWVx9kavgHaHa&pid=Api&rs=1&c=1&qlt=95&w=107&h=107"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr.Prediatrician",
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  Text("Specialist Cardiologist"),
                                  SizedBox(height: 10,),
                                  Container(
                  
                                    height: 12,
                                    width: 100,
                                    decoration: BoxDecoration(
                  
                                      image: DecorationImage(image:NetworkImage("https://cdn-icons-png.flaticon.com/128/400/400365.png",),
                                      fit: BoxFit.cover
                                    ),
                                     
                                  )
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 16,),
                  
                            Padding(
                              padding: const EdgeInsets.only(top: 20,right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                            
                                    Padding(
                                      padding: const EdgeInsets.only(right: 18),
                                      child: Container(
                                        child: Image.network("https://cdn-icons-png.flaticon.com/128/9484/9484251.png",fit: BoxFit.cover,),
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(),
                                        
                                        ),
                                    ),
                                       SizedBox(height: 40,),
                                      Container(
                                        height: 15,
                                        width: 100,
                                        child: Row(
                                          
                                            children: [
                                                Image.network("https://cdn-icons-png.flaticon.com/128/74/74742.png",fit: BoxFit.cover,color: Color(0xff20d7a9),),
                                                
                                                Text("28.00/hr")
                                            ],
                                        ),
                                      )
                                      
                                  ],
                              ),
                            )
                          ],
                        ),
                         SizedBox(height: 10,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DoctorAppointment(),
                              ),
                            );
                                },
                                child: Container(
                                    height: 35,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                       color:Color(0xff20d7a9)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text("Book Now",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                                    ),
                                ),
                              )
                                
                            ],
                         )
                      ],
                    ),
                  ),
                  
                   SizedBox(height: 20,)
                   ,Center(
                     child: Container(
                        height: 90,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                             children: [
                                Expanded(child: Container(
                                  child: Column(
                   
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    
                                      children: [
                                          Text("100",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Text("Runing",style: TextStyle(fontSize: 17,color: Colors.grey.shade700))
                                      ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(9)
                                  ),
                                )),
                                SizedBox(width: 7,),
                                Expanded(child: Container(
                                  child: Column(
                   
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    
                                      children: [
                                          Text("500",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Text("Ongoing",style: TextStyle(fontSize: 17,color: Colors.grey.shade700))
                                      ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(9)
                                  ),
                                )),
                                SizedBox(width: 7,),
                                Expanded(child: Container(
                                  child: Column(
                   
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    
                                      children: [
                                          Text("700",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Text("Patient",style: TextStyle(fontSize: 17,color: Colors.grey.shade700))
                                      ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(9)
                                  ),
                                )),
                             ],
                          ),
                        ),
                     ),
                   ),
                  SizedBox(height: 25,),
                  
                  
                      
                    
                     
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text("Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          
                  
                        ),
                  
                        SizedBox(height: 25,),
                  
                        Row(
                           children: [
                              Text("1. ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff20d7a9)),),
                              Text("Patient care should be the number one priority.",style: TextStyle(fontSize: 15,))
                           ],
                        ),
                        
                         
                          SizedBox(height: 12,),
                          Divider(height: 4,color: Colors.black,),
                          SizedBox(height: 12,),
                          Row(
                           children: [
                              Text("2. ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff20d7a9)),),
                              Text("if you run your practice you know how frustrating.",style: TextStyle(fontSize: 15,))
                           ],
                        ),
                        SizedBox(height: 12,),
                          Divider(height: 4,color: Colors.black,),
                          SizedBox(height: 12,),
                          Row(
                           children: [
                              Text("3.  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff20d7a9)),),
                              Text("That's why some of appointment reminder system.",style: TextStyle(fontSize: 15,))
                           ],
                        ),
                  
                        
                  
                        
                  
                    
                  
                     SizedBox(height: 20,),
                  
                         Container(
                            height: 180,
                            
                            decoration: BoxDecoration(

                               image: DecorationImage(image: NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.yCVfxFvgn4d1XVZfC1qZxQHaEi&pid=Api&rs=1&c=1&qlt=95&w=179&h=109",
                                
                               ),
                               fit: BoxFit.cover
                               ),
                               borderRadius: BorderRadius.circular(8)
                            ),
                         )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
