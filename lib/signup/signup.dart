import 'package:flutter/material.dart';
import 'package:mama_optics/extra/res/colors.dart';
import 'package:mama_optics/extra/res/const_widget.dart';
import 'package:mama_optics/extra/size.dart';
import 'widgets/custom_elevated_btn_widget.dart';
import 'widgets/custom_text_field_widget.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                const CustomTextFieldWidget(
                  hintText: 'Enter Username',
                ),
                space10,
                const CustomTextFieldWidget(
                  hintText: 'Enter your Number',
                ),
                space10,
                const CustomTextFieldWidget(
                  hintText: 'Enter your mail',
                ),
                space10,
                Row(
                  children: [
                     Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Sex',  border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          fillColor: const Color.fromARGB(225, 210, 202, 202),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),),
                      ),
                    ),
                    const SizedBox(width: 16), // Use this to add some space
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'date of birth',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          fillColor: const Color.fromARGB(225, 210, 202, 202),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                btnText: 'SignUp',
                onpressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing Data'),
                    ),
                  );
                },
                btnColor: Colors.red,
                btnTextColor: white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already Have  an account?'),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Signup(),
                    ),
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
