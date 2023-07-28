import 'package:curtree/curtree_home_page.dart';
import 'package:curtree/doctor_appointment.dart';
import 'package:curtree/doctor_appointment2.dart';
import 'package:curtree/popular_doctor_info.dart';
import 'package:curtree/profile.dart';
import 'package:flutter/material.dart';

import 'curtree_login_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       debugShowCheckedModeBanner:false,
          title: "Login page",

            
            home:DoctorLoginPage(),

            

        
    );
  }
}

