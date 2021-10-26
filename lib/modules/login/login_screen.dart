import 'package:firstapp/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller =TextEditingController();
  var passwordcontroller =TextEditingController();
  var formkey =GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey ,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    defaultFormField(
                      controller: emailcontroller,
                      label: 'email address',
                      prefix: Icons.email_outlined,
                      type: TextInputType.emailAddress,
                      validator: (value)
                      {
                        if (value!.isEmpty)
                        {
                          return "email must be not empty" ;
                        }
                        return null;
                      },

                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    defaultFormField(
                      prefix: Icons.lock,
                      controller: passwordcontroller,
                      label: 'password',
                      type: TextInputType.visiblePassword,
                      suffix:isPassword? Icons.visibility_off : Icons.visibility,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'password must be not empty';
                        }
                        return null;
                      },
                      isPassword: isPassword,
                      suffixPressed: ()
                      {
                        setState(()
                        {
                          isPassword = !isPassword;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                        function: (){
                          if(formkey.currentState!.validate()){
                            print(emailcontroller.text);
                            print(passwordcontroller.text);
                          }
                        },
                        text: 'login',
                      isUpperCase: false,
                      radius: 16,

                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',

                        ),
                        TextButton(onPressed: (){}, child: Text(''
                            'Register Now'))
                      ],
                    ),
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}
