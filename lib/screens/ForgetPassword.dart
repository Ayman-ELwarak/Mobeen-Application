import 'package:flutter/material.dart';
import 'package:mobile_app/components/AlertLogin.dart';
import 'package:mobile_app/components/PostRequest.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/screens/CreateAccountPage.dart';
import 'package:mobile_app/screens/HomePage.dart';
import 'package:mobile_app/screens/PinPage.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/images/ForgetPasswordBackground.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  right: screenwidth / 17,
                  left: screenwidth / 17,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: (MediaQuery.of(context).size.width),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Textaa(
                        child: Text(
                          'نسيت كلمة المرور ؟',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: screenwidth / 17,
                          left: screenwidth / 17,
                          top: screenheight / 30,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: screenheight / 35),
                              child: SizedBox(
                                height: screenheight / 12,
                                child: TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    hintText: 'ادخل بريدك الالكتروني',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                Map<String, dynamic> data = {
                                  "email": email.text,
                                };
                                String message = await postDataToApi(
                                    'https://speechable-api-7313b6c7ea20.herokuapp.com/api/v1/users/forgotPassword',
                                    data);
                                print(message);
                                if (message == 'success') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Pinpage(
                                          email: email.text,
                                        );
                                      },
                                    ),
                                  );
                                } else {
                                  AlertLogin(
                                      context, 'البريد الإلكتروني غير صحيحة');
                                }
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height / 12,
                                width: (MediaQuery.of(context).size.width) / 3,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8EB3B7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    height: screenheight / 22,
                                    child: Textaa(
                                      child: Text(
                                        'تأكيد',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
