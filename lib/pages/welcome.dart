import 'package:flutter/material.dart';
import 'package:seeing/misc/colors.dart';
import 'package:seeing/widgets/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome_two.png',
    'welcome_two.png',
    'welcome_two.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/" + images[index],
                      ),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(text: "Mountains"),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Mountain hikes gives you an incredible sense of freedom along with endurance test",
                              color: AppColors.textColor2,
                              size: 16,
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 80,
                        ),

                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          width: 8,
                          margin: const EdgeInsets.only(bottom: 2),
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.5),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              // child: ,
            );
          }),
    );
  }
}
