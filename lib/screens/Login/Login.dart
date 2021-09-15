import 'package:flutter/material.dart';
import 'package:instagram_preview/constants/Colors.dart';
import 'package:instagram_preview/constants/Messages.dart';
import 'package:flutter_insta/flutter_insta.dart';


import '../Home/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  //controllers
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  bool _errorMenssagesIsVisible = false;

  @override
  void initState(){
    _getProfileInfo("joaosimonassi");
    // TODO: implement initState
    setState(() {
      _errorMenssagesIsVisible = false;
    });
    super.initState();

  }

  _getProfileInfo(String username) async {
    FlutterInsta flutterInsta = new FlutterInsta();
    await flutterInsta.getProfileData(username);
    print(flutterInsta.bio);
  }

  bool validateInfos() {
    return _controllerEmail.text.isNotEmpty &&
        _controllerPassword.text.isNotEmpty;
  }

  void initLoginFlux(BuildContext context) async {
    // Navigator.pushAndRemoveUntil(context,
    //     MaterialPageRoute(builder: (BuildContext context) => Home()), (Route<dynamic> route) => false);
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Home()));
  }

  void initSignUpFlux() {}

  void initResetPasswordFlux() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              AppColors.BACKGROUND_BLUE_1,
              AppColors.BACKGROUND_BLUE_2,
              AppColors.BACKGROUND_PURPLE_1,
            ])),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                right: size.width * 0.07,
                left: size.width * 0.07,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 128,
                    height: 128,
                    //child: Image.asset("assets/images/logo-small.png"),
                  ),
                  SizedBox(
                    //Apenas para colocar um espaço entre a imagem e o input
                    height: size.height * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.WHITE_LOW_OPACITY,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 50,
                    child: TextFormField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          labelText: AppMessages.PLACEHOLDER_EMAIL,
                          labelStyle: TextStyle(
                            color: AppColors.WHITE_LOW_OPACITY,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          )),
                      style: TextStyle(
                        //Texto escrito pelo usário
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _errorMenssagesIsVisible,
                    child: Container(
                      padding: EdgeInsets.only(right: 10, top: 2),
                      child: Text(
                        "Abc",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.red, fontSize: 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.WHITE_LOW_OPACITY,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 50,
                    child: TextFormField(
                      controller: _controllerPassword,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 5, bottom: 5),
                          labelText: AppMessages.PLACEHOLDER_PASSWORD,
                          labelStyle: TextStyle(
                            color: AppColors.WHITE_LOW_OPACITY,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          )),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _errorMenssagesIsVisible,
                    child: Container(
                      padding: EdgeInsets.only(right: 10, top: 2),
                      child: Text(
                        "Ok",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.red, fontSize: 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  TextButton(
                      onPressed: () {initLoginFlux(context);},
                      child: Container(
                        width: size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.WHITE_LOW_OPACITY,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          AppMessages.BUTTON_LOGIN,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text(
                          AppMessages.BUTTON_FORGET_PASSWORD,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          initResetPasswordFlux();
                        },
                      )),
                  Container(
                    height: 1,
                    color: AppColors.WHITE_LOW_OPACITY,
                  ),
                ],
              ),
            ),
             Expanded(child: Container()),
             Container(
                  color: AppColors.WHITE_LOW_OPACITY,
                  width: size.width,
                  height: 55,
               alignment: Alignment.center,
               child: Text(
                 AppMessages.NEW_ACCOUNT,
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}
