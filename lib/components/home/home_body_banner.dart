import 'package:flutter/cupertino.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // 1. 상단에 마진을 준다.
      padding: EdgeInsets.only(top: gap_m),
      // 2. 이미지와 글자를 겹치게 하기 위해서 Stack 위젯을 사용한다.
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaptin(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return SizedBox();
  }

  Widget _buildBannerCaptin() {
    return SizedBox();
  }
}
