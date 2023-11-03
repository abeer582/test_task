import 'package:flutter/material.dart';
import 'package:test_task/views/screens/layout/com.dart';

import '../../utils/constants.dart';

class OrderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xfffff5f5),
      child: Row(
        children: [
          SizedBox(width:MediaQuery.of(context).size.width*0.025 ,),
          Column(
            children: [
              TheHeaderByBlackColor(f: 20,title:  'Multi-Services for Your\nReal Estate Needs',
              ),
    SizedBoxForHeight(h:0.03 ,),
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width*0.43,
                      height: MediaQuery.of(context).size.height*0.055,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                          color: AppColors.primaryColor
                      ),
                      child: Center(child: TheHeaderByWhiteColor(title: 'Order',f: 16,))),
                  SizedBox(width:MediaQuery.of(context).size.width*0.07 ,),


                ],
              ),

            ],),
          Image(image: AssetImage('assets/image/02 Man Presentation Miniature Building.png'),),

        ],),
    );
  }
}
