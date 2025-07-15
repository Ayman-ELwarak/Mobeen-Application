import 'package:flutter/material.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/components/GetRequest.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/User.dart';
import 'package:mobile_app/screens/Follow_Up.dart';
import 'package:mobile_app/screens/SigninPage.dart';
import 'package:mobile_app/screens/UpdatePassword.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

bool isLoading = false;
bool action = false;
bool requestLoading = false;

User user = User(name: '', email: '', points: 0);

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(prefs.getString('token'));
      Map<String, dynamic> response =
          await GetRequest('$link/api/v1/users/me', prefs.getString('token')!);
      Map<String, dynamic> data = response['data'];
      setState(() {
        user.name = data['data']['name'];
        user.email = data['data']['email'];
        user.points = data['data']['points'];
        requestLoading = true;
      });
      print(user.name);
      print(user.email);
      print(user.points);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: !requestLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Container(
                height: screenheight,
                width: screenwidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/images/profileBackground.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            GestureDetector(
                              onTap: () async {
                                setState(() {
                                  action = true;
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return FollowUp();
                                    },
                                  ),
                                );
                                await Future.delayed(Duration(seconds: 1));
                                setState(() {
                                  action = false;
                                });
                              },
                              child: Container(
                                width: !action
                                    ? screenwidth / 2.5
                                    : screenwidth / 2.3,
                                height: !action
                                    ? screenheight / 20
                                    : screenheight / 18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: Textaa(
                                    child: Text(
                                      'متابعة التقدم',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenheight / 10,
                        ),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                width: screenwidth,
                                height: screenheight / 1.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.grey.shade100, width: 2),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: screenheight / 15),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Textaa(
                                            child: Text(
                                              'نقطة',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4.0),
                                            child: Textaa(
                                              child: Text(
                                                user.points.toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                      _buildTextField(
                                          label: 'الاسم', hint: user.name),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      _buildTextField(
                                          label: 'الإيميل', hint: user.email),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      _buildPasswordField(),
                                      Spacer(flex: 3),
                                      GestureDetector(
                                        onTap: () async {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          SharedPreferences prefs =
                                              await SharedPreferences
                                                  .getInstance();
                                          await prefs.setBool(
                                              'isLoggedIn', false);
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return Signinpage();
                                              },
                                            ),
                                          );
                                          setState(() {
                                            isLoading = false;
                                          });
                                        },
                                        child: Container(
                                          height: screenheight / 15,
                                          width: screenwidth,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF8EB3B7),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              height: screenheight / 22,
                                              child: Textaa(
                                                child: Text(
                                                  'تسجل الخروج',
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
                              ),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Color(0xFF5D5C5C),
                              child: Image.asset(
                                'assest/images/avater.png',
                                height: screenheight / 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child:
                          isLoading ? CircularProgressIndicator() : SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildTextField({required String label, required String hint}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            label,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
          ),
          child: Center(
              child: Textaa(
            child: Text(
              hint,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
        )
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Updatepassword();
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Container(
                    child: Icon(
                      Icons.edit,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Text(
                'كلمة المرور',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Textaa(
              child: Text(
                '***************',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
            ),
          )),
        )
      ],
    );
  }
}
