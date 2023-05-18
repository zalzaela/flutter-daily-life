import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_daily_life/core/blocs/bloc_observer_app.dart';
import 'package:flutter_daily_life/features/home/pages/home_page.dart';
import 'package:flutter_daily_life/features/income/bloc/income_bloc.dart';
import 'package:flutter_daily_life/features/income/data/repositories/income_repository.dart';
import 'core/services/firebase_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  Bloc.observer = BlocObserverApp();
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IncomeBloc>(
          create: (_) => IncomeBloc(incomeRepository: IncomeRepository()),
        ),
      ],
      child: MaterialApp(
        title: 'Daily Life',
        debugShowCheckedModeBanner: false,
        locale: const Locale('id'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('id', ''),
          Locale('en', 'US'),
        ],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
