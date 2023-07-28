import 'package:curtree/curtree_home_page.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';





class DoctorInformation extends StatefulWidget {
  const DoctorInformation({super.key});

  @override
  State<DoctorInformation> createState() => _DoctorInformationState();
}

class _DoctorInformationState extends State<DoctorInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
          child: Container(

             constraints: BoxConstraints(
               maxHeight: MediaQuery.of(context).size.height,
               maxWidth: MediaQuery.of(context).size.width
             ),
            

            decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage("image/wallpaper.jpg"),
                 fit: BoxFit.cover
                )
            ),

               child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    /*Expanded(flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.0,
                      horizontal: 24.0
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Patient",
                          style: TextStyle(
                             color: Colors.white,
                             fontSize: 40,
                             fontWeight: FontWeight.w800
                          ),
                          ),
                          Text("Registration Form",
                          style: TextStyle(
                             color: Colors.white,
                             fontSize: 15,
                             fontWeight: FontWeight.w800
                          ),
                          )
                        ],
                      ),
                    ),
                    
                    ),*/
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,top: 2,right: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [

                            Icon(Icons.arrow_back,color: Colors.amber,)
                             
                           ],
                        ),
                      ),
                    ),
                     Expanded(flex: 8,
                     child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            
                          )
                        ),
                       
                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                              
                              Row(
                                 children: [
                                    Container(
                                        height: 120,
                                        width: 120,
                                        
                                        decoration: BoxDecoration(
                                           color: Colors.amber,
                                           borderRadius: BorderRadius.circular(60),
                                           image: DecorationImage(
                                            
                                            image: 
                                           NetworkImage("https://tse3.mm.bing.net/th?id=OIP.IVwf85npYYUcwRp4EIhqDgHaJm&pid=Api&P=0&h=180"),
                                           fit: BoxFit.fill
                                           
                                           
                                           )
                                        ),
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                          Text("Dr. Sam Smith",
                                          style: TextStyle(
                                             fontSize: 25,
                                          ),
                                          ),
                                          Text("Dermatologist"),
                                          Row(
                                            
                                             children: [
                                                Image.network("https://tse4.mm.bing.net/th?id=OIP.QOhwh1JLNOHV6U0URqQpAAHaCt&pid=Api&P=0&h=180",height: 20,width: 100,alignment: Alignment.topLeft),
                                                SizedBox(width: 5,),
                                                Text("5-star rating",textAlign: TextAlign.right,),
                                                

                                             ],
                                          )
                                          
                                       ],
                                    ),
                                 ],
                              ),
                                SizedBox(height: 20,),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                      Text("Professor of Dermatology Faculty of medicind Alexander",textAlign: TextAlign.justify,),
                                       Text(" University member of the Europeon Association of",textAlign: TextAlign.justify,),
                                       Row(
                                          children: [
                                             Text(" Dermatology and Venereal"),
                                             SizedBox(width: 10,),
                                             Container(
                                                height: 20,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue.shade900,
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(
                                                    child: Text("hello",style: TextStyle(color: Colors.white),),
                                                ),
                                             ),
                                             
                                          ],
                                       )

                                   ],
                                ),
                                SizedBox(height: 30,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                     children: [
                                       
                                         Container(
                                            height: 85,
                                            width: 100,
                                            decoration: BoxDecoration(
                                               color: Colors.white70,
                                               borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                    Image.network("https://cdn-icons-png.flaticon.com/128/149/149060.png",width: 20,height: 30,),
                                                    Text("location"),
                                                    Text("Sum Hospital")
                                                 ],
                                              ),
                                            ),
                                         ),
                                          SizedBox(width: 10,),
                                         Container(
                                            height: 85,
                                            width: 100,
                                            decoration: BoxDecoration(
                                               color: Colors.blue.shade800,
                                               borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                    Image.network("https://cdn-icons-png.flaticon.com/128/2150/2150062.png",width: 20,height: 30,color: Colors.white,),
                                                    Text("Price",style: TextStyle(color: Colors.white),),
                                                    Text("200 EGP",style: TextStyle(color: Colors.white),)
                                                 ],
                                              ),
                                            ),
                                         ),
                                        SizedBox(width: 10,),
                                       Container(
                                            height: 85,
                                            width: 100,
                                            decoration: BoxDecoration(
                                               color: Colors.white70,
                                               borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                    Image.network("https://cdn-icons-png.flaticon.com/128/2088/2088617.png",width: 20,height: 30,color: Colors.blue,),
                                                    Text("location"),
                                                    Text("Sum Hospital")
                                                 ],
                                              ),
                                            ),
                                         ),
                                    
                                     ],
                                  ),
                                ),

                                SizedBox(height: 10,),
                              Divider(
                      color: Colors.black,
                      
                      
                     ),
                      SizedBox(height: 10,),
                      Text("Doctors Services",style: TextStyle(color: Colors.blue,fontSize: 20),),
                      Row(
                         children: [
                            Container(
                                height: 10,
                            )
                         ],
                      ),

                          Row(
                                       children: [
                                          Expanded(
                                            child: ElevatedButton(
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
                                                                    
                                                                     
                                                                                  QuickAlert.show(
                                            
                                            context: context, 
                                            
                                            type:QuickAlertType.success,
                                            title: 'Information',
                                            text: "Updated Successfully",
                                                                     
                                            onConfirmBtnTap: () {
                                              
                                              /*Navigator.of(context).push(
                                                MaterialPageRoute(
                                                                     
                                                  builder:(context) => PatientBookForm(),
                                                )
                                              );*/
                                            }, 
                                            
                                            );
                                                                      
                                                                              }, 
                                                                             child:Text("GET APPOINTMENT",
                                                                             style: TextStyle(
                                                                              fontSize: 15,
                                                                              color: Colors.black,
                                                                             ),
                                                                             ),
                                                                             
                                                                             ),
                                          ),
                                     SizedBox(width: 5,),
                                    Expanded(
                                      child: ElevatedButton(
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
                                                              
                                                               
                                          QuickAlert.show(
                                            
                                            context: context, 
                                            
                                            type:QuickAlertType.confirm,
                                            title: 'Are you sure',
                                            text: "want to go to home page",
                                                               
                                            onConfirmBtnTap: () {
                                              
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                               
                                                  builder:(context) => CurtreeHomePage(),
                                                )
                                              );
                                            }, 
                                            
                                            );
                                                                
                                      }, 
                                                                       child:Text("CANCEL",
                                                                       style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                                                       ),
                                                                       ),
                                                                       
                                                                       ),
                                    ),

                                       ],
                                    )

                           ],
                         ),
                       ),

                       

                     ),
                     ),

                     
                ],
               ),

          ),
        ),
    );
  }
}