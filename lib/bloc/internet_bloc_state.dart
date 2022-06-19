part of 'internet_bloc.dart';

@immutable
abstract class InternetBlocState {}

class InternetBlocInitial extends InternetBlocState {}

class InternetSuccessState extends InternetBlocState {}

class InternetlostState extends InternetBlocState {}
