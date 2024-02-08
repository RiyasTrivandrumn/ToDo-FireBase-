import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => RegisterViewState();
}

class RegisterViewState extends State<RegisterView> {
  TextEditingController _emailcontroller=TextEditingController();
  TextEditingController _passwordcontroller=TextEditingController();
  TextEditingController _namecontroller=TextEditingController();

  final _RegisterKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final themedata=Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _RegisterKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Text("Create an  Account",style: themedata.textTheme.displayMedium,),
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
              SizedBox(height: 20,),
              TextFormField(
                style: themedata.textTheme.displaySmall,
                
                controller: _namecontroller,
                validator: (value) {
                  value!.isEmpty ? "Enter Your Name": null;
                },
                 decoration: InputDecoration(
                  hintText: "Enter name",
                  hintStyle: themedata.textTheme.displaySmall,
          
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)
              ))),
              SizedBox(height: 10,),
              ElevatedButton(onPressed:() {
                
              }, child: Text("Register",
              style: themedata.textTheme.displayMedium,),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.teal
              )),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account?",style: themedata.textTheme.displaySmall,),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text("Login",style: themedata.textTheme.displayMedium,))
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}