import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/app_localization.dart';
import 'package:timer/features/home/presentation/cubit/home_cubit.dart';
import 'package:timer/features/home/presentation/widgets/home_widget.dart';
import 'package:timer/routes/routes.gr.dart';

import '../../../../colors.dart';
import '../../../../injection/injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final translate = AppLocalizations.of(context).translate;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('title')),
        centerTitle: true,
        elevation: 1,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: theme.textTheme.headline6.color,
              semanticLabel: translate('settings_label'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeCubit>()..load(),
        child: const HomeWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('add_button'),
        backgroundColor: AppTheme.yellow,
        elevation: 0,
        onPressed: () {
          ExtendedNavigator.of(context).pushNewTimerPage().then(
                (value) =>
                    ExtendedNavigator.of(context).replace(Routes.homePage),
              );
        },
        child: const Icon(
          Icons.add,
          color: AppTheme.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
