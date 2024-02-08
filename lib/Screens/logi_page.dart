import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailcontroller=TextEditingController();
  TextEditingController _passwordcontroller=TextEditingController();

  final _loginKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final themedata=Theme.of(context);
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _loginKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Text("Login to your Account",style: themedata.textTheme.displayMedium,),
              SizedBox(height: 20,),
              TextFormField(
                style: themedata.textTheme.displaySmall,
                controller: _emailcontroller,
                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter an Email Id";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: themedata.textTheme.displaySmall,
          
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)
                  )
          
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                style: themedata.textTheme.displaySmall,
                obscureText: true,
                controller: _passwordcontroller,
                validator: (value) {
                  value!.isEmpty ? "Password is Mandatory": null;
                },
                 decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: themedata.textTheme.displaySmall,
          
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)
              ))),
              SizedBox(height: 10,),
              ElevatedButton(onPressed:() {
                
              }, child: Text("Login",
              style: themedata.textTheme.displayMedium,),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.teal
              )),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an Account?",style: themedata.textTheme.displaySmall,),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/register');
                      
                    },
                    child: Text("Create Now",style: themedata.textTheme.displayMedium,))
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}