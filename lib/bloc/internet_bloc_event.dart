part of 'internet_bloc.dart';

@immutable
abstract class InternetBlocEvent {}

class InternetLostEvent extends InternetBlocEvent {}

class InternetConnectedEvent extends InternetBlocEvent {}
