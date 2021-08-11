import 'package:arabyy/ui/home.dart';
import 'package:flutter/material.dart';

import '../sizeConfig.dart';

class Login extends StatefulWidget {
  static String routeName = '/Login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '', image;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ///Varablie For Auth
  var _phone;
  var _password;

  ///Var For Loading
  bool _loading = false;
  bool isObset = true;

  ///Var For error
  String errPhone;
  String errPassword;
  @override
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.infinity,
              // color: Colors.black,
              padding: EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: getProportionateScreenHeight(200),
                          decoration: BoxDecoration(
                              // color: Colors.black,

                              ),
                        ),
                        Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(fontSize: 21),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(31.5),
                              ),
                              Text('Mobile number'),
                              SizedBox(
                                height: getProportionateScreenHeight(5.5),
                              ),

                              ///For PhoneNumber
                              Container(
                                color: Colors.white,
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() {
                                      _password = value;
                                    });
                                  },
                                  keyboardType: TextInputType.phone,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.black,
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: '0112',
                                  ),
                                ),
                              ),
                              Text(
                                "${errPhone ?? ''}",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(14),
                                    color: Colors.red),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(5.5),
                              ),
                              Text('Password'),
                              SizedBox(
                                height: getProportionateScreenHeight(5.5),
                              ),

                              ///For Password
                              Container(
                                color: Colors.white,
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() {
                                      _password = value;
                                    });
                                  },
                                  keyboardType: TextInputType.phone,
                                  cursorColor: Colors.black,
                                  obscureText: isObset,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.black,
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: '*****',
                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isObset = !isObset;
                                          });
                                        },
                                        child: Icon(isObset
                                            ? Icons.visibility
                                            : Icons.visibility_off)),
                                  ),
                                ),
                              ),
                              Text(
                                "${errPassword ?? ''}",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(14),
                                    color: Colors.red),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(15),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF777777)),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Or log in with',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF333333)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed(Home.routeName);
                              },
                              child: Text(
                                'Log in as a visitor',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF333333)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('I have not account');
                                // Navigator.of(context)
                                //     .pushReplacementNamed(SingUp.routeName);
                              },
                              child: Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  color: Color(0xFFB83B5E),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
