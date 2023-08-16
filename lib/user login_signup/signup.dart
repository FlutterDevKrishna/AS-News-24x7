import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int selectedValue = -1; // Default no selection

  final List<String> options = ['Media Reporter', 'Visitor',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Signup'),
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
                  decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      labelText: 'Mobile Number',
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigo.shade700,width: 1.5),)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigo.shade700,width: 1.5),)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10,right: 10,left: 10),
                  alignment: Alignment.topLeft,
                  child: Text('I am a',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
              Container(
                width: 300,
                height: 100,
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: options.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      child: RadioListTile<int>(
                        title: Text(options[index]),
                        value: index,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: 150,
                height: 40,
                child: ElevatedButton(onPressed: () {

                },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo.shade700),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),child: Text('Sign Up')),
              )

        ]),
      ),
    );
  }
}
