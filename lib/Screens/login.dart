import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color.fromRGBO(9, 6, 34, 1),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildTextFormField(context, "User Name"),
                buildTextFormField(context, "Password",
                    suffexIcon: Icons.remove_red_eye, height: 1.8),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Forgot your password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width - 50,
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Color.fromRGBO(124, 55, 250, 1),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '- ', style: TextStyle(fontSize: 30)),
                    TextSpan(text: 'Or', style: TextStyle(fontSize: 28)),
                    TextSpan(text: ' -', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                    TextSpan(text: '-', style: TextStyle(fontSize: 30)),
                  ],
                )),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(children: [
                    Expanded(
                      child: buildSocialMediaButton(
                          context,
                          "Facebook",
                          Color.fromRGBO(60, 90, 153, 1),
                          FontAwesomeIcons.facebook),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: buildSocialMediaButton(
                          context,
                          "Google",
                          Color.fromRGBO(249, 83, 65, 1),
                          FontAwesomeIcons.google),
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    "Dont have an account ? Signup now",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                )
              ],
            )),
      ),
    );
  }

  Container buildSocialMediaButton(
      BuildContext context, String title, Color color, IconData icon) {
    return Container(
      width: (MediaQuery.of(context).size.width - 50) / 2,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FaIcon(
                icon,
                color: Colors.white70,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        color: color,
      ),
    );
  }

  Container buildTextFormField(BuildContext context, String hint,
      {IconData suffexIcon, IconData prefixIcon, double height}) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      margin: EdgeInsets.only(top: 20, bottom: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(19, 16, 34, 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            hintText: hint,
            suffixIcon: suffexIcon != null
                ? Icon(
                    suffexIcon,
                    color: Colors.white70,
                  )
                : null,
            hintStyle: TextStyle(
              color: Colors.white,
              height: height,
            )),
      ),
    );
  }
}
