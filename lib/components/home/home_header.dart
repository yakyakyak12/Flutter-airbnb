import 'package:flutter/cupertino.dart';
import 'package:flutter_airbnb/components/home/home_header_form.dart';
import 'package:flutter_airbnb/components/home/home_heager_appbar.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHeager extends StatelessWidget {
  const HomeHeager({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HomeHeagerAppbar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
