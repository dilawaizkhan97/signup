import 'package:flutter/material.dart';
class LoginScreen  extends StatelessWidget {
  LoginScreen ({super.key});
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(' Login',style: TextStyle(color: Colors.indigo,),),
          centerTitle: true,

        ),
        body:Center(
          child: Column
            (
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 175,top: 50,),
                child: Text(
                  'Enter your email',
                  style: TextStyle(color: Colors.white,),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,right: 20,bottom: 10,),

                child:Container(
                  margin: EdgeInsets.only(right:12,bottom: 10,top:10, ),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(border: Border.all(color: Colors.indigo,),
                    borderRadius: BorderRadius.circular(15),),
                  child: TextFormField(
                      obscureText: true,
                      controller: emailController,
                      decoration: InputDecoration(

                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.mail_outline_sharp,
                          color: Colors.white,),)
                  ),
                ),),
              SizedBox(height: 1,),
              Padding(
                padding: const EdgeInsets.only(right: 175,),
                child: Text(
                  'Enter your password',
                  style: TextStyle(color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,),


                child: Container(
                  margin: EdgeInsets.only(right: 10,bottom: 10,top: 10,),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(

                    border: Border.all(color: Colors.indigo,),
                    borderRadius: BorderRadius.circular(15,),
                  ),child: TextFormField(
                    obscureText: true,
                    controller:passwordController,
                    decoration:InputDecoration(
                      border: InputBorder.none,
                      hintText:'Password must contain at least 8 characters' ,
                      hintStyle: TextStyle(
                        color: Colors.white38,fontSize: 10,fontWeight: FontWeight.normal,),
                      prefixIcon:Icon( Icons.key,color:Colors.white,),

                    )
                ),
                ),




              ), SizedBox(height: 15,),
              InkWell(onTap: (){
                if (emailController.text=='dilawaizkhan@gmail.com'&&
                    passwordController.text=='12345');


              },
                child:Container(
                  margin: EdgeInsets.only(right: 10,top: 10,),
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(color: Colors.white,),),
                  ),
                ),

              ),


              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                        color: Colors.white,),),TextButton(onPressed: (){},
                      child:Text('Signup',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),


                    ),

                  ],),

              ),
            ],  ),

        )  );


  }




}




