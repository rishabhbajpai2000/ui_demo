import 'package:flutter/material.dart';
import 'package:ui_demo/splash_screen.dart';

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
          MaterialPageRoute(builder: (context) => const SplashScreen()),
        );
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFBEDED),
        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: const Color(0xffFBEDED),
                child: Stack(children: [
                  Image.asset('assets/RobertsHearts.png', fit: BoxFit.cover),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.black,
                            size: 10.0,
                          ),
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
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/ProfilePhoto.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        "This meeting was Accepted by",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      const Text("Robaert Fox",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                      const Text(
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
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Meet Details ",
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
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Friday",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins')),
                                Expanded(
                                    child: Center(child: Text("|"))),
                                Text("28/07/23",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins')),
                                Expanded(
                                    child: Center(child: Text("|"))),
                                Text("10:00 PM(L)",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins'))
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                const Text("Location: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'Poppins')),
                                const Text("Aaha Food Court ",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: 'Poppins')),
                                Expanded(child: Container()),
                                const Icon(
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
                      child: const Center(
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
                        color: const Color(0xff762A39),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
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
