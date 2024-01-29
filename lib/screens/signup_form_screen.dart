import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:motion_project_internship_week3/screens/loginScreen.dart';
import 'package:motion_project_internship_week3/screens/widgets/food_app_header.dart';
import 'package:motion_project_internship_week3/screens/widgets/food_social_buttons.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 70, left: 24, bottom: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -- Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FoodAppHeader(onPressed: "Sign Up"),
                      const SizedBox(height: 32,),
                      /// -- Name
                      TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixStyle: TextStyle(color: Color(0xFFE2E2E2), fontWeight: FontWeight.w700),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          labelText: "NAME",
                          suffixIcon: Icon(Icons.check, color: Color(0xFFF54749),),
                        ),
                      ),
                      const SizedBox(height: 32,),
            
                      /// -- Email
                      TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixStyle: TextStyle(color: Color(0xFFE2E2E2), fontWeight: FontWeight.w700),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          labelText: "EMAIL",
                          suffixIcon: Icon(Icons.check, color: Color(0xFFF54749),),
                        ),
                      ),
                      const SizedBox(height: 32,),

                      /// Password
                      TextFormField(
                        obscureText: true,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixStyle: TextStyle(color: Color(0xFFE2E2E2), fontWeight: FontWeight.w700),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          labelText: "PASSWORD",
                          suffixIcon: IconButton(
                              onPressed: (){}, 
                              icon: const Icon(Iconsax.eye_slash), color: Color(0xFFF54749),
                            ),
                        ),
                      ),
                      const SizedBox(height: 32,),

                      /// -- Confirm Password
                      TextFormField(
                        obscureText: true,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixStyle: TextStyle(color: Color(0xFFE2E2E2), fontWeight: FontWeight.w700),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          labelText: "CONFIRM PASSWORD",
                          suffixIcon: IconButton(
                              onPressed: (){}, 
                              icon: const Icon(Iconsax.eye_slash), color: Color(0xFFF54749),
                            ),
                        ),
                      ),
                      const SizedBox(height: 40,),

                      /// -- SignIn Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF54749), minimumSize: Size(double.infinity, 56)),
                          onPressed: (){},
                          child: const Text('SIGN UP', style: TextStyle(color: Color(0xFFFFFFFF)),),
                        ),
                      ),
                      const SizedBox(height: 16,),
              
                      /// -- Description Signup Button in SignInScreen
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Already have an account?"),
                          TextButton(onPressed: () => Get.to(() => const LoginForm()), 
                        child: Text('Sign In', style: TextStyle(color: Color(0xFFF54749)),),
                        ),
                        ],
                      ),
                      const SizedBox(height: 64,),
    
                      /// -- Social Buttons
                      FoodSocialButtons(),
                    ],
                  ),
                  ),
                ),
            ],
          ),
          ),
      )
    );
  }
}