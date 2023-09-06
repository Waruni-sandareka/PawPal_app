import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //Our form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final firstNameEditingController = new TextEditingController();
  final secondNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //firstName Field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      //validater: () {},
      onSaved: (value){
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person, color: Colors.amber, size: 21,),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: "First Name",
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    //Second Name Field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType: TextInputType.name,
      //validater: () {},
      onSaved: (value){
        secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person, color: Colors.amber, size: 21,),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: "Second Name",
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    //email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      //validater: () {},
      onSaved: (value){
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail, color: Colors.amber, size: 21,),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: "Enter Your Email",
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    //password Field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      //validater: () {},
      onSaved: (value){
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key, color: Colors.amber, size: 21,),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: "Enter Your Password",
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    //Confirm password Field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      //validater: () {},
      onSaved: (value){
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key, color: Colors.amber, size: 21,),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: "Enter Your Password again",
        hintStyle: TextStyle(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );

    final signUpButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold),
        ),),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber, size: 30,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget> [
                    SizedBox(
                      height: 170,
                      child: Lottie.asset(
                        "assets/animations/register.json",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 30),

                    firstNameField,
                    SizedBox(height: 15),

                    secondNameField,
                    SizedBox(height: 15),

                    emailField,
                    SizedBox(height: 15),

                    passwordField,
                    SizedBox(height: 15),

                    confirmPasswordField,
                    SizedBox(height: 35),

                    signUpButton,
                    SizedBox(height: 90),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
