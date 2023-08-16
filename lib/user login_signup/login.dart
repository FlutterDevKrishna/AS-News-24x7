import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        backgroundColor:Colors.indigo.shade700 ,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      labelText: 'Username',
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigo.shade700,width: 1.5),)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigo.shade700,width: 1.5),)
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: _isObscured, // Controls the text visibility
                  decoration: InputDecoration(

                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured; // Toggle visibility
                          });
                        },
                        icon: Icon(
                          _isObscured ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigo.shade700,width: 1.5),)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {

                },child: Text('Forgot Password?',style: TextStyle(color: Colors.grey.shade800),)),
              ),
              SizedBox(height: 10,),
              Container(
                width: 150,
                height: 40,
                child: ElevatedButton(onPressed: () {

                },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo.shade700),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),child: Text('Sign In')),
              )

            ]),
      ),
    );
  }
}
