import 'package:flutter/material.dart';
import 'package:gallery_app_new/firebase_options.dart';
import 'package:gallery_app_new/locator.dart';
import 'package:gallery_app_new/modules/bottom_appbar/bloc/bottom_appbar_cubit.dart';
import 'package:gallery_app_new/modules/button/bloc/button_cubit.dart';
import 'package:gallery_app_new/modules/container/bloc/container_cubit.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_cubit.dart';
import 'package:gallery_app_new/modules/text_field/bloc/text_field_cubit.dart';
import 'package:gallery_app_new/modules/wrap_chip/bloc/wrap_chip_cubit.dart';
import 'package:gallery_app_new/router/router.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_bloc.dart';

Future<void> main() async {
  await initializeApp(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<StackBloc>(
            create: (context) => StackBloc(),
          ),
          BlocProvider<RowColumnCubit>(
            create: (context) => RowColumnCubit(),
          ),
          BlocProvider<ContainerCubit>(
            create: (context) => ContainerCubit(),
          ),
          BlocProvider<ButtonCubit>(
            create: (context) => ButtonCubit(),
          ),
          BlocProvider<TextFieldCubit>(
            create: (context) => TextFieldCubit(),
          ),
          BlocProvider(
            create: (context) => WrapChipCubit(),
          ),
          BlocProvider(
            create: (context) => BottomAppbarCubit(),
          )
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
          ),
          routerConfig: _appRouter.router,
          debugShowCheckedModeBanner: false,
        ));
  }
}
