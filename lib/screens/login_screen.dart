import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  var email;
  var password;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          alignment: Alignment.centerLeft,
          // decoration: kBoxDe,
          height: 50,

          child: TextField(
            onChanged: (val) {
              setState(() {
                email = val;
              });
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSams'),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 8,
                  )),
              contentPadding: EdgeInsets.only(top: 12),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
                size: 20,
              ),
              hintText: "Enter your Email",
              hintStyle: TextStyle(color: Colors.white, fontSize: 9),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          alignment: Alignment.centerLeft,
          // decoration: kBoxDe,
          height: 50,
          child: TextField(
            onChanged: (val) {
              setState(() {
                password = val;
              });
            },
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSams',
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 8,
                  )),
              contentPadding: EdgeInsets.only(top: 12),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
                size: 20,
              ),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.white, fontSize: 9),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgetPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        // color: Colors.white,
        onPressed: () => print("Forget Password Button Pressed"),
        //padding: EdgeInsets.only(right: 4.0),
        child: Text(
          "Forget Password?",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckBox() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17),
      width: double.infinity,
      child: MaterialButton(
        elevation: 4.5,
        onPressed: () => print("Login Button Pressed"),
        padding: EdgeInsets.all(14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget _buildSignInWith() {
    return Column(
      children: <Widget>[
        Text(
          '-OR-',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Sign In with',
          style: TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget _buildLoginWithFacebook() {
    return GestureDetector(
      onTap: () => print('Login with Facebook'),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 5.0,
              ),
            ],
            image: DecorationImage(
                image: AssetImage('assets/logos/facebook.jpg'))),
      ),
    );
  }

  Widget _buildLoginWithGoogle() {
    return GestureDetector(
      onTap: () => print('Login with Google'),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 5.0,
              ),
            ],
            image:
                DecorationImage(image: AssetImage('assets/logos/google.jpg'))),
      ),
    );
  }

  Widget _buildSocialLink() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildLoginWithFacebook(),
          _buildLoginWithGoogle(),
        ],
      ),
    );
  }

  Widget _buildSingUpBtn() {
    return GestureDetector(
      onTap: () => print('Sign up Button Pressed '),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Don\'t have an Account?',
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFF73AEF5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 114, 183, 239),
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 37, vertical: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      _buildEmailTF(),
                      SizedBox(
                        height: 18,
                      ),
                      _buildPasswordTF(),
                      _buildForgetPasswordBtn(),
                      _buildRememberMeCheckBox(),
                      _buildLoginBtn(),
                      _buildSignInWith(),
                      _buildSocialLink(),
                      _buildSingUpBtn(),
                    ],
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
