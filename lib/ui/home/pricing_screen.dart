import 'package:auto_route/auto_route.dart';
import 'package:eurosom/models/appsmodel/datum.dart' as am;
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/ui/home/utils/T14Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../logic/eurosom/eurosom_bloc.dart';

class PricingPlans extends StatefulWidget {
  final am.Datum app;
  final List<Color> colors;

  const PricingPlans({super.key, required this.app, required this.colors});

  @override
  State<PricingPlans> createState() => _PricingPlansState();
}

class _PricingPlansState extends State<PricingPlans> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: t14_colorWhite,
        appBar: AppBar(
          backgroundColor: t14_colorWhite,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Text("${widget.app.title!} pricing ",
              style: boldTextStyle(color: t14_colorBlack, size: 18)),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.clear_rounded, size: 20),
                onPressed: () {
                  finish(context);
                })
          ],
        ),
        body: BlocBuilder<EurosomBloc, EurosomState>(
          builder: (context, state) {
            return state.maybeMap(orElse: () {
              return Container();
            }, getPricingsSuccess: (e) {
              return ListView.builder(
                  itemCount: e.pricings.data!.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (BuildContext context, int index) {
                    var data = e.pricings.data![index];
                    return Column(
                      children: [
                        Container(
                          width: context.width(),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: widget.colors[0]),
                          margin: EdgeInsets.only(bottom: 16),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: CustomPaint(
                                  painter:
                                      ShapesPainter(color: widget.colors[1]),
                                  child: Container(
                                    height: 90,
                                    width: 80,
                                    child: Column(
                                      children: [
                                        8.height,
                                        Text(data.name!,
                                            style: primaryTextStyle(
                                                color: t14_colorWhite)),
                                        8.height,
                                        // Image.asset(data.!,
                                        //     height: 20,
                                        //     width: 20,
                                        //     color: t14_colorWhite),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              16.height,
                              Text(data.price.toString(),
                                  style: boldTextStyle(
                                      color: t14_colorBlue, size: 22)),
                              8.height,
                              Text("${data.price!.toString()}\$",
                                  style: boldTextStyle(
                                      color: t14_SuccessTxtColor, size: 14)),
                              8.height,
                              Container(
                                width: 230,
                                margin: EdgeInsets.only(bottom: 16),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: t14_colorWhite,
                                    elevation: 0.0,
                                    padding: EdgeInsets.all(12),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  onPressed: () {},
                                  child: Text("subcripe plan",
                                      style: primaryTextStyle(
                                          color: t14_colorBlue)),
                                ),
                              ),
                              Text(data.duration!,
                                  style:
                                      primaryTextStyle(color: gray, size: 12)),
                              16.height,
                            ],
                          ),
                        )
                      ],
                    );
                  });
            });
          },
        ));
  }
}

class ShapesPainter extends CustomPainter {
  Color? color;

  ShapesPainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color!;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.75);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.height / 1.1, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
