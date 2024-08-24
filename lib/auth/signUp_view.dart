import 'package:chat_application/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signUpView extends StatefulWidget {
  const signUpView({super.key});

  @override
  State<signUpView> createState() => _loginViewState();
}

class _loginViewState extends State<signUpView> {

bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/Images/image5.jpg"),
              
            ),
            Text("Create your Account" ,
            style: TextStyle(fontSize: 30,color: Colors.black,
            fontWeight: FontWeight.w500),),
            
            
            SizedBox(height: 20),

 TextFormField(
            
                keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text("Name"),
                prefixIcon: Icon(Icons.person,color: Colors.indigo,),
            
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
            
                keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_rounded,color: Colors.indigo,),
            
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
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObsecure,
              decoration: InputDecoration(
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock_open_rounded,color: Colors.indigo,),
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
            child: ElevatedButton(onPressed: (){},
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
             child: Text("Sign Up",style: 
             TextStyle(color: Colors.white,
             fontSize: 16),)),
                    ),
            
                    SizedBox(height: 30,),
            
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            Text("Already have an account? "),
            TextButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
              (context)=>loginView()));
            }, child: 
            Text("Sign In",
            style: TextStyle(color: Colors.indigo,),)
            
            )
                    ],
                  )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}