import 'package:flutter/material.dart';
import 'package:mobile_app/components/AlertLogin.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/components/PatchRequest.dart';
import 'package:mobile_app/components/PatchRequestToUpdatePass.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/components/ValidDataUser.dart';
import 'package:mobile_app/screens/Profile.dart';
import 'package:mobile_app/screens/SigninPage.dart';

class Updatepassword extends StatefulWidget {
  Updatepassword({super.key});

  @override
  State<Updatepassword> createState() => _UpdatepasswordState();
}

class _UpdatepasswordState extends State<Updatepassword> {
  bool isLoading = false;

  bool _isObscuredOld = true;
  bool _isObscured = true;
  bool _isObscured2 = true;

  final TextEditingController old_password = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm_password = TextEditingController();

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
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: screenwidth / 17,
                      left: screenwidth / 17,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.7,
                      width: (MediaQuery.of(context).size.width),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenwidth / 1.5,
                            child: Textaa(
                              child: Text(
                                'اعادة تعيين كلمة المرور',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w900,
                                ),
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
                                  padding: EdgeInsets.only(
                                      bottom: screenheight / 35),
                                  child: SizedBox(
                                    height: screenheight / 12,
                                    child: TextField(
                                      controller: old_password,
                                      obscureText: _isObscuredOld,
                                      decoration: InputDecoration(
                                        hintText: 'ادخل كلمة المرور القديمة',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isObscuredOld
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isObscuredOld = !_isObscuredOld;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: screenheight / 35),
                                  child: SizedBox(
                                    height: screenheight / 12,
                                    child: TextField(
                                      controller: password,
                                      obscureText: _isObscured,
                                      decoration: InputDecoration(
                                        hintText: 'ادخل كلمة المرور الجديدة',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                  padding: EdgeInsets.only(
                                      bottom: screenheight / 35),
                                  child: SizedBox(
                                    height: screenheight / 12,
                                    child: TextField(
                                      controller: confirm_password,
                                      obscureText: _isObscured2,
                                      decoration: InputDecoration(
                                        hintText:
                                            'اعد ادخال كلمة المرور الجديدة',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isObscured2
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isObscured2 = !_isObscured2;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    Map<String, dynamic> data = {
                                      "passwordCurrent": old_password.text,
                                      "password": password.text,
                                      "passwordConfirm": confirm_password.text
                                    };
                                    setState(() {
                                      isLoading = true;
                                    });
                                    String message =
                                        await patchReuestToUpdatePass(
                                            '$link/api/v1/users/updateMyPassword',
                                            data);
                                    print(message);
                                    if (message == 'success') {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            content: SizedBox(
                                              height: (screenheight / 3) + 120,
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 6.0),
                                                      child: Text(
                                                        'تمت العملية بنجاح',
                                                        style: TextStyle(
                                                          fontSize: 28,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 20),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return Signinpage();
                                                          },
                                                        ),
                                                      );
                                                      print("Trying again...");
                                                    },
                                                    child: Text("تم"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    } else {
                                      AlertLogin(context, 'خطأ', 'حدث خطأ ما',
                                          'حاول مرة اخري');
                                    }
                                    setState(() {
                                      isLoading = false;
                                    });
                                  },
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 12,
                                    width:
                                        (MediaQuery.of(context).size.width) / 3,
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
