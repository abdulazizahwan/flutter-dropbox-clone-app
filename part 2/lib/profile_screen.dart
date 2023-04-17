import 'package:flutter/material.dart';
import 'package:flutter_dropbox_app/app_styles.dart';
import 'package:flutter_dropbox_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> folderColors = [
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
    ];

    List<String> folderIconColors = [
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
    ];

    List<String> folderNames = [
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
    ];

    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/arrow_back_icon.svg'),
                  Text(
                    'My Profile',
                    style: kQuestrialSemibold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      color: kBlackColor,
                    ),
                  ),
                  SvgPicture.asset('assets/more_horiz_icon.svg'),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        offset: const Offset(0, 18),
                        blurRadius: 18,
                        color: kBlackColor.withOpacity(0.06),
                      )
                    ]),
                padding: EdgeInsets.symmetric(
                  vertical: 19,
                  horizontal: kPaddingHorizontal,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset('assets/pro_label.svg'),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0, -18, 0),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: kLightBlueColor,
                          backgroundImage: NetworkImage(
                              'https://blogger.googleusercontent.com/img/a/AVvXsEiRB_dB-wXqJdvt26dkR-vqOXUjacfxAQIgFNMHl_czjMNDOh6VZVc-muCczDKZh-VU0JqUYV1M9h25ZooLGqhVfwexQO6zNY1jxeMDu0-SpfEPe8xkF7re1eldAkKld9Ct1YzesFmHpQK9wlPK330AXA85gsmDBURTQm3i7r08g6vO7KNtAPyDgeUIaQ=s740'),
                        ),
                      ),
                      Text(
                        'Savannah Nguyen',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: kQuestrialBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 6,
                          color: kBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),
                      Text(
                        'UI/UX Designer',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                          color: kLightBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          color: kLightBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My folders',
                    style: kQuestrialSemibold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      color: kBlackColor,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: SvgPicture.asset('assets/add_icon.svg'),
                        onTap: () {
                          debugPrint('add icon tapped');
                        },
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      SvgPicture.asset('assets/setting_icon.svg'),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      SvgPicture.asset('assets/arrow_right_icon.svg'),
                    ],
                  )
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
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent uploads',
                    style: kQuestrialSemibold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      color: kBlackColor,
                    ),
                  ),
                  GestureDetector(
                    child: SvgPicture.asset(
                        'assets/arrange_vertical_icon.svg'),
                    onTap: () {
                      debugPrint('arrage vertical icon tapped');
                    },
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical! * 1.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.5,
                              backgroundColor: kLightBlueColor,
                              child: SvgPicture.asset(
                                'assets/word_icon.svg',
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Project $index.docx',
                                  style: kQuestrialSemibold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                    color: kBlackColor,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 0.3,
                                ),
                                Text(
                                  'November 22, 2023',
                                  style: kQuestrialRegular.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                    color: kLightBlackColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          '300kb',
                          style: kQuestrialRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            color: kLightBlackColor,
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
