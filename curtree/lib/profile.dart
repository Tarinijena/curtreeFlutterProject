import 'dart:convert';
import 'dart:io';

import 'package:curtree/curtree_home_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

 TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController location = TextEditingController();
  final formKey = GlobalKey<FormState>();




  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(type) async {
    var image;
    if (type == 'camera') {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 20);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 40);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              //height: size.height * 0.5,
              height: 327,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xff0ebe7f),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                             Navigator.of(context)
                                            .push(MaterialPageRoute(
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
                          width: 25,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Set up your profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Update your profile for contact your doctor with ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                )),
                       
                        SizedBox(
                          height: 5,
                        ),
                        Text("better impression . ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                )),
                       
                        SizedBox(
                          height: 15,
                        ),
                       
                        Stack(
                           children: [
                             Container(
                            height: 160,
                            width: 160,
                            child: ClipOval(
                                child: selectedImage != null
                                    ? Image.file(
                                        selectedImage!,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        "image/wallpaper.jpg",
                                        fit: BoxFit.cover,
                                      )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                border: Border.all(
                                  width: 8,
                                  color: Colors.green,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0,),
                            child: InkWell(
                              onTap: () {
                                chooseImage('camera');
                              },
                              child: Icon(Icons.photo_camera)),
                          ),
                           ],
                        )
                       
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

         /* Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Personal Information",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ]    
          ),
          ),*/

          SizedBox(height: 10,),
            Expanded(
              child: Container(
                 width: size.width,
                  
                 decoration: BoxDecoration(
                 color: Colors.grey.shade700,
            gradient: RadialGradient(
                center: Alignment.bottomRight,
                colors: [Color(0xffd8f3ff), Colors.white],
                stops: [20, 80])),
                 
                 child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                   child: Column(
                      children: [
                           
                        Padding(
                               padding: const EdgeInsets.only(left: 15),
                               child: Row(
                    children: [
                      Text(
                        "Personal Information",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ]    
                             ),
                             ),
                             SizedBox(height: 10,),
                           
                             Padding(
                               padding: const EdgeInsets.only(left: 20,right: 20),
                               child: Form(
                                 key: formKey,
                                 child: 
                                Column(
                                               children: [
                                                      
                                                  Container(
                                                    height: 70,
                                                    child: TextFormField(
                                                                                        controller: name,
                                                                                        validator: (value) {
                                                                                          if (value!.isEmpty) {
                                                                                            return "please enter Name";
                                                                                          }
                                                                                          return null;
                                                                                        },
                                                                                        keyboardType: TextInputType.emailAddress,
                                                                                        
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                            labelText: "Enter Your Name",
                                                                                            labelStyle: TextStyle(
                                                                                                fontSize: 15,
                                                                                                color: Colors.black,
                                                                                                fontWeight: FontWeight.bold
                                                                                            ),
                                                                                            border: OutlineInputBorder(
                                                                                              
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                borderSide: BorderSide.none),
                                                                                            filled: true,
                                                                                            fillColor: Colors.grey.shade300,
                                                                                            hintText: 'Name',
                                                                                            prefixIcon: Icon(
                                                                                              Icons.person,
                                                                                              color: Colors.black,
                                                                                              
                                                                                              size: 30,
                                                                                            )),
                                                                                      ),
                                                  ),
                                                      
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 70,
                                      child: TextFormField(
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
                                            labelText: "Enter Your Contact number",
                                            
                                            labelStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8.0),
                                                borderSide: BorderSide.none),
                                            filled: true,
                                            fillColor: Colors.grey.shade300,
                                            hintText: 'Contact Number',
                                            prefixIcon: Icon(
                                              Icons.contact_phone,
                                               color: Colors.black,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 70,
                                      child: TextFormField(
                                        controller: dob,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "please enter date of birth";
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.emailAddress,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                            labelText: "Enter Your date of birth",
                                            labelStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8.0),
                                                borderSide: BorderSide.none),
                                            filled: true,
                                            fillColor: Colors.grey.shade300,
                                            hintText: 'Date of Birth',
                                            prefixIcon: Icon(
                                              Icons.date_range,
                                               color: Colors.black,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                                      
                                    SizedBox(height: 10,),
                                                      
                                    Container(
                                      height: 70,
                                      child: TextFormField(
                                        controller: location,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "please enter Location";
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.emailAddress,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                            labelText: "Enter Your Location",
                                            labelStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8.0),
                                                borderSide: BorderSide.none),
                                            filled: true,
                                            fillColor: Colors.grey.shade300,
                                            hintText: 'Location',
                                            prefixIcon: Icon(
                                              Icons.location_city,
                                              color: Colors.black,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    ElevatedButton(
                                //ehi "0xff" hexacode pare amaku color code lekhibara achi
            
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff0ebe7f),
                                    minimumSize: Size(double.infinity, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))),
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
                                    QuickAlert.show(
                                      context: context,
                                      title: 'Profile Information Submitted',
                                      text: 'Successfully',
                                      type: QuickAlertType.success,
                                      onConfirmBtnTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => CurtreeHomePage(),
                                        ));
                                      },
                                    );
                                  }
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                                                   
                                               ],
                                )
                               ),
                             )
                         
                      ],
                   ),
                 ),
              ),
            ),
          
          
        ],
      ),
    );
  }
}
