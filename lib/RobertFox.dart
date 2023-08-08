import 'package:flutter/material.dart';
import 'package:ui_demo/SplashScreen.dart';
import 'package:ui_demo/loginSignup.dart';

class RobertFox extends StatefulWidget {
  const RobertFox({super.key});

  @override
  State<RobertFox> createState() => _RobertFoxState();
}

class _RobertFoxState extends State<RobertFox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loginSignup()),
        );
      },
      child: Scaffold(
        backgroundColor: Color(0xffFBEDED),
        // backgroundColor: Colors.purple,
        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Color(0xffFBEDED),
                child: Stack(children: [
                  Image.asset('assets/RobertsHearts.png', fit: BoxFit.cover),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //There will be a black circle icon
                          Icon(
                            Icons.circle,
                            color: Colors.black,
                            size: 10.0,
                          ),
                          //,
                          Text(
                            " Its a date!",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      // Image will be in a circle
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/ProfilePhoto.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        "This meeting was Accepted by",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      Text("Robaert Fox",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                      Text(
                        "in 1 week 2 days ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  )
                ])),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Meet Details ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins")),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Friday",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins')),
                                Expanded(
                                    child: Container(
                                  child: Center(child: Text("|")),
                                )),
                                Text("28/07/23",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins')),
                                Expanded(
                                    child: Container(
                                  child: Center(child: Text("|")),
                                )),
                                Text("10:00 PM(L)",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins'))
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                Text("Location: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'Poppins')),
                                Text("Aaha Food Court ",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins')),
                                Expanded(child: Container()),
                                Icon(
                                  Icons.chevron_right_sharp,
                                  size: 30,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "Cancel Meet",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff762A39),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "Close",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
