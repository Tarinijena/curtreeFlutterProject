import 'package:curtree/curtree_home_page.dart';
import 'package:curtree/doctor_appointment.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class DoctorAppointMentTwo extends StatefulWidget {
  const DoctorAppointMentTwo({super.key});

  @override
  State<DoctorAppointMentTwo> createState() => _DoctorAppointMentTwoState();
}

class _DoctorAppointMentTwoState extends State<DoctorAppointMentTwo> {
  String selectDate = "Select Date";

  String selectTime = "";


  String remember="";
  


  // ignore: unused_element
  
 

 

  datePicker() async {
    //ame jou date select kariba taha "picked" variable re
    //store hei rahijiba.
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        lastDate: DateTime(2030));

    if (picked != null && picked != selectDate) {
      setState(() {
        selectDate = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(children: [
            Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 40,
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => DoctorAppointment(),
                                    ));
                                  },
                                  child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.arrow_back,
                                        size: 15,
                                      )),
                                ),
                                SizedBox(
                                  width: 20,
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
                            height: 90,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 190,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                            width: 1,
                                            color: Colors.black,
                                          ),
                                          top: BorderSide.none,
                                          left: BorderSide.none,
                                          right: BorderSide.none)),
                                  child: Text(
                                    "$selectDate",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                  onTap: () {
                                    datePicker();
                                  },
                                  child: Icon(
                                    Icons.calendar_month,
                                    size: 30,
                                    color: Colors.black,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Expanded(
                        flex: 3,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 35),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Available Time",
                                          
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                          
                                  SizedBox(height: 35,),
                                 
                                          
                            
                             
                                 SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                   child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                               
                                           ChoiceChip(label: Text("10AM"), 
                                           selectedColor: Color(0xff20d7a9),
                                           selected:(selectTime=='10AM"')?true:false,
                                           onSelected: (bool value) {
                                             
                                             setState(() {
                                               selectTime='10AM"';
                                             });
                                             
                                           },
                                            
                                           ),
                                           SizedBox(width: 15,),
                                           ChoiceChip(label: Text("12PM"), 
                                           selectedColor: Color(0xff20d7a9),
                                           selected:(selectTime=='12PM')?true:false,
                                           onSelected: (bool value) {
                                 
                                             setState(() {
                                               selectTime='12PM';
                                             });
                                             
                                           },
                                            
                                           ),
                                           SizedBox(width: 15,),
                                           ChoiceChip(label: Text("2PM"), 
                                           selectedColor: Color(0xff20d7a9),
                                           selected:(selectTime=='2PM')?true:false,
                                           onSelected: (bool value) {
                                 
                                             setState(() {
                                               selectTime='2PM';
                                             });
                                             
                                           },
                                            
                                           ),
                                           SizedBox(width: 15,),
                                           ChoiceChip(label: Text("3PM"), 
                                           selectedColor: Color(0xff20d7a9),
                                           selected:(selectTime=='3PM')?true:false,
                                           onSelected: (bool value) {
                                 
                                             setState(() {
                                               selectTime='3PM';
                                             });
                                             
                                           },
                                            
                                           ),
                                           SizedBox(width: 15,),
                                           ChoiceChip(label: Text("4PM"), 
                                           selectedColor: Color(0xff20d7a9),
                                           selected:(selectTime=='4PM')?true:false,
                                           onSelected: (bool value) {
                                 
                                             setState(() {
                                               selectTime='4PM';
                                             });
                                             
                                           },
                                            
                                           ),
                                           SizedBox(width: 25,),
                                      ],
                                   ),
                                 ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                          
                                  
                                  
                                          
                                  Text("Reminder Me Before",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                  SizedBox(height: 20,),
                                   SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                     child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                                 
                                             ChoiceChip(label: Text("10 Minit"), 
                                             selectedColor: Color(0xff20d7a9),
                                             selected:(remember=='10 Minit')?true:false,
                                             onSelected: (bool value) {
                                               
                                               setState(() {
                                                 remember='10 Minit';
                                               });
                                               
                                             },
                                              
                                             ),
                                             SizedBox(width: 15,),
                                             ChoiceChip(label: Text("40 minute"), 
                                             selectedColor: Color(0xff20d7a9),
                                             selected:(remember=='40 minute')?true:false,
                                             onSelected: (bool value) {
                                                                
                                               setState(() {
                                                 remember='40 minute';
                                               });
                                               
                                             },
                                              
                                             ),
                                             SizedBox(width: 15,),
                                             ChoiceChip(label: Text("25minut"), 
                                             selectedColor: Color(0xff20d7a9),
                                             selected:(remember=='25minut')?true:false,
                                             onSelected: (bool value) {
                                                                
                                               setState(() {
                                                 remember='25minut';
                                               });
                                               
                                             },
                                              
                                             ),
                                             SizedBox(width: 15,),
                                             ChoiceChip(label: Text("10 minut"), 
                                             selectedColor: Color(0xff20d7a9),
                                             selected:(remember=='10 minut')?true:false,
                                             onSelected: (bool value) {
                                                                
                                               setState(() {
                                                remember='10 minut';
                                               });
                                               
                                             },
                                              
                                             ),
                                             SizedBox(width: 15,),
                                             ChoiceChip(label: Text("30 minut"), 
                                             selectedColor: Color(0xff20d7a9),
                                             selected:(remember=='30 minut')?true:false,
                                             onSelected: (bool value) {
                                                                
                                               setState(() {
                                                 remember='30 minut';
                                               });
                                               
                                             },
                                              
                                             ),
                                             SizedBox(width: 25,),
                                        ],
                                     ),
                                   ),
                                 
                                  SizedBox(
                                    height: 20,
                                  ),
                                          
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: 300,
                                      child: ElevatedButton(
                                        child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 15),),
                                            //ehi "0xff" hexacode pare amaku color code lekhibara achi
                                          
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xff0ebe7f),
                                                minimumSize: Size(double.infinity, 50),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(8))),
                                            onPressed: () {
                                              
                                              
                                                QuickAlert.show(
                                                  context: context,
                                                  title: ' Information Submitted',
                                                  text: 'Successfully',
                                                  type: QuickAlertType.success,
                                                  onConfirmBtnTap: () {
                                    
                                                    Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                      builder: (context) => CurtreeHomePage(),
                                                    ));
                                    
                                                  }
                                                    );
                                                  
                                                
                                    
                                                    
                                              }
                                            
                                            
                                          ),
                                    ),
                                  ),

                                  SizedBox(height: 20,)
                                
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
