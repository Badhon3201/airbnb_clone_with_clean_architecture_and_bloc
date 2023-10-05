//Add here code related to bloc

import 'package:equatable/equatable.dart';

abstract class CategoryEvent extends Equatable {}

class GetAllCategory extends CategoryEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
