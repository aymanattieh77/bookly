// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'feature_books_cubit_cubit.dart';

abstract class FeatureBooksCubitState extends Equatable {
  const FeatureBooksCubitState();

  @override
  List<Object> get props => [];
}

class FeatureBooksCubitInitial extends FeatureBooksCubitState {}

class FeatureBooksCubitLoading extends FeatureBooksCubitState {}

class FeatureBooksCubitSuccess extends FeatureBooksCubitState {
  final List<BookItem> items;
  const FeatureBooksCubitSuccess({required this.items});
}

class FeatureBooksCubitFailure extends FeatureBooksCubitState {
  final String message;
  const FeatureBooksCubitFailure({
    required this.message,
  });
}
