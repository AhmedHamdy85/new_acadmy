import 'package:flutter/material.dart';

class GoogelFacbookTwiterContainer extends StatelessWidget {
  const GoogelFacbookTwiterContainer({
    super.key,
    required this.localWidth,
    required this.image,
    required this.companyName,
  });
  final String image;
  final String companyName;
  final double localWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: localWidth * 0.28,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Color(0xffDEDEDE), width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            width: localWidth * 0.04,
            height: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            companyName,
            style: TextStyle(fontSize: localWidth * 0.03),
          )
        ],
      ),
    );
  }
}
