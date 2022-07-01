import 'package:App/shared/components/components.dart';
import 'package:flutter/material.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController =TextEditingController();

  var passwordController =TextEditingController();

  var formKey = GlobalKey<FormState>() ;

  bool isPassword =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(

            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email',
                   // onChange: ,
                    //onSubmit: ,
                    prefix:Icons.email ,
                    type: TextInputType.emailAddress,
                    validate: (value)
                    {
                      if(value.isEmpty)
                      {
                        return 'Email Address must not be empty';
                      }
                      return null;
                    },

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                    defaultFormField(
                      controller: passwordController,
                      label: 'Password',
                      // onChange: ,
                      //onSubmit: ,
                      prefix:Icons.lock ,
                      suffix: isPassword? Icons.visibility_off: Icons.visibility,
                      isPassword: isPassword,

                      suffixPressed: ()
                      {
                        setState(() {

                          isPassword=! isPassword;


                        });
                      },
                      type: TextInputType.visiblePassword,
                      validate: (value)
                      {
                        if(value.isEmpty)
                        {
                          return 'Password is too short';
                        }
                        return null;
                      },

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    radius: 5,
                    function: ()
                    {
                      if(formKey.currentState.validate())
                        {
                          print(emailController.text);
                          print(passwordController.text);
                        }

                    },

                    text: 'login',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Don\'t have an Account?'),
                      FlatButton(onPressed:(){}, child:Text(
                        'Register Now',style: TextStyle(color: Colors.blueAccent),
                      ),
                      ),

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
