import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storezewin/presention/resources/assets_manager.dart';
import 'package:storezewin/presention/resources/color_manager.dart';
import 'package:storezewin/presention/resources/constant_manager.dart';
import 'package:storezewin/presention/resources/strings_manager.dart';
import 'package:storezewin/presention/resources/theme_manager.dart';
import 'package:storezewin/presention/resources/valus_manager.dart';

import '../resources/routes_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _geTSliderData();
  final PageController pageController = PageController();
  int currentPage = 0;

  List<SliderObject> _geTSliderData() =>
      [
        SliderObject(
            title: AppString.onBoardingTitle1,
            subTitle: AppString.onBoardingSubTitle1,
            image: ImageAssets.onBoardingLogo1),
        SliderObject(
            title: AppString.onBoardingTitle2,
            subTitle: AppString.onBoardingSubTitle2,
            image: ImageAssets.onBoardingLogo2),
        SliderObject(
            title: AppString.onBoardingTitle3,
            subTitle: AppString.onBoardingSubTitle3,
            image: ImageAssets.onBoardingLogo3),
        SliderObject(
            title: AppString.onBoardingTitle4,
            subTitle: AppString.onBoardingSubTitle4,
            image: ImageAssets.onBoardingLogo4),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: AppConstants.elevation0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black, statusBarBrightness: Brightness.dark),
        backgroundColor: Colors.white,
      ),
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
          controller: pageController,
          itemCount: _list.length,
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(sliderObject: _list[index]);
          }),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child: Text(
                  AppString.skip,
                  textAlign: TextAlign.end,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge,
                ),
              ),
            ),
            _getBottmSheetWiget(),
          ],
        ),
      ),
    );
  }

  Widget _getBottmSheetWiget() {
    return Container(
      color: ColorManager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                width: AppPadding.p20,
                height: AppPadding.p20,
                child: SvgPicture.asset(ImageAssets.leftArrow),
              ),
              onTap: () {
                pageController.animateToPage(getPreviousIndex(),
                    duration: const Duration(
                        microseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p14),
                  child: getProperCircle(i),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                width: AppPadding.p20,
                height: AppPadding.p20,
                child: SvgPicture.asset(ImageAssets.rightArrow),
              ),
              onTap: () {
                pageController.animateToPage(getNextIndex(),
                    duration: const Duration(
                        microseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);

              },
            ),
          ),
        ],
      ),
    );
  }

  getProperCircle(int index) {
    if (index == currentPage) {
      return SvgPicture.asset(ImageAssets.hollowCircle);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircle);
    }
  }

  int getPreviousIndex() {

    int previesIndex=currentPage-1;
    if(previesIndex==-1){
      previesIndex=_list.length;
    }
    return previesIndex;
  }
  int getNextIndex() {

    int nextIndex=currentPage++;
    if(nextIndex==_list.length){
      nextIndex=0;
    }
    return nextIndex;
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject sliderObject;

  const OnBoardingPage({required this.sliderObject, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme
                .of(context)
                .textTheme
                .displayLarge,
          ),
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
        ),
        const SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(
      {required this.title, required this.subTitle, required this.image});
}
