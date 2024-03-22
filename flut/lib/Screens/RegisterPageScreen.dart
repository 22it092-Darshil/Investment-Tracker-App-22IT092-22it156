import 'package:flutter/material.dart';
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
                                color: Colors.black54,
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
                                  color: Colors.black54,
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
                                  color: Colors.black54,
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
                              color: Colors.black54,
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
                          obscureText: passwordVisible,
                          controller: _finalpassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 35,
                              color: Colors.black54,
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
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_Name.text == "" ||
                                  _username.text == "" ||
                                  _password.text == "" ||
                                  _finalpassword.text == "") {
                                final snackBar = SnackBar(
                                  content: const Text('Enter all detail !'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else if (_finalpassword.text !=
                                  _password.text) {
                                final snackBar = SnackBar(
                                  content:
                                  const Text('Correct Confirm Password'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                final snackBar = SnackBar(
                                  content:
                                  const Text('Account created successfully'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            }
                            ,
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.deepPurple.shade900,
                                textStyle: TextStyle(fontSize: 25),
                                padding: EdgeInsets.only(
                                    left: 117,
                                    right: 117,
                                    top: 13,
                                    bottom: 13)),
                            child: Text("Register")),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have account ?    ",style: TextStyle(fontSize: 17),),
                            InkWell(
                              onTap: (){
                                Navigator.popAndPushNamed(context, '/login').onError((error, stackTrace) => print(error));
                              },
                              child: Row(
                                children: [
                                  Text("Login",style: TextStyle(fontSize: 17),),
                                  Icon(Icons.login_outlined)
                                ],
                              ) ,
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