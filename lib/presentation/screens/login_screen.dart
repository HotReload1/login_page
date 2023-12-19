import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: size.height,),
            Positioned(
              top: -50,
              right: -10,
              child: FadeInDown(
                duration: Duration(seconds: 1),
                child: Container(
                  height: size.width * .3,
                  width: size.width * .3,
                  decoration: BoxDecoration(
                    color: Color(0XFFf84e69),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -170,
              left: -10,
              child: FadeInDown(
                duration: Duration(milliseconds: 1300),
                child: Stack(
                  children: [
                    Container(
                      height: size.width * .8,
                      width: size.width * .8,
                      decoration: BoxDecoration(
                          color: Color(0XFFff637c),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 6,
                                offset: Offset(2, 1)),
                          ]),
                    ),
                    Positioned.fill(
                        bottom: 40,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0XFFf84e69),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 30,
                                width:  30,
                                decoration: BoxDecoration(
                                  color: Color(0XFFf84e69),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 20,
              child: FadeInUp(
                duration: Duration(milliseconds: 1200),
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0XFFff637c),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                    ),
                    Positioned.fill(
                      top: 30,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Color(0XFFf84e69),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Color(0XFFf84e69),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: FadeInDown(
                duration: Duration(milliseconds: 1500),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login",style: TextStyle(
                          color: Color(0XFFf84e69),
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 30,),
                        TextField(
                          style: TextStyle(
                            fontSize: 16
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFFf84e69)),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFFf84e69)),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          style: TextStyle(
                              fontSize: 16
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFFf84e69)),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFFf84e69)),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    colors: [Color(0XFFff637c),Color(0XFFf84e69)],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight
                                )
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 17
                              ),
                            ),
                            SizedBox(width: 9,),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
