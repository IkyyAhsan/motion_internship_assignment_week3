import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:motion_project_internship_week3/screens/Successfull_reset_password.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 16, bottom: 24, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Enter new password and confirm.", style: TextStyle(fontSize: 16),),
              Form(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        obscureText: true,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixStyle: TextStyle(color: Color(0xFFE2E2E2), fontWeight: FontWeight.w700),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          labelText: "NEW PASSWORD",
                          suffixIcon: IconButton(
                              onPressed: (){}, 
                              icon: const Icon(Iconsax.eye_slash), color: Color(0xFFF54749),
                            ),
                        ),
                      ),
                      const SizedBox(height: 40,),
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
                      /// -- Send Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF54749), minimumSize: const Size(double.infinity, 56)),
                          onPressed: () => Get.to(() => SuccessResetPassword()),
                          child: const Text('CHANGE PASSWORD', style: TextStyle(color: Color(0xFFFFFFFF)),),
                        ),
                      ),

                    ],
                  ),
                  ),
                ),
            ],
          ),
          ),
      ),
    );
  }
}