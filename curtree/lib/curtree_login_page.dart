import 'package:curtree/curtree_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import 'curtree_signup_page.dart';

class DoctorLoginPage extends StatefulWidget {
  const DoctorLoginPage({super.key});

  @override
  State<DoctorLoginPage> createState() => _DoctorLoginPageState();
}

class _DoctorLoginPageState extends State<DoctorLoginPage> {
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();

  // ignore: unused_field
  bool _isPasswordShown=true;
  bool _passOne=true;
  bool _passTwo=true;

  Widget otpField() {
    return SizedBox(
      width: 55,
      height: 55,
      child: TextFormField(
        cursorHeight: 15,
        //ehi properti deba dwara ame otp field only
        //one number entry karipariba.
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade500,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }

  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  TextEditingController password1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
                center: Alignment.topLeft,
                colors: [Color(0xffd8f3ff), Colors.white],
                stops: [20, 80])),
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "You can search course apply course and find",
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Scholarship for abroad studies",
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(double.infinity, 50),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "image/google23.png",
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "Google",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(double.infinity, 50),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                "image/facebook23.png",
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "facebook",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    child: TextFormField(
                      controller: email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter Email";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: "Enter Your Email",
                          labelStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey.shade400,
                            size: 30,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    child: TextFormField(
                      
                      controller: password1,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter Password";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: _isPasswordShown,
                      decoration: InputDecoration(
                        
                          labelText: "Enter Your Password",
                          labelStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: 'Password',
                          
                          prefixIcon: Icon(
                            Icons.vpn_key_rounded,
                            color: Colors.grey.shade400,
                            size: 30,
                          ),

                          suffixIcon: IconButton(
                            icon:_isPasswordShown?Icon(Icons.visibility_off):Icon(Icons.visibility),
                            onPressed: ()  {

                                 setState(() {
                                   _isPasswordShown=!_isPasswordShown;
                                 }); 
                              
                            }
                              
                           
)
),
                          

                          
)
                          
                          ),
               
                  
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    //ehi "0xff" hexacode pare amaku color code lekhibara achi

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0ebe7f),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      /*Navigator.of(context).push(
                                              MaterialPageRoute(
                           
                                                builder:(context) => CurtreeHomePage(), 
                                                
                                                ),
                                       );*/
                      //success message show kariba pai ehi "QuickAlert" ra use karajae
                      //ehi Widget ku use kariba pai amaku first ehi "quickAlert" dependencies
                      //ku pub.dev ru install kari pubspect.yml re peste karibaku padiba
                      //aue ehi package ku ama class ra top re rakhibaku padiba.
                      if (formKey.currentState!.validate()) {
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.success,
                          title: 'Sign in',
                          text: "You Sign in Successfully",
                          onConfirmBtnTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CurtreeHomePage(),
                              ),
                            );
                          },
                        );
                      }
                    },
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            context: context,
                            builder: (BuildContext context) {
                              //ehi "SingleChildScrollView" widget re padding debara achi
                              //and ehi padding properties re lekhiba ra achi  MediaQuery.of(context).viewInsets,
                              //jaha dwara jetebele ame bottom sheet re thiba text field re click kariba
                              //setebele bottomsheet tike uparaku paleiba aue keyboard taku hide karipariba nai
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxHeight: MediaQuery.of(context)
                                              .size
                                              .height,
                                          maxWidth: MediaQuery.of(context)
                                              .size
                                              .width),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Center(
                                              child: Container(
                                                height: 5,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Text(
                                              "Forget password",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                                "Enter your email for this verification process"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                "We will send 4-digit code to your email"),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              height: 70,
                                              child: TextFormField(
                                                controller: email,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "please enter Email";
                                                  }
                                                  return null;
                                                },
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                    labelText:
                                                        "Enter Your Email",
                                                    labelStyle: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        borderSide:
                                                            BorderSide.none),
                                                    filled: true,
                                                    fillColor:
                                                        Colors.grey.shade200,
                                                    hintText: 'Email',
                                                    prefixIcon: Icon(
                                                      Icons.email,
                                                      color:
                                                          Colors.grey.shade400,
                                                      size: 30,
                                                    )),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            ElevatedButton(
                                              //ehi "0xff" hexacode pare amaku color code lekhibara achi

                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xff0ebe7f),
                                                  minimumSize:
                                                      Size(double.infinity, 50),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20))),
                                              onPressed: () {
                                                showModalBottomSheet(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        50),
                                                                topRight: Radius
                                                                    .circular(
                                                                        50))),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      //ehi "SingleChildScrollView" widget re padding debara achi
                                                      //and ehi padding properties re lekhiba ra achi  MediaQuery.of(context).viewInsets,
                                                      //jaha dwara jetebele ame bottom sheet re thiba text field re click kariba
                                                      //setebele bottomsheet tike uparaku paleiba aue keyboard taku hide karipariba nai
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child:
                                                            SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15.0),
                                                            child: Container(
                                                              constraints: BoxConstraints(
                                                                  maxHeight:
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height,
                                                                  maxWidth: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Column(
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    Center(
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            5,
                                                                        width:
                                                                            90,
                                                                        decoration:
                                                                            BoxDecoration(color: Colors.grey),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          30,
                                                                    ),
                                                                    Text(
                                                                      "Enter your 4-digit code",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            30,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 5,
                                                                    ),
                                                                    Text(
                                                                        "That you received on your email"),
                                                                    SizedBox(
                                                                      height:
                                                                          30,
                                                                    ),
                                                                    Form(
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceAround,
                                                                        children: [
                                                                          SizedBox(
                                                                            width:
                                                                                55,
                                                                            height:
                                                                                55,
                                                                            child:
                                                                                TextFormField(
                                                                              focusNode: f1,
                                                                              autofocus: true,
                                                                              cursorHeight: 15,
                                                                              //ehi properti deba dwara ame otp field only
                                                                              //one number entry karipariba.
                                                                              inputFormatters: [
                                                                                LengthLimitingTextInputFormatter(1)
                                                                              ],
                                                                              textAlign: TextAlign.center,
                                                                              keyboardType: TextInputType.number,
                                                                              style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 30,
                                                                              ),
                                                                              decoration: InputDecoration(filled: true, fillColor: Colors.grey.shade500, border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.black))),
                                                                              onFieldSubmitted: (value) {
                                                                                FocusScope.of(context).requestFocus(f2);
                                                                              },
                                                                            ),
                                                                          ),

                                                                          //2nd sized box---------------------------

                                                                          SizedBox(
                                                                            width:
                                                                                55,
                                                                            height:
                                                                                55,
                                                                            child:
                                                                                TextFormField(
                                                                              focusNode: f2,
                                                                              autofocus: true,
                                                                              cursorHeight: 15,
                                                                              //ehi properti deba dwara ame otp field only
                                                                              //one number entry karipariba.
                                                                              inputFormatters: [
                                                                                LengthLimitingTextInputFormatter(1)
                                                                              ],
                                                                              textAlign: TextAlign.center,
                                                                              keyboardType: TextInputType.number,
                                                                              style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 30,
                                                                              ),
                                                                              decoration: InputDecoration(filled: true, fillColor: Colors.grey.shade500, border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.black))),
                                                                              onFieldSubmitted: (value) {
                                                                                FocusScope.of(context).requestFocus(f3);
                                                                              },
                                                                            ),
                                                                          ),

                                                                          //3rd sized box------------------------------

                                                                          SizedBox(
                                                                            width:
                                                                                55,
                                                                            height:
                                                                                55,
                                                                            child:
                                                                                TextFormField(
                                                                              focusNode: f3,
                                                                              autofocus: true,
                                                                              cursorHeight: 15,
                                                                              //ehi properti deba dwara ame otp field only
                                                                              //one number entry karipariba.
                                                                              inputFormatters: [
                                                                                LengthLimitingTextInputFormatter(1)
                                                                              ],
                                                                              textAlign: TextAlign.center,
                                                                              keyboardType: TextInputType.number,
                                                                              style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 30,
                                                                              ),
                                                                              decoration: InputDecoration(filled: true, fillColor: Colors.grey.shade500, border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.black))),
                                                                              onFieldSubmitted: (value) {
                                                                                FocusScope.of(context).requestFocus(f4);
                                                                              },
                                                                            ),
                                                                          ),

                                                                          // 4th sized box----------------------------

                                                                          SizedBox(
                                                                            width:
                                                                                55,
                                                                            height:
                                                                                55,
                                                                            child:
                                                                                TextFormField(
                                                                              focusNode: f4,
                                                                              autofocus: true,
                                                                              cursorHeight: 15,
                                                                              //ehi properti deba dwara ame otp field only
                                                                              //one number entry karipariba.
                                                                              inputFormatters: [
                                                                                LengthLimitingTextInputFormatter(1)
                                                                              ],
                                                                              textAlign: TextAlign.center,
                                                                              keyboardType: TextInputType.number,
                                                                              style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 30,
                                                                              ),
                                                                              decoration: InputDecoration(filled: true, fillColor: Colors.grey.shade500, border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.black))),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    ElevatedButton(
                                                                      //ehi "0xff" hexacode pare amaku color code lekhibara achi

                                                                      style: ElevatedButton.styleFrom(
                                                                          backgroundColor: Color(
                                                                              0xff0ebe7f),
                                                                          minimumSize: Size(
                                                                              double
                                                                                  .infinity,
                                                                              50),
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                                                      onPressed:
                                                                          () {
                                                                        showModalBottomSheet(
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
                                                                            context: context,
                                                                            builder: (BuildContext context) {
                                                                              //ehi "SingleChildScrollView" widget re padding debara achi
                                                                              //and ehi padding properties re lekhiba ra achi  MediaQuery.of(context).viewInsets,
                                                                              //jaha dwara jetebele ame bottom sheet re thiba text field re click kariba
                                                                              //setebele bottomsheet tike uparaku paleiba aue keyboard taku hide karipariba nai
                                                                              return Padding(
                                                                                padding: MediaQuery.of(context).viewInsets,
                                                                                child: SingleChildScrollView(
                                                                                  scrollDirection: Axis.vertical,
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsets.all(15.0),
                                                                                    child: Container(
                                                                                      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height, maxWidth: MediaQuery.of(context).size.width),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.all(8.0),
                                                                                        child: Column(
                                                                                          children: [
                                                                                            SizedBox(
                                                                                              height: 20,
                                                                                            ),
                                                                                            Center(
                                                                                              child: Container(
                                                                                                height: 5,
                                                                                                width: 90,
                                                                                                decoration: BoxDecoration(color: Colors.grey),
                                                                                              ),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 30,
                                                                                            ),
                                                                                            Text(
                                                                                              "Reset Password",
                                                                                              style: TextStyle(
                                                                                                fontSize: 30,
                                                                                                fontWeight: FontWeight.bold,
                                                                                              ),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 5,
                                                                                            ),
                                                                                            Text("Set the new password for your account"),
                                                                                            SizedBox(
                                                                                              height: 5,
                                                                                            ),
                                                                                            Text("So you can login and access all feature"),
                                                                                            SizedBox(
                                                                                              height: 20,
                                                                                            ),
                                                                                            Container(
                                                                                              height: 70,
                                                                                              child: TextFormField(
                                                                                                controller: password1,
                                                                                                validator: (value) {
                                                                                                  if (value!.isEmpty) {
                                                                                                    return "please enter Password";
                                                                                                  }
                                                                                                  return null;
                                                                                                },
                                                                                                keyboardType: TextInputType.emailAddress,
                                                                                                obscureText: _passOne,
                                                                                                decoration: InputDecoration(
                                                                                                    labelText: "Enter Your Password",
                                                                                                    labelStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                                                                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none),
                                                                                                    filled: true,
                                                                                                    fillColor: Colors.grey.shade200,
                                                                                                    hintText: 'New Password',
                                                                                                      prefixIcon: Icon(
                            Icons.vpn_key_rounded,
                            color: Colors.grey.shade400,
                            size: 30,
                          ),

                          suffixIcon: IconButton(
                            icon:_passOne?Icon(Icons.visibility_off):Icon(Icons.visibility),
                            onPressed: ()  {

                                 setState(() {
                                   _passOne=!_passOne;
                                 }); 
                              
                            }
                              
                           
)),
                                                                                              ),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 20,
                                                                                            ),
                                                                                            Container(
                                                                                              height: 70,
                                                                                              child: TextFormField(
                                                                                                controller: password1,
                                                                                                validator: (value) {
                                                                                                  if (value!.isEmpty) {
                                                                                                    return "please enter Password";
                                                                                                  }
                                                                                                  return null;
                                                                                                },
                                                                                                keyboardType: TextInputType.emailAddress,
                                                                                                obscureText: _passTwo,
                                                                                                decoration: InputDecoration(
                                                                                                    labelText: "ReEnter Your Password",
                                                                                                    labelStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                                                                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none),
                                                                                                    filled: true,
                                                                                                    fillColor: Colors.grey.shade200,
                                                                                                    hintText: 'ReEnter Password',
                                                                                                      prefixIcon: Icon(
                            Icons.vpn_key_rounded,
                            color: Colors.grey.shade400,
                            size: 30,
                          ),

                          suffixIcon: IconButton(
                            icon:_passTwo?Icon(Icons.visibility_off):Icon(Icons.visibility),
                            onPressed: ()  {

                                 setState(() {
                                   _passTwo=!_passTwo;
                                 }); 
                              
                            }
                              
                           
)),
                                                                                              ),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 20,
                                                                                            ),
                                                                                            ElevatedButton(
                                                                                              //ehi "0xff" hexacode pare amaku color code lekhibara achi

                                                                                              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff0ebe7f), minimumSize: Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                                                                              onPressed: () {
                                                                                                Navigator.of(context).push(
                                                                                                  MaterialPageRoute(
                                                                                                    builder: (context) => DoctorLoginPage(),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                              child: Text(
                                                                                                "Update Password",
                                                                                                style: TextStyle(
                                                                                                  fontSize: 20,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        "Continue",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: Text(
                                                "Continue",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text(
                        "Forget Password",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff0ebe7f)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account?\t",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff0ebe7f)),
                      ),
                      //koubi text ku clickable baneiba pai ehi "InkWell()" widget
                      //ra help niajae.

                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PatientSignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff0ebe7f)),
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
