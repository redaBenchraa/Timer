import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/colors.dart';
import 'package:timer/features/create_timer/presentation/pages/new_timer_page.dart';
import 'package:timer/features/home/presentation/cubit/home_cubit.dart';
import 'package:timer/features/home/presentation/widgets/timer_item.dart';
import 'package:timer/routes/routes.gr.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<HomeCubit>();
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: (state is HomeLoaded)
                  ? Column(
                      children: [
                        ...state.entries.map(
                          (e) => TimerItem(
                            key: Key('${e.id}'),
                            entry: e,
                            delete: () {
                              cubit.delete(e.id);
                            },
                            edit: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NewTimerPage(id: e.id),
                                ),
                              ).then(
                                (value) => ExtendedNavigator.of(context)
                                    .replace(Routes.homePage),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 32)
                      ],
                    )
                  : const Center(
                      heightFactor: 2,
                      child: CircularProgressIndicator(
                        backgroundColor: AppTheme.black,
                      ),
                    )),
        );
      },
    );
  }
}
