import 'package:flutter/material.dart';
import 'package:ui_demo/SplashScreen.dart';

class loginSignup extends StatefulWidget {
  const loginSignup({super.key});

  @override
  State<loginSignup> createState() => _loginSignupState();
}

class _loginSignupState extends State<loginSignup> {
  String selectedCountryCode = '+91'; // Default selected country code

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SplashScreen()),
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Image.asset(
                'assets/Curve.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Mobile number',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFCBD4E1)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton<String>(
                                  value: selectedCountryCode,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedCountryCode = newValue!;
                                    });
                                  },
                                  items: ['+91', '+63'] // Add more country codes if needed
                                      .map<DropdownMenuItem<String>>(
                                        (value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,style:TextStyle(color:Colors.grey,),),
                                      );
                                    },
                                  ).toList(),
                                  underline: Container(), // Remove the underline
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFCBD4E1)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 10,
                                    decoration: InputDecoration(
                                      hintText: 'Enter here',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: InputBorder.none, // Remove the underline
                                      focusedBorder: InputBorder.none, // Remove the underline
                                      contentPadding: EdgeInsets.symmetric(vertical: 1.0), // Add padding to hint text
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:50),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                          Container(height:17,width:17,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCBD4E1)),
                              borderRadius: BorderRadius.circular(4.0),
                            ),),
                          SizedBox(width:10,),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'I agree to the ',
                                  style: TextStyle(color: Color(0xFF64748B)),
                                ),
                                TextSpan(
                                  text: 'Terms & Conditions',
                                  style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
                                ),
                                TextSpan(
                                  text: ' and \n',
                                  style: TextStyle(color: Color(0xFF64748B)),
                                ),
                                TextSpan(
                                  text: 'Privacy Statement.',
                                  style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ),
                        ],),
                        SizedBox(height:20),
                        GestureDetector(
                          onTap: (){},
                          child: Center(child:Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration:BoxDecoration(
                              color: Color(0xFF762A39),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xFFCBD4E1),),),
      
                            child: Text('Get OTP',style:TextStyle(color:Colors.white,), textAlign: TextAlign.center,),
                          ),),
                        ),
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