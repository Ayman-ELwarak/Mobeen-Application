import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mobile_app/components/AlertLogin.dart';
import 'package:mobile_app/components/SignInWithGoogle.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/screens/CreateAccountPage.dart';
import 'package:mobile_app/screens/ForgetPassword.dart';
import 'package:mobile_app/screens/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<dynamic> postData(String url, Map<String, dynamic> data) async {
  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      print('Data posted successfully!');
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else if (response.body.indexOf('Duplicate field value') != -1) {
      return 'account_exists';
    } else {
      print('Request failed with status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return 'failed';
    }
  } catch (e) {
    print('Error posting data: $e');
    return 'failed';
  }
}

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  bool isLoading = false;
  bool _isObscured = true;

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  get http => null;

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
          width: screenwidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/images/CreateAccBackground.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: kToolbarHeight / 2,
                        width: screenwidth,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: screenwidth / 17),
                            child: SizedBox(
                              height: screenheight / 15,
                              child: Textaa(
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: screenwidth / 17,
                          left: screenwidth / 17,
                          top: screenheight / 30,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenheight / 30,
                              child: Row(
                                children: [
                                  Textaa(
                                    child: Text(
                                      'البريد الالكتروني',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
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
                            SizedBox(
                              height: screenheight / 30,
                              child: Row(
                                children: [
                                  Textaa(
                                    child: Text(
                                      'كلمة المرور',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: screenheight / 60),
                              child: SizedBox(
                                height: screenheight / 12,
                                child: TextField(
                                  controller: password,
                                  obscureText: _isObscured,
                                  decoration: InputDecoration(
                                    hintText: 'ادخل كلمة المرور',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isObscured
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscured = !_isObscured;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: screenheight / 25),
                              child: Row(
                                children: [
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Forgetpassword();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'نسيت كلمة المرور ؟',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                Map<String, dynamic> data = {
                                  "email": email.text,
                                  "password": password.text,
                                };
                                setState(() {
                                  isLoading = true;
                                });
                                dynamic message = await postData(
                                    'https://speechable-api-7313b6c7ea20.herokuapp.com/api/v1/users/login',
                                    data);
                                print(message);
                                if (message == 'failed') {
                                  AlertLogin(
                                      context,
                                      'خطأ',
                                      'البريد الإلكتروني أو كلمة المرور غير صحيحة',
                                      'حاول مرة اخري');
                                } else {
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  await prefs.setBool('isLoggedIn', true);
                                  await prefs.setString(
                                      'token', message['token']);
                                  bool? isLoggedIn =
                                      prefs.getBool('isLoggedIn');
                                  print(isLoggedIn);
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Homepage();
                                      },
                                    ),
                                  );
                                }
                                setState(() {
                                  isLoading = false;
                                });
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height / 12,
                                width: (MediaQuery.of(context).size.width),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8EB3B7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    height: screenheight / 22,
                                    child: Textaa(
                                      child: Text(
                                        'تسجل الدخول',
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
                            Padding(
                              padding: EdgeInsets.only(top: screenheight / 25),
                              child: SizedBox(
                                height: screenheight / 35,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        thickness: 1,
                                        color: Color(0xFFD8DADC),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: screenwidth / 25),
                                      child: SizedBox(
                                        width: screenwidth / 3.2,
                                        child: Textaa(
                                          child: Text(
                                            'او سجل عن طريق',
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 63, 61, 61),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        thickness: 1,
                                        color: Color(0xFFD8DADC),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: screenheight / 35),
                              child: GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  dynamic message = await signInWithGoogle();
                                  if (message == 'failed') {
                                    AlertLogin(context, 'خطأ', 'حدث خطأ ما',
                                        'حاول مرة اخري');
                                  } else {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    await prefs.setBool('isLoggedIn', true);
                                    await prefs.setString(
                                        'token', message['token']);
                                    bool? isLoggedIn =
                                        prefs.getBool('isLoggedIn');
                                    print(isLoggedIn);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Homepage();
                                        },
                                      ),
                                    );
                                  }
                                  setState(() {
                                    isLoading = false;
                                  });
                                },
                                child: Container(
                                  width: screenwidth / 3,
                                  height: screenheight / 11,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      'assest/images/googleIcon.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: screenheight / 20),
                              child: SizedBox(
                                height: screenheight / 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return Createaccountpage();
                                            },
                                          ),
                                        );
                                      },
                                      child: Textaa(
                                        child: Text(
                                          'انشاء حساب ',
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Textaa(
                                      child: Text(
                                        'ليس لديك حساب ؟',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: isLoading ? CircularProgressIndicator() : SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
