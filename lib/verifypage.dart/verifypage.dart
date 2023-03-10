import 'package:flutter/material.dart';
import 'package:mama_optics/extra/res/colors.dart';
import 'package:mama_optics/extra/res/const_widget.dart';
import 'package:mama_optics/extra/size.dart';
import 'package:mama_optics/signup/widgets/custom_elevated_btn_widget.dart';
import 'package:mama_optics/signup/widgets/custom_text_field_widget.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

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
                Text(
                  'Verfy',
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Text(
                  'enter confirmation code we send to',
                  style: TextStyle(color: Colors.amber),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      '+91 4567890567',
                      style: TextStyle(color: Colors.amber),
                    ),
                    Text(
                      'Request new one',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.amber),
                    )
                  ],
                ),
                space10,
                const CustomTextFieldWidget(
                  hintText: 'Enter OTP',
                ),
                space10,
                const CustomTextFieldWidget(
                  hintText: 'Enter Password Password',
                ),
                space10,
                const CustomTextFieldWidget(
                  hintText: ' RE-EnterPassword',
                ),
                space10,
                space10,
                Text(
                  'or use account from',
                  style: TextStyle(color: Colors.amber),
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
                onpressed: () {},
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
