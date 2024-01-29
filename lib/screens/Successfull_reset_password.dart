import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:motion_project_internship_week3/screens/loginScreen.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.only(top: 30, left: 16, bottom: 24, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image(image: AssetImage("assets/images/rotation_lock.png")),
                const SizedBox(height: 34,),
                Center(child: Text("Your Password has\n been reset!", style: TextStyle(color: Color(0xFFF54749), fontSize: 28, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
                )),
                const SizedBox(height: 48,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFF54749), minimumSize: const Size(double.infinity, 56)),
                    onPressed: () => Get.to(() => LoginForm()),
                    child: const Text('DONE', style: TextStyle(color: Color(0xFFFFFFFF)),),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
      ),
    );
    
  }
}