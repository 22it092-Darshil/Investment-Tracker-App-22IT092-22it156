import 'package:flut/Back-end/connect.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _Name = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _finalpassword = TextEditingController();
  bool passwordVisible = true;
  bool finalpasswordVisible = true;
  bool isEmailValid(String email) {
    // Email regex pattern
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
        caseSensitive: false,
        multiLine: false); // Check if the email matches the regex pattern
    return emailRegex.hasMatch(email);
  }

  bool isPasswordValid(String password) {
    // Regular expressions to check for the presence of at least 1 alphabet, 1 symbol, and 1 number
    final RegExp alphabetRegex = RegExp(r'[a-zA-Z]');
    final RegExp symbolRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final RegExp numberRegex = RegExp(r'[0-9]');

    // Check if the password meets all the criteria
    return password.length >= 8 &&
        alphabetRegex.hasMatch(password) &&
        symbolRegex.hasMatch(password) &&
        numberRegex.hasMatch(password);
  }

  bool isValidNumber(String input) {
    // Check if the input is not empty and contains only digits
    if (input.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(input)) {
      return false;
    }

    // Check if the first digit is greater than 6
    if (int.parse(input[0]) <= 6) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      children: [
                        TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
                                size: 35,
                                color: Colors.black87,
                              ),
                              hintText: "Name",
                              labelText: 'Name',
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 20, 20, 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(width: 2)),
                            ),
                            controller: _Name,
                            textInputAction: TextInputAction.next),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  size: 35,
                                  color: Colors.black87,
                                ),
                                hintText: "Email",
                                labelText: 'Email',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 20, 20, 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(width: 2))),
                            controller: _username,
                            textInputAction: TextInputAction.next),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone,
                                  size: 35,
                                  color: Colors.black87,
                                ),
                                hintText: "Mobile Number",
                                labelText: 'Mobile Number',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 20, 20, 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(width: 2))),
                            controller: _number,
                            textInputAction: TextInputAction.next),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          obscureText: passwordVisible,
                          controller: _password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
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
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          obscureText: finalpasswordVisible,
                          controller: _finalpassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 35,
                              color: Colors.black87,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2)),
                            hintText: "confirm Password",
                            labelText: "confirm Password",
                            // helperText:"Password must contain special character",
                            // helperStyle:TextStyle(color:Colors.green),
                            suffixIcon: IconButton(
                              icon: Icon(finalpasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(
                                  () {
                                    finalpasswordVisible = !finalpasswordVisible;
                                  },
                                );
                              },
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (!isEmailValid(_username.text)) {
                                Fluttertoast.showToast(
                                    msg: "Invalid Email",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black54,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else if (!isValidNumber(_number.text)) {
                                Fluttertoast.showToast(
                                    msg: "Invalid Number",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black54,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else if (!isPasswordValid(_password.text)) {
                                Fluttertoast.showToast(
                                    msg: "Invalid Password",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black54,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else if (_password.text != _finalpassword.text) {
                                Fluttertoast.showToast(
                                    msg: "Incorrect confirm password",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black54,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else {
                                Connecting c = Connecting();
                                c.add(_Name.text, _username.text,
                                    _password.text, _number.text);
                                final snackBar = SnackBar(
                                  content: const Text(
                                      'Account created successfully'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                Navigator.popAndPushNamed(context, '/home')
                                    .onError(
                                        (error, stackTrace) => print(error));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Color(0xff222831),
                                backgroundColor: Color(0xff76ABAE),
                                textStyle: TextStyle(fontSize: 27 , fontWeight: FontWeight.w600),
                                padding: EdgeInsets.only(
                                    left: 117,
                                    right: 117,
                                    top: 13,
                                    bottom: 13)),
                            child: Text("Register")),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have account ?    ",
                              style: TextStyle(fontSize: 17),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.popAndPushNamed(context, '/login')
                                    .onError(
                                        (error, stackTrace) => print(error));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Login",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Icon(Icons.login_outlined)
                                ],
                              ),
                            )
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