import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeagerAppbar extends StatelessWidget {
  const HomeHeagerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(), // 자식들의 공간을 균등하게 분배해준다.
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
            // 가장 왼쪽 위 로고
            "assets/logo.png",
            width: 30,
            height: 30,
            color: kAccentColor),
        SizedBox(height: gap_s), // 로그와 글자 사이에 간격
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white), // styles에 만들어 둔 글자를 꺼내 사용
        ),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        // 1. 클릭에 이벤트를 원하면 Inkwell 이나 TextButton 위젯을 사용하면 된다.
        Text(
          "회원가입",
          style: subtitle1(mColor: Colors.white),
        ),
        SizedBox(width: gap_m),
        Text(
          "로그인",
          style: subtitle1(mColor: Colors.white),
        ),
      ],
    );
  }
}
