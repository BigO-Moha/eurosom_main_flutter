import 'package:auto_route/auto_route.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/ui/chatGPT/utils/colors.dart';
import 'package:eurosom/ui/main/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class ChatGPTHome extends StatefulWidget {
  final Function(String value) onTap;
  final bool isScroll;

  ChatGPTHome({Key? key, required this.onTap, this.isScroll = false})
      : super(key: key);

  @override
  State<ChatGPTHome> createState() => _ChatGPTHomeState();
}

class _ChatGPTHomeState extends State<ChatGPTHome> {
  ScrollController controller = ScrollController();

  List<String> questionList = [
    'Explain quantum computing in simple terms ?',
    'Got any creative ideas for a 10 year old’s birthday ?',
    'How do I make an HTTP request in Javascript ?',
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isScroll) {
      controller.animToBottom(milliseconds: 100);
    }

    return SingleChildScrollView(
      padding: EdgeInsets.only(
          left: 16, right: 16, top: 16, bottom: widget.isScroll ? 185 : 90),
      controller: controller,
      child: Column(
        children: [
          Text('EUROSOM', style: boldTextStyle(size: 34)),
          8.height,
          RichTextWidget(
            list: [
              TextSpan(text: 'powered by ', style: secondaryTextStyle()),
              TextSpan(text: 'ChatGPT', style: boldTextStyle(size: 24)),
            ],
          ),
          30.height,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.light_mode_outlined, size: 30),
              16.width,
              Text('Examples', style: boldTextStyle(size: 20)),
            ],
          ),
          32.height,
          Wrap(
            runSpacing: 16,
            children: List.generate(questionList.length, (index) {
              return GestureDetector(
                onTap: () {
                  widget.onTap.call(questionList[index]);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: boxDecorationDefault(
                    color: appStore.isDarkModeOn
                        ? replyMsgBgColor.withAlpha(50)
                        : Colors.white.withAlpha(50),
                    borderRadius: radius(),
                  ),
                  child: Row(
                    children: [
                      Text(questionList[index],
                              style: primaryTextStyle(
                                  color: appStore.isDarkModeOn
                                      ? Colors.white
                                      : appColorPrimary))
                          .expand(),
                      16.width,
                      Icon(Icons.arrow_forward_ios,
                          color: appStore.isDarkModeOn
                              ? Colors.white
                              : appColorPrimary,
                          size: 16),
                    ],
                  ),
                ),
              );
            }),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
