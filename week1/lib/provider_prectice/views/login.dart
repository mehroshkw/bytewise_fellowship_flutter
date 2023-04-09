import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/loginprovider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authprovider = Provider.of<LoginProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailC,
                decoration:InputDecoration(
                  border:  UnderlineInputBorder(borderSide: BorderSide(
                  color: Colors.black
                )
                
                  ),
                   hintText: "Email",)
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passC,
                decoration:InputDecoration(
                  border:  UnderlineInputBorder(borderSide: BorderSide(
                  color: Colors.black
                )
                
                  ),
                   hintText: "Password",)
                )
                
              ),
           
            ElevatedButton(
                onPressed: () {
                  authprovider.login(
                    context,
                      emailC.text.toString(), passC.text.toString()); 
                },
                child: authprovider.loading? CircularProgressIndicator() :Text("Login"))
          ],
        ),
      ),
    );
  }
}
