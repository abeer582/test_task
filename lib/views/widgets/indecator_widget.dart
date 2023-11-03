import 'package:flutter/material.dart';
import 'package:test_task/utils/constants.dart';

class IndecatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
     Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
         SizedBox(width:MediaQuery.of(context).size.width*0.04 ,),

         smallContainer(),
         SizedBox(width:MediaQuery.of(context).size.width*0.01 ,),

         Container(height: 8,
           width: 34,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
         color: AppColors.primaryColor
       ),),
         SizedBox(width:MediaQuery.of(context).size.width*0.01 ,),

         smallContainer()
       ],);

  }

}class smallContainer extends StatelessWidget {
  const smallContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 10,
      width: 10,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
          color: Color(0xffE0E0E0)
      ),);
  }
}

