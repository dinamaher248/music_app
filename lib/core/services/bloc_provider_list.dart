import 'package:music_app/core/services/theme_cubit.dart';
import '../Api/dio_consumer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> buildBlocProviders(DioConsumer dioConsumer) {
  return [
    BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())
    ];
}
