import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/core/utils/colors.dart';
import 'package:music_app/core/utils/image_pathes.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/widgets/custom_text__widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 20.h,
            child: Image.asset(ImagePathes.onboardingImage, fit: BoxFit.cover),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 38.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.h),
                    topRight: Radius.circular(3.h),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          children: const [
                            TextSpan(text: "اكتشف عالمًا من الموسيقى على ",style: TextStyle( fontFamily: 'JFFlat',),),
                            TextSpan(
                              text: "نوبي",
                              style: TextStyle( fontFamily: 'JFFlat',color: PrimaryColor),
                            ),
                            TextSpan(
                              text:
                                  "! استمع إلى كل ما تحب، من أحدث الأغاني إلى أعظم الروائع",
                              style: TextStyle( fontFamily: 'JFFlat',),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PrimaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                          vertical: 1.7.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.h),
                        ),
                      ),
                      onPressed: () {},
                      child: CustomTextWidget(
                        color: Colors.white,
                        isThemeColor: false,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                        fontSize: 20,
                        text: "ابدأ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
