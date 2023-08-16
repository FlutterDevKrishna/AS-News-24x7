import 'package:flutter/material.dart';

class OTP_Login extends StatefulWidget {
  const OTP_Login({Key? key}) : super(key: key);

  @override
  State<OTP_Login> createState() => _OTP_LoginState();
}

class _OTP_LoginState extends State<OTP_Login> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                      hintText: 'Enter Mobile Number',
                      labelText: 'Mobile Number',
                      suffix: Container(width: 100,height: 30,child: ElevatedButton(onPressed: () {

                      },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo.shade700),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),child: Text('Get OTP'),)),
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigo.shade700,width: 1.5),), ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: _isObscured, // Controls the text visibility
                  decoration: InputDecoration(

                      hintText: 'Enter OTP',
                      labelText: 'Enter OTP',
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

              SizedBox(height: 10,),
              Container(
                width: 150,
                height: 40,
                child: ElevatedButton(onPressed: () {

                },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo.shade700),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),child: Text('Verify')),
              )

            ]),
      ),

    );
  }
}
