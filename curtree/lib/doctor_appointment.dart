import 'package:curtree/doctor_appointment2.dart';
import 'package:curtree/popular_doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import 'curtree_home_page.dart';

class DoctorAppointment extends StatefulWidget {
  const DoctorAppointment({super.key});

  @override
  State<DoctorAppointment> createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {

  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();
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
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                              builder: (context) => PopularDoctorInfo(),
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
                          "Appointment",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                       
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
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
                         
                        
                      ],
                    ),
                  ),
                  
        SizedBox(height: 25,),

        Text("Appointment For",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),

        SizedBox(height: 20,),

        Form(
          
          key: formKey,
          child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                   
                    TextFormField(
                      controller: name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter Email";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: "Patient Name",
                          labelStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                              borderRadius: BorderRadius.circular(4.0),
                              ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Name',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),

                    SizedBox(height: 15,),

                      TextFormField(
                      controller: contact,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter contact number";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: "Contact number",
                          labelStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.black,width: 1),
                              borderRadius: BorderRadius.circular(4.0),
                              ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Contact',
                          prefixIcon: Icon(
                            Icons.call,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                    SizedBox(height: 20,),
                    Text("Who is this patient?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                              
                             Container(
                                height: 120,
                                width: 90,
                                child: Column(
                                   children: [
                                      Container(
                                          height: 90,
                                          width: double.infinity,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                                Icon(Icons.add,size: 30,color:Colors.black,),
                                                Text("Add",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)
                                             ],
                                          ),
                                          decoration: BoxDecoration(
                                             color: Color(0xffd8f3ff),
                                          ),
                                      )
                                   ],
                                ),
                             ),
                    
                              SizedBox(width: 10,),
                    
                               Container(
                                height: 120,
                                width: 90,
                                child: Column(
                                   children: [
                                      Container(
                                          height: 90,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                             image: DecorationImage(
                                              image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.0l7k5zqRUVQ5Yq9eTpW2LgHaLJ&pid=Api&rs=1&c=1&qlt=95&w=82&h=124"),
                                              fit: BoxFit.cover
                                              
                                              )
                                          ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("My Self",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                ),
                             ),
                              
                              SizedBox(width: 10,),
                              Container(
                                height: 120,
                                width: 90,
                                child: Column(
                                   children: [
                                      Container(
                                          height: 90,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                             image: DecorationImage(
                                              image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.0l7k5zqRUVQ5Yq9eTpW2LgHaLJ&pid=Api&rs=1&c=1&qlt=95&w=82&h=124"),
                                              fit: BoxFit.cover
                                              
                                              )
                                          ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("My Parent",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                ),
                             ),
                             SizedBox(width: 10,),
                             Container(
                                height: 120,
                                width: 90,
                                child: Column(
                                   children: [
                                      Container(
                                          height: 90,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                             image: DecorationImage(
                                              image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.0l7k5zqRUVQ5Yq9eTpW2LgHaLJ&pid=Api&rs=1&c=1&qlt=95&w=82&h=124"),
                                              fit: BoxFit.cover
                                              
                                              )
                                          ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("My Wife",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                ),
                             ),
                             SizedBox(width: 10,),
                             Container(
                                height: 120,
                                width: 90,
                                child: Column(
                                   children: [
                                      Container(
                                          height: 90,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                             image: DecorationImage(
                                              image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.0l7k5zqRUVQ5Yq9eTpW2LgHaLJ&pid=Api&rs=1&c=1&qlt=95&w=82&h=124"),
                                              fit: BoxFit.cover
                                              
                                              )
                                          ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("My Son",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                ),
                             ),
                              
                            ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        
                        child: ElevatedButton(
                                    //ehi "0xff" hexacode pare amaku color code lekhibara achi
                                  
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff0ebe7f),
                                        minimumSize: Size(double.infinity, 50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8))),
                                    onPressed: () {
                                      /* Navigator.of(context).push(
                                                    MaterialPageRoute(
                                 
                                                      builder:(context) => PasswordUpdated(), 
                                                      
                                                      ),
                                             );*/
                                      //success message show kariba pai ehi "QuickAlert" ra use karajae
                                      //ehi Widget ku use kariba pai amaku first ehi "quickAlert" dependencies
                                      //ku pub.dev ru install kari pubspect.yml re peste karibaku padiba
                                      //aue ehi package ku ama class ra top re rakhibaku padiba.
                                      if (formKey.currentState!.validate()) {
                                        /*QuickAlert.show(
                                          context: context,
                                          title: 'Profile Information Submitted',
                                          text: 'Successfully',
                                          type: QuickAlertType.success,
                                          onConfirmBtnTap: () {
                                            );
                                          },
                                        );*/

                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) => DoctorAppointMentTwo(),
                                            ));
                                    
                                      }
                                    },
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                      ),
                    ),

              ],

        ))
                  
                  
                      
                    
                     
                       
                  
                        
                         
                  
                        
                  
                        
                  
                    
                  
                    
                  
                        
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}