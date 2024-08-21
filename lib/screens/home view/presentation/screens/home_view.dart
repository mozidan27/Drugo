import 'package:drugo/core/utils/app_color.dart';
import 'package:drugo/screens/home%20view/presentation/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          MyTextField(
              controller: _controller,
              hintText: 'Enter Your Durg Name',
              obscureText: false)
        ],
      )),
    );
  }
}
