import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/utils/constants.dart';
import 'package:test_task/views/screens/layout/SmallScreens.dart';
import 'package:test_task/views/screens/layout/home_screen/category/category_widget.dart';

class HomeScreen  extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<String>Titles=['Categories','Services','Orders (0)'];
int currentIndex=0;
@override
  void initState() {
    // TODO: implement initState
    currentIndex=0;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.titleColor)),
           height: 50,
        width: double.infinity,
           child: ListView.builder(
             physics: const NeverScrollableScrollPhysics(),


             itemCount: 3,
             itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*0.04),
             width: 94,
             decoration: BoxDecoration(
                 color: index==currentIndex?AppColors.primaryColor:AppColors.titleColor,
                 borderRadius: BorderRadius.circular(360)
             ),
             child: Center(
               child: TextButton(onPressed: (){ setState(() {
           currentIndex= index;
         });}, child:Text(Titles[index],style: GoogleFonts.outfit(
                   fontSize:14 ,fontWeight: FontWeight.w400,color:index==currentIndex?AppColors.titleColor:AppColors.blackColor,
                   textStyle: const TextStyle(inherit: false)) ),
               ),
             )),
           scrollDirection: Axis.horizontal,)


         ),
        currentIndex==0? CategoryWidget():
        currentIndex==1?SmallScreens(title: 'No Services found',isOrder: false,):
        SmallScreens(title: 'No orders found',isOrder: true,)

    ]);
  }
}



