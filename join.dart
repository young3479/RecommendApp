import 'package:flutter/material.dart';
import 'package:wwc_recommend_vs/screens/recommend.dart';

class Join extends StatefulWidget {
  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 113, 161, 229),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Form(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.teal,
                  inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(
                      color: Colors.teal,
                      fontSize: 15.0,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter "ID"',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 40.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter "Password"',
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      SizedBox(height: 40.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter "name"',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 40.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter "date of birth"',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 40.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter "email"',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10.0),
                          Container(
                            width: 100.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '회원가입',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 100.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Recommend(),
                                  ),
                                );
                              },
                              child: Text(
                                '추천',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}