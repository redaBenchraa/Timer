import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/colors.dart';
import 'package:timer/features/home/presentation/cubit/home_cubit.dart';
import 'package:timer/features/home/presentation/widgets/timer_item.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            key: Key(e.id),
                            entry: e,
                          ),
                        ),
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
