import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curtree/curtree_login_page.dart';
import 'package:curtree/doctor_info.dart';
import 'package:curtree/popular_doctor_info.dart';
import 'package:curtree/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class CurtreeHomePage extends StatelessWidget {
  static String id = "/login";

  CurtreeHomePage({super.key});

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //eha ama screen ra total height and width provide kariba.
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(

          actions: [
          //appBar re 3 dot button baneiba pai ehi class
          //ra use karajae.
          PopupMenuButton(itemBuilder: (c) {
            return [
              PopupMenuItem(
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DoctorLoginPage(),
                        ));
                      },
                      child: Text("Login"))),
              PopupMenuItem(child: Text("Log Out")),
            ];
          })
        ],
          
          elevation: 0,
          backgroundColor: Color(0xff0ebe7f),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey.shade500,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                child: Container(
                  height: 900,
                  padding: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff0ebe7f),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        hoverColor: Colors.amber.shade900,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset("image/Capture.JPG"),
                        ),
                      ),
                      Text(
                        "Tarini kumar Jena",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "tarinijena4474@gmail.com",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                splashColor: Colors.black,
                leading: Icon(Icons.home),
                title: Text("HOME"),
              ),
              Divider(
                height: 5,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.medical_information),
                title: Text("ABOUT"),
              ),
              Divider(
                height: 5,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text("ACHIVEMENT"),
              ),
              Divider(
                height: 5,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.production_quantity_limits),
                title: Text("PRODUCT"),
              ),
            ],
          ),
        ),
//jadi mote bottom navigation bar re border radious apply karibara achi
//tebe mote bottom nav bar ku "ClipRRect" Widget dwara wrap karibara achi.
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: InkWell(
                        onTap: () {},
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ),
                              );
                            },
                            child: Icon(Icons.man))),
                    label: "Profile"),
                BottomNavigationBarItem(
                    icon: InkWell(
                        onTap: () {}, child: Icon(Icons.medical_services)),
                    label: "Appointment"),
                BottomNavigationBarItem(
                    icon: InkWell(onTap: () {}, child: Icon(Icons.book_online)),
                    label: "Booking"),
                BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
              ]),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                //ehi container ra height ama screen ra height ra 20% heijiba
                height: size.height * 0.2,

                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.2 - 27,
                      decoration: BoxDecoration(
                          color: Color(0xff0ebe7f),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hii Tarini",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Text(
                                  "Find Your Doctor",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: SearchBar(
                          hintText: "Search",
                          leading: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.pink.shade800,
                              )),
                          trailing: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.pink.shade800,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://tse2.mm.bing.net/th?id=OIP.FunbZnWfviCFnzt3IoCb8wHaE8&pid=Api&P=0&h=180"),
                          )),
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.Tg-nUWt8o1WJSifdjSuCXwHaEK&pid=Api&P=0&h=180"),
                          )),
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://tse3.mm.bing.net/th?id=OIP.LnyOcIg-wgb6eM5G2UTVwAHaEK&pid=Api&P=0&h=180"),
                          )),
                    ),
                  ],
                  options: CarouselOptions(

                      //ehi properti ku deba dwara carousel ra height and width
                      //set kariba pai use karajae.
                      //aspectRatio: 16/9,
                      //ehi properti debadwara carousel automatically move heba.
                      autoPlay: true,
                      enlargeCenterPage: true,
                      reverse: true,
                      viewportFraction: 0.9,
                      height: 150)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Specialities",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xff5960f7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/8511/8511805.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Orthopedics",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xff20d7a9),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/10541/10541175.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Dermatology",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xfffb9c58),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/4100/4100226.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Dentistry",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xfffd6a63),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/8511/8511805.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Orthopedics",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xff20d7a9),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/10541/10541175.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Dermatology",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xfffd6a63),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/4100/4100226.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Dentistry",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Doctors",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("See All")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PopularDoctorInfo(),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        height: 220,
                        width: 170,
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://thumbs.dreamstime.com/b/confident-female-doctor-smiling-stethoscope-31242696.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Text(
                              "Dr. Manisha Roy",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text("Dermatology Specialist",
                                style: TextStyle(fontSize: 10)),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/402/402039.png",
                              height: 50,
                              width: 500,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PopularDoctorInfo(),
                        ));
                      },
                      child: Container(
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://tse3.mm.bing.net/th?id=OIP.WPYPa4GubQVLa0kQqXcfvwHaHa&pid=Api&P=0&h=180"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Text(
                              "Dr. Swati Singh",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Orthopedics Specialist",
                              style: TextStyle(fontSize: 10),
                            ),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/402/402039.png",
                              height: 50,
                              width: 500,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PopularDoctorInfo(),
                        ));
                      },
                      child: Container(
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://tse4.mm.bing.net/th?id=OIP.34PqEvpvUVWypCUF1TGg7QHaJ_&pid=Api&P=0&h=180"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Text(
                              "Dr. Payal Sinha",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text("Orthopedics Specialist",
                                style: TextStyle(fontSize: 10)),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/402/402039.png",
                              height: 50,
                              width: 500,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PopularDoctorInfo(),
                        ));
                      },
                      child: Container(
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://tse3.mm.bing.net/th?id=OIP.WPYPa4GubQVLa0kQqXcfvwHaHa&pid=Api&P=0&h=180"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Text(
                              "Dr. Swati Singh",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text("Orthopedics Specialist",
                                style: TextStyle(fontSize: 10)),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/402/402039.png",
                              height: 50,
                              width: 500,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature Doctor",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("See All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 190,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/1077/1077035.png",
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/1828/1828884.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                    Text("3.7")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://tse2.mm.bing.net/th?id=OIP.KAsEIUKouda1Nedl1-JKhwHaLH&pid=Api&P=0&h=180"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Dr Crick",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/2150/2150150.png",
                                height: 15,
                                width: 15,
                              ),
                              Text(
                                "25.00/hours",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 190,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/1077/1077035.png",
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/1828/1828884.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                    Text("3.7")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://tse2.mm.bing.net/th?id=OIP.KAsEIUKouda1Nedl1-JKhwHaLH&pid=Api&P=0&h=180"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Dr Crick",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/2150/2150150.png",
                                height: 15,
                                width: 15,
                              ),
                              Text(
                                "25.00/hours",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 190,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/1077/1077035.png",
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/1828/1828884.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                    Text("3.7")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://tse2.mm.bing.net/th?id=OIP.KAsEIUKouda1Nedl1-JKhwHaLH&pid=Api&P=0&h=180"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Dr Crick",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/2150/2150150.png",
                                height: 15,
                                width: 15,
                              ),
                              Text(
                                "25.00/hours",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 190,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/1077/1077035.png",
                                  height: 16,
                                  width: 16,
                                ),
                                Row(
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/1828/1828884.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                    Text("3.7")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://tse2.mm.bing.net/th?id=OIP.KAsEIUKouda1Nedl1-JKhwHaLH&pid=Api&P=0&h=180"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Dr Crick",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/2150/2150150.png",
                                height: 15,
                                width: 15,
                              ),
                              Text(
                                "25.00/hours",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
