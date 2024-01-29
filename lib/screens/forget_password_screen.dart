import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_project_internship_week3/screens/new_password_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Forgot Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 17, bottom: 24, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Please enter your email address. You will receive a link to create a new password via email.", style: TextStyle(color: Color(0xFF80869A)),),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// -- Name
                      TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixStyle: const TextStyle(color: Color(0xFFE2E2E2), fontWeight: FontWeight.w700),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          labelText: "Email",
                          suffixIcon: const Icon(Icons.check, color: Color(0xFFF54749),),
                        ),
                      ),
                      const SizedBox(height: 32,),

                      /// -- Send Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF54749), minimumSize: const Size(double.infinity, 56)),
                          onPressed: () => Get.to(() => NewPasswordScreen()),
                          child: const Text('SEND', style: TextStyle(color: Color(0xFFFFFFFF)),),
                        ),
                      ),
                      const SizedBox(height: 16,),
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