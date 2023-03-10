import 'package:flutter/material.dart';
import 'package:mama_optics/extra/res/colors.dart';
import 'package:mama_optics/extra/res/const_widget.dart';
import 'package:mama_optics/extra/size.dart';
import 'package:mama_optics/homescreen/homescreen.dart';
import 'package:mama_optics/signup/signup.dart';
import 'package:mama_optics/signup/widgets/custom_elevated_btn_widget.dart';
import 'package:mama_optics/signup/widgets/custom_text_field_widget.dart';
import 'package:mama_optics/verifypage.dart/verifypage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 105, 42, 42),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(
              context.getSize().width * 0.1,
            ),
            child: Column(
              children: <Widget>[
                Image.asset('assets/logo/WhatsAppImage.png'),
                emptybx,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomElevatedBtnWidget(
                        btnText: 'signin',
                        onpressed: () {},
                        btnColor: Colors.transparent,
                        btnTextColor: white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CustomElevatedBtnWidget(
                        btnText: 'Register',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ));
                        },
                        btnColor: Colors.transparent,
                        btnTextColor: white,
                      ),
                    ),
                  ],
                ),
                const CustomTextFieldWidget(
                  hintText: 'Enter Email or user name',
                ),
                space10,
                const CustomTextFieldWidget(
                  hintText: 'Password',
                ),
                space10,
                space10,
                GestureDetector(
                  child: Text(
                    'forgot your passsword  ?',
                    style: TextStyle(color: Colors.amber),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyPage(),
                        ));
                  },
                ),
                Row(
                  children: [
                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomElevatedBtnWidget(
                btnText: 'Continue',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                btnColor: Colors.red,
                btnTextColor: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
