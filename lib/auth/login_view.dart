import 'package:chat_application/auth/signUp_view.dart';
import 'package:chat_application/chat/view/chat_view.dart';
import 'package:chat_application/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


// validate Inputs... 

// 1) widget Form ( key: GlobalKey<FormState>) wrapping parent of forms

// 2) Add validator to textFormField

// 3) Check Validation On Button Action

class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {

bool isObsecure = true;
var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/Images/image5.jpg"),
                
              ),
              Text("Welcome Back" ,
              style: TextStyle(fontSize: 30,color: Colors.black),),
              
              
              SizedBox(height: 20),
              
              TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return "please Enter your Email";
                }  else if(!value.contains("@")){
                  return "please Enter a Valid Email";
                }
                
                 },
                  keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email_rounded),
              
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.indigo)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
              
                  ),
              
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.indigo)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  )
                ),
              ),
              
                      SizedBox(height: 20),
              
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "please Enter your Password";
                  } else if(value.length<8){
                    return "Enter at least 8 characters";
                  }
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: isObsecure,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.lock_open_rounded),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  }, 
                  icon:Icon(((isObsecure)? Icons.visibility_off_rounded:Icons.remove_red_eye_rounded ))),
              
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.indigo)
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.red)
              ),
              
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color:Colors.indigo)
                  ),
                 focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red)
                 )
                ),
              ),
              
              
              SizedBox(height: 30,),
              
              
              
                      SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(formKey.currentState!.validate()){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder:(context)=>NavBarWidget() ));

                }

              },
              style:ElevatedButton.styleFrom(
                
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
               child: Text("Login",style: 
               TextStyle(color: Colors.white,
               fontSize: 16),)),
                      ),
              
                      SizedBox(height: 30,),
              
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
              Text("Don't have an account ? "),
              TextButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
                (context)=> signUpView()
                
                ));
              }, child: 
              Text("Sign Up",
              style: TextStyle(color: Colors.indigo,),)
              
              )
                      ],
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