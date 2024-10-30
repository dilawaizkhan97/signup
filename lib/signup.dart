import 'package:flutter/material.dart';
import 'package:signup/login.dart';
class Signup extends StatelessWidget {
  Signup({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Signup',
            style: TextStyle(
              color: Colors.indigo,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 30,right: 12,),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter  full name',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:10,bottom:15,right: 12,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.indigo),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller: nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Enter your email',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20,),

                        margin: (EdgeInsets.only(top: 10,bottom: 15,right: 12,)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.indigo),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Enter your password',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20,),
                        margin: (EdgeInsets.only(top: 10,bottom: 15,right: 12,)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.indigo),
                        ),
                        child: TextFormField(

                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.white,
                              ),
                            )),
                      ),

                      Text(
                        'Confirm your password',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.only
                          (right: 20, ),
                        margin: (EdgeInsets.only(top: 5,bottom: 15,right: 12,)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.indigo,
                            )),
                        child: TextFormField(
                          obscureText: true,
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                      SizedBox(height: 1,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_box_outline_blank,
                            color: Colors.white,
                          ),
                          Text(
                            'I agree to the',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Privacy',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'and',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Policy',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (Context) =>
                                      LoginScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            right: 80,
                            left: 60,
                          ),
                          child: Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Signup',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                  color: Colors.white,),),TextButton(onPressed: (){},
                                child:Text('Login',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ))
                    ]),
              ),
            )));
  }
}
