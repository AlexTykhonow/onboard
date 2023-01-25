import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../core/home/blocs/general_information_bloc.dart';
import '../core/home/repositories/general_information_api.dart';
import '../core/home/repositories/general_information_repository.dart';
import '../core/login/blocs/authentication_bloc.dart';
import '../core/login/repositories/authentication_repository.dart';
import '../core/login/repositories/google_login_repository.dart';
import 'network/api_helper/dio_client.dart';
import 'network/repository/token_repository.dart';
import 'router.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider(create: (_) => GoogleLoginRepository()),
          Provider<TokenRepository>(
            create: (context) => TokenRepository(
              context.read<GoogleLoginRepository>(),
            ),
            dispose: (_, tokenRepo) => tokenRepo.dispose(),
          ),
          Provider(
            create: (context) => AuthenticationRepository(
              context.read<TokenRepository>(),
            ),
          ),
          Provider(
            create: (context) => DioClient(),
          ),
          Provider(
            create: (context) =>
                GeneralInformationApi(context.read<DioClient>()),
          ),
          BlocProvider(
            create: (context) => GeneralInformationBloc(
              GeneralInformationRepository(
                context.read<GeneralInformationApi>(),
              ),
            )..add(
                const GeneralInformationEvent.fetch(),
              ),
          ),
          BlocProvider(
            create: (context) =>
                AuthenticationBloc(context.read<AuthenticationRepository>()),
          ),
          Provider(
            create: (context) => AppRouter(
              context.read<AuthenticationBloc>(),
            ),
          ),
        ],
        child: child,
      );
}
