import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckSubscription extends StatefulWidget {
  final int appId;
  const CheckSubscription({Key? key, required this.appId}) : super(key: key);

  @override
  State<CheckSubscription> createState() => _CheckSubscriptionState();
}

class _CheckSubscriptionState extends State<CheckSubscription> {
  @override
  void initState() {
    context
        .read<EurosomBloc>()
        .add(EurosomEvent.fetchAppSubscription(widget.appId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EurosomBloc, EurosomState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {
            // context
            //     .read<EurosomBloc>()
            //     .add(const EurosomEvent.getAllApplications());
          },
          loading: (e) {
            FlushbarHelper.createLoading(
                    message: "fetching subscriptions",
                    linearProgressIndicator: const LinearProgressIndicator())
                .show(context);
          },
          getMySubscriptionSuccess: (s) async {
            final user = getIt<IAuthFacade>()
                .getSignedUser()
                .fold((l) => null, (r) => r);
            print(user!.user!.id!);
            final now = DateTime.now();
            bool subscriped = false;
            final subscriptions = s.subscriptions.data!;
            if (subscriptions.isNotEmpty) {
              for (var i = 0; i < subscriptions.length; i++) {
                if (!DateTime.parse(subscriptions[i].expiryDate!)
                    .isBefore(now)) {
                  subscriped = true;
                } else if (DateTime.parse(subscriptions[i].expiryDate!)
                        .isBefore(now) &&
                    subscriptions[i].status == 'active') {
                  context.read<EurosomBloc>().add(
                      EurosomEvent.updateSubscriptions(
                          subscriptions[i].id!.toString()));
                }
              }
            } else {
              print('unSubscriped');
              subscriped = false;
            }
            if (subscriped == true) {
              context.read<EurosomBloc>().add(const EurosomEvent.getConfig());
              context.replaceRoute(ChattingRoute());
            } else {
              context
                  .read<EurosomBloc>()
                  .add(EurosomEvent.getAppPricing(widget.appId));

              context.replaceRoute(Pricingshow(appId: widget.appId));
            }
          },
          loadFailure: (v) {
            print("aaaw");
            FlushbarHelper.createError(message: "Unable to load  data")
                .show(context);
          },
        );
      },
      child: Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
