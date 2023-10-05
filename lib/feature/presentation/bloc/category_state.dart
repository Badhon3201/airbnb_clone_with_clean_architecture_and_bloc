//Add here code related to bloc

import 'package:equatable/equatable.dart';
import '../../domain/enitites/category_entity.dart';

abstract class CategoryState extends Equatable {}

class CategoryInitial extends CategoryState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CategoryLoading extends CategoryState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CategoryLoaded extends CategoryState {
  final List<CategoryEntity> catList;

  CategoryLoaded(this.catList);

  @override
  // TODO: implement props
  List<Object?> get props => [catList];
}

class CategoryError extends CategoryState {
  final String message;

  CategoryError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
