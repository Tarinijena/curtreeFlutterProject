import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import 'curtree_login_page.dart';


class PatientSignUpPage extends StatefulWidget {
  const PatientSignUpPage({super.key});

  @override
  State<PatientSignUpPage> createState() => _PatientSignUpPageState();
}

class _PatientSignUpPageState extends State<PatientSignUpPage> {

  final formKey=GlobalKey<FormState>();
   TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  
   TextEditingController password1=TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       
       body: Container(
        decoration: BoxDecoration(

           gradient: RadialGradient(
            
            
           center: Alignment.topLeft,
           
            colors: [

               Color(0xffd8f3ff),
               Colors.white
              
              

               
            ],
            stops: [20,80]
           )
        ),
           constraints: BoxConstraints(
               maxHeight: MediaQuery.of(context).size.height,
               maxWidth: MediaQuery.of(context).size.width
             ),
             child: Form(
              key: formKey,
               child: Padding(
                 padding: const EdgeInsets.all(24.0),
                 child: SingleChildScrollView(
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                 
                        SizedBox(height: 90,),
                        Text("Join us to start searching",
                        style: TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold,
                           color: Colors.black87
                        ),
                        ),
                        SizedBox(height: 30,),
                        Text("You can search course apply course and find",
                        style: TextStyle(
                           fontSize: 17,
                          
                           color: Colors.black54
                        ),
                        ),
                         SizedBox(height: 10,),
                        Text("Scholarship for abroad studies",
                        style: TextStyle(
                           fontSize: 17,
                          
                           color: Colors.black54
                        ),
                        ),
                        SizedBox(height: 60,),
                        Row(
                           
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                           
                                       children: [
                                          
                                          
                                          Expanded(
                                            child: ElevatedButton(
                                                                            style: ElevatedButton.styleFrom(primary: Colors.white,
                                                                           minimumSize: Size(double.infinity, 50),
                                                                            
                                                                            ),
                                                                            onPressed: (){}, 
                                                                           child: Row(
                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                             children: [
                                                                              Image.asset("image/google23.png",
                                                                              height: 30 ,
                                                                              width: 30,
                                                                              ),
                                                                              SizedBox(width: 10,),
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(right: 28),
                                                                                  child: Text("Google",
                                                                                                                                                           style: TextStyle(
                                                                                                                                                            fontSize: 20,
                                                                                                                                                            color: Colors.black
                                                                                                                                                           ),
                                                                                                                                                           ),
                                                                                ),
                                                                           
                                                                             ],
                                                                           ),
                                                                           ),
                                          ),
                                          SizedBox(width: 20,),
                                   Expanded(
                                     child: ElevatedButton(
                                                                            style: ElevatedButton.styleFrom(primary: Colors.white,
                                                                            minimumSize: Size(double.infinity, 50),
                                                                            
                                                                            
                                                                            
                                                                            ),
                                                                            onPressed: (){}, 
                                                                           child: Row(
                                                                             children: [
                                                              
                                                                              Image.asset("image/facebook23.png",
                                                                              height: 30 ,
                                                                              width: 30,
                                                                              ),
                                                                              SizedBox(width: 10,),
                                                                              
                                                                                Text("facebook",
                                                                           style: TextStyle(
                                                                            fontSize: 20,
                                                                            color: Colors.black
                                                                           ),
                                                                           ),
                                                                           
                                                                             ],
                                                                           ),
                                                                           ),
                                   ),
                                                         ],
                                    ),
                                   SizedBox(height: 20,),
                                    TextFormField(
                                      controller: name,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                 return "please enter Name";
                                              }
                                              return null;
                                            },
                                      keyboardType: TextInputType.emailAddress,
                                      
                                        decoration: InputDecoration(
                                          
                                          labelText: "Full Name",
                                          
                                           border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12.0),
                                             borderSide: BorderSide.none
                                           ),
                                           filled: true,
                                           fillColor: Colors.grey.shade200,
                                           hintText: 'Name',
                                           prefixIcon: Icon(
                                             Icons.person,
                                             color: Colors.grey.shade400,
                                             size: 30,
                                           )
                                        ),
                                    ),
                           
                                    SizedBox(height: 20,),
                                     TextFormField(
                                      controller: email,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                 return "please enter Email";
                                              }
                                              return null;
                                            },
                                      keyboardType: TextInputType.emailAddress,
                                      obscureText: true,
                                        decoration: InputDecoration(
                                          labelText: "Enter Your Email",
                                           border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12.0),
                                             borderSide: BorderSide.none
                                           ),
                                           filled: true,
                                           fillColor: Colors.grey.shade200,
                                           hintText: 'Email',
                                           
                                           prefixIcon: Icon(
                                             Icons.email,
                                             color: Colors.grey.shade400,
                                             size: 30,
                                           )
                                        ),
                                    ),
                                    SizedBox(height: 20,),
                                     TextFormField(
                                      controller: password1,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                 return "please enter Password";
                                              }
                                              return null;
                                            },
                                      keyboardType: TextInputType.emailAddress,
                                      obscureText: true,
                                        decoration: InputDecoration(
                                          labelText: "Enter Your Password",
                                           border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12.0),
                                             borderSide: BorderSide.none
                                           ),
                                           filled: true,
                                           fillColor: Colors.grey.shade200,
                                           hintText: 'Password',
                                           
                                           suffixIcon: Icon(
                                             Icons.password,
                                             color: Colors.grey.shade400,
                                             size: 30,
                                           )
                                        ),
                                    ),
                                    
                                    
                                    SizedBox(height: 20,),
                                    
                                    
                                    
                                   
                                    ElevatedButton(
                                      
                                    //ehi "0xff" hexacode pare amaku color code lekhibara achi
                           
                                    style: ElevatedButton.styleFrom( 
                                      backgroundColor: Color(0xff0ebe7f),
                                    minimumSize: Size(double.infinity, 50),
                                    shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20)
                                    )
                                    ),
                                    onPressed: (){
                                      /* Navigator.of(context).push(
                                              MaterialPageRoute(
                           
                                                builder:(context) => PasswordUpdated(), 
                                                
                                                ),
                                       );*/
                           //success message show kariba pai ehi "QuickAlert" ra use karajae
                           //ehi Widget ku use kariba pai amaku first ehi "quickAlert" dependencies
                           //ku pub.dev ru install kari pubspect.yml re peste karibaku padiba
                           //aue ehi package ku ama class ra top re rakhibaku padiba.
                           if(formKey.currentState!.validate())
                           {
                                        QuickAlert.show(
                                          
                                          context: context, 
                                          
                                          type:QuickAlertType.success,
                                          title: 'Registration',
                                          text: "You Register Successfully",
                           
                                          onConfirmBtnTap: () {
                                            
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                           
                                                builder:(context) => DoctorLoginPage(), 
                                                
                                                ),
                                       );
                                            
                                          }, 
                                          
                                          );
                            }
                                    }, 
                                   child:Text("SIGN UP",
                                   style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                   ),
                                   ),
                                   
                                   ),
                           
                           
                           
                                    
                           
                                    
                           
                                    SizedBox(height: 20,),
                           
                                    
                           
                                    
                           
                                           Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                                Text("Have an Account?\t",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xff0ebe7f)
                                                ),
                                                ),
                                  //koubi text ku clickable baneiba pai ehi "InkWell()" widget
                                  //ra help niajae.                                     
                                                
                                                  InkWell(
                                                  
                                                  onTap: () {
                           
                                                     Navigator.of(context).push(
                                              MaterialPageRoute(
                           
                                                builder:(context) => DoctorLoginPage(), 
                                                
                                                ),
                                       );
                                                    
                                                  },
                                                  child: Text("Sign in",
                                                  style: TextStyle(
                                                     fontSize: 15,
                                                     color: Color(0xff0ebe7f)
                                                  ),
                                                  ),
                                                )
                                                


                                             ],
                                           ),
                                      
                                      
                           
                           
                           
                           
                                    
                 
                 
                      ],
                   ),
                 ),
               ),
             ),
       ),

    );
  }
}