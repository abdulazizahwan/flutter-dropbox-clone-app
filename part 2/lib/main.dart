import 'package:flutter/material.dart';
import 'package:flutter_dropbox_app/app_styles.dart';
import 'package:flutter_dropbox_app/profile_screen.dart';
import 'package:flutter_dropbox_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ProfileScreen());
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Color> folderColors = [
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
  ];

  List<Color> textColors = [
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
  ];

  List<String> folderIconColors = [
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
  ];

  List<String> moreIconColors = [
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
  ];

  List<String> folderNames = [
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
  ];

  List<String> folderDates = [
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPurpleColor,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your dribbbox',
                    style: kQuestrialSemibold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                  SvgPicture.asset('assets/menu_icon.svg'),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 4,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    borderSide: const BorderSide(
                      width: 1,
                      color: kGreyColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    borderSide: const BorderSide(
                      width: 1,
                      color: kGreyColor,
                    ),
                  ),
                  prefixIcon: Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/search_icon.svg',
                    ),
                  ),
                  hintText: 'Search folder',
                  hintStyle: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kDarkGreyColor,
                  ),
                ),
                style: kQuestrialMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkGreyColor,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recent',
                        style: kQuestrialSemibold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          color: kLightBlackColor,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      SvgPicture.asset('assets/arrow_down_icon.svg'),
                    ],
                  ),
                  SvgPicture.asset('assets/sort_icon.svg'),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisExtent: 107,
                ),
                itemCount: folderColors.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0.5 * kPaddingHorizontal,
                    ),
                    decoration: BoxDecoration(
                      color: folderColors[index],
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/${folderIconColors[index]}',
                            ),
                            SvgPicture.asset(
                              'assets/${moreIconColors[index]}',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 1,
                        ),
                        Text(
                          folderNames[index],
                          style: kQuestrialSemibold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: textColors[index],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.3,
                        ),
                        Text(
                          folderDates[index],
                          style: kQuestrialRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            color: textColors[index],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
