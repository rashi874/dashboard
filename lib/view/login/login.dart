import 'package:dashboard/view/login/const.dart';
import 'package:dashboard/view/login/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class SignUpApp extends StatelessWidget {
//   const SignUpApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/': (context) => const SigninScreen(),
//       },
//     );
//   }
// }

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // title: Image.network(
        //   'https://zaiproperty.zainikthemes.com/storage/files/Setting/logo-1675497104.png',
        //   height: 25,
        // ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SignUpForm(),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  // final _usernameTextController = TextEditingController();

  double _formProgress = 10;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LinearProgressIndicator(value: _formProgress),
            // Image.network(
            //     'https://www.alterahealth.com/wp-content/uploads/2023/09/Usability-and-Cybersecurity-Blog_Blog_feature-image-1024x398.png'),
            // SvgPicture.asset(
            //   'assets/hu.svg',
            //   height: 50,
            //   width: 50,
            // ),
            Sizes.h60,
            const Text('Login ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
                // Theme.of(context).textTheme.titleMedium,
                ),
            Sizes.h10,

            const Text('Welcome back to the app ',
                style: TextStyle(fontSize: 18, color: Color(0xff4B5768))
                // style:
                //     // TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
                //     Theme.of(context).textTheme.titleMedium,
                ),
            Sizes.h60,
            const Text('Email Address ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)
                // style:
                //     // TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
                //     Theme.of(context).textTheme.titleMedium,
                ),
            Sizes.h10,

            CustomTextfiled(
                controller: _firstNameTextController,
                keyboardType: TextInputType.emailAddress,
                action: TextInputAction.next,
                icon: Icons.mail,
                hint: 'hello@example.com',
                obscure: false,
                validator: (value) {}
                // values.emailValidation(value),
                ),
            Sizes.h20,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Password ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)
                    // style:
                    //     // TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
                    //     Theme.of(context).textTheme.titleMedium,
                    ),
                TextButton(
                    onPressed: () {}, child: const Text('Forget Password?'))
              ],
            ),
            // Sizes.h10,

            CustomTextfiled(
                controller: _lastNameTextController,
                keyboardType: TextInputType.text,
                action: TextInputAction.next,
                icon: Icons.lock,
                hint: '••••••••••••••',
                obscure: true,
                validator: (value) {},

                // values.passwordValidation(value),
                suffixIcon:
                    false == true ? Icons.visibility_off : Icons.visibility,
                suffixOntap: () {}),
            // Padding(
            //   padding: const EdgeInsets.all(8),
            //   child: TextFormField(
            //     controller: _usernameTextController,
            //     decoration: const InputDecoration(hintText: 'Username'),
            //   ),
            // ),
            Sizes.h30,

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                const Text('Keep me signed in',
                    style: TextStyle(fontSize: 16, color: Color(0xff4B5768))
                    // style:
                    //     // TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
                    //     Theme.of(context).textTheme.titleMedium,
                    ),
              ],
            ),
            Sizes.h20,

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    return states.contains(MaterialState.selected)
                        ? null
                        : Colors.white;
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    return states.contains(MaterialState.selected)
                        ? null
                        : const Color(0xff3686fc);
                  }),
                ),
                onPressed: null,
                child: const Text('Login',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            Sizes.h60,
            Center(
                child: TextButton(
                    onPressed: () {}, child: const Text('Create an account')))
          ],
        ),
      ),
    );
  }
}
