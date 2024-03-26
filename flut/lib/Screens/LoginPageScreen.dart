import 'package:flut/Back-end/connect.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool passwordVisible = true;
  bool checkEquality(String str1, String str2) {
    return str1 == 'demo123' && str2 == 'demo@123';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'custom',
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  width: 350,
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.account_circle,
                            size: 35,
                            color: Colors.black87,
                          ),
                          hintText: "Email",
                          labelText: 'Email',
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(width: 2))),
                      controller: _username,
                      textInputAction: TextInputAction.next)),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                child: TextField(
                  obscureText: passwordVisible,
                  controller: _password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle,
                      size: 35,
                      color: Colors.black87,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2)),
                    hintText: "Password",
                    labelText: "Password",
                    // helperText:"Password must contain special character",
                    // helperStyle:TextStyle(color:Colors.green),
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        textStyle:
                        TextStyle(fontSize: 15, color: Color(0xff76ABAE)),
                      ),
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text('Coming soon...'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "Forgot Password?",
                      )),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async{
                    Connecting c=Connecting();
                    print("check");
                    if (await c.check(_username.text, _password.text).then((value) {
                        return value;
                    }).onError((error, stackTrace){ print(error); return false;})) {
                      final snackBar = SnackBar(
                        content: const Text('Login Success'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.popAndPushNamed(context, '/home').onError((error, stackTrace) => print(error));
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Invalid Email or Password'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xff222831),
                      backgroundColor: Color(0xff76ABAE),
                      textStyle: TextStyle(fontSize: 27 , fontWeight: FontWeight.w600),
                      padding: EdgeInsets.only(
                          left: 130, right: 130, top: 13, bottom: 13)),
                  child: Text("Login")),
              SizedBox(
                height: 13,
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/register').onError((error, stackTrace) => print(error));
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xff222831),
                      backgroundColor: Color(0xff76ABAE),
                      textStyle: TextStyle(fontSize: 27 , fontWeight: FontWeight.w600),
                      padding: EdgeInsets.only(
                          left: 115, right: 115, top: 13, bottom: 13)),
                  child: Text("Register")),
            ],
          ),
        ),
      ),
    );
  }
}