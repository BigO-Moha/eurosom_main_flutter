import 'package:auto_route/auto_route.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/ui/auth/signin_screen.dart';
import 'package:eurosom/ui/model/stock_invest_model.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int currentPage = 0;
  List<StockInvestModel> list = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    list.add(StockInvestModel(
        title: 'Cloud solutions',
        subTitle:
            "Eurosom is the leading cloud service provider in Somalia, \n offering an extensive array of cloud-based solutions such as Public, Private, and Hybrid Cloud.",
        image: "assets/images/Group_4.png"));

    list.add(StockInvestModel(
        title: 'ChatGPT 4',
        subTitle:
            "With decades of experience in modern AI, Eurosom understands that AI is just the beginning, \n and that businesses without advanced AI will be left behind.",
        image: "assets/images/ChatGPT_Pic.png"));
    list.add(StockInvestModel(
        title: 'Eurosom ERP',
        subTitle:
            "Eurosom recognizes that every business needs a process, \n and becoming a data-driven business can be a challenge.",
        image: "assets/images/ERP_Pic.png"));
    list.add(StockInvestModel(
        title: 'IT Consultancy',
        subTitle:
            "With extensive expertise in modern technologies, \n Eurosom offers professional and comprehensive IT consultancy services.",
        image: "assets/images/Group_8.png"));
    list.add(StockInvestModel(
        title: 'IOT',
        subTitle:
            "Eurosom's cutting-edge services connect the world through data, \n offering advanced data collection from any device connected to their network.",
        image: "assets/images/IOT_Pic.png"));
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            PageView(
              controller: pageController,
              children: list.map((e) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          decoration: boxDecorationWithShadow(
                              boxShape: BoxShape.circle,
                              backgroundColor: greenColor),
                          width: 100,
                          height: 100,
                        ),
                        CommonCachedNetworkImage(e.image.validate(),
                            fit: BoxFit.cover,
                            width: context.width() * 0.6,
                            radius: 16),
                      ],
                    ),
                    32.height,
                    Text(e.title.validate(),
                        style: boldTextStyle(size: 26),
                        textAlign: TextAlign.center),
                    16.height,
                    Text(e.subTitle.validate(),
                        style: secondaryTextStyle(height: 1.5),
                        textAlign: TextAlign.center),
                  ],
                ).paddingOnly(top: 170);
              }).toList(),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      getIt<IAuthFacade>().saveItsfristTime();
                      context.replaceRoute(const SignInRoute());
                    },
                    child: Text('Skip', style: boldTextStyle()),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          width: 1.0,
                          color: appStore.isDarkModeOn
                              ? white
                              : gray.withOpacity(0.1)),
                    ),
                  ).paddingOnly(left: 16),
                  DotIndicator(
                    indicatorColor:
                        appStore.isDarkModeOn ? white : Colors.black,
                    pageController: pageController,
                    pages: list,
                    currentDotSize: 45,
                    currentDotWidth: 5,
                    dotSize: 27,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    boxShape: BoxShape.rectangle,
                    currentBoxShape: BoxShape.rectangle,
                    currentBorderRadius: radius(),
                    unselectedIndicatorColor: Colors.grey.shade400,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                  ).paddingOnly(right: 16),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 32,
              child: CommonButton(
                buttonText: "Get Started",
                margin: 16,
                onTap: () {
                  getIt<IAuthFacade>().saveItsfristTime();
                  context.replaceRoute(const SignInRoute());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
