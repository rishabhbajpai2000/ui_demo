import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/LoginProvider.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({super.key});

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/Curve.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Please Enter Your OTP',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFCBD4E1)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: _numberController,
                                keyboardType: TextInputType.number,
                                maxLength: 6,
                                decoration: const InputDecoration(
                                  hintText: 'Enter here',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder:
                                      InputBorder.none, // Remove the underline
                                  focusedBorder:
                                      InputBorder.none, // Remove the underline
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical:
                                          1.0), // Add padding to hint text
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFCBD4E1)),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Consumer<LoginProvider>(
                      builder: (BuildContext context, value, Widget? child) {
                        return GestureDetector(
                          onTap: () async {
                            print(
                                "\n\n\n\n\n the send otp funciton was triggered");
                            await LoginProvider()
                                .checkOtp(_numberController.text, context);
                          },
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xFF762A39),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color(0xFFCBD4E1),
                                ),
                              ),
                              child: const Text(
                                'Enter OTP',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
