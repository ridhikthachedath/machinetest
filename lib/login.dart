import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://www.crushpixel.com/big-static15/preview4/cute-rag-doll-baby-cat-1950351.jpg"),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        children: [
          Container(
              height: 150,
              child:Center (
                child: Text("KITENX"),
              )
          ),
          SizedBox(height: 30.0,),
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              hintText: 'username',
              suffixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),

              ),
            ),
          ),
          SizedBox(height: 20.0,),
          TextField(
            controller: passwordcontroller,

            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 40,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child:ElevatedButton(
                onPressed: (){
                  loginData();
                },
                child: Text(
                  "login",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                )),
          ),
        ],
      ),
    );
  }
  void loginData() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.get('username');
    final password = prefs.get('password');
    if (username == emailcontroller.text &&
        password == passwordcontroller.text) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => (dashboard())));
    }
    else {
      //
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => login()));
      showDialog(context: context, builder: (context) {
        return const AlertDialog(
          content: Text("Incorrect password"),
        );
      }
      );
    }
  }
}
