import 'package:flutter/cupertino.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 상단에 마진을 준다.
      padding: EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          "한국 숙소에 직접 다녀간 게스트의 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 2,500,000개 이상, 평균 4.7점(5점 만점)",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildPopularList() {
    // 1. 전체 화면사이즈를 1000이라고 가정하고 이해를 해보자.
    // 2. _buildPopularList의 넓이는 화면의 70%이니까 700이다.
    // 3. HomeBodyPopularItem의 넓이는 700의 1/3인 233.33 - 5의 크기니까 총 228.33이다.
    // 4. 228.33의 익ㄴ기 아이템이 3개가 배치되면 684.99 크기이고 남은 크기는 15.01이 남는다.
    // 5. 그래서 HomeBodyPopularItem 위젯 사이사이에 SizedBox를 7.5를 줄 수 있다.
    return Wrap(
      // Wrap은 공간이 충분하지 않은 경우 남은 위젯이 교차 축으로 정렬된다. (옆으로 가다가 밑으로)
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
