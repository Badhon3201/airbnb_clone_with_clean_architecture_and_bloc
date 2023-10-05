//Add here code related to bloc

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../domain/enitites/category_list_entity.dart';
import '../../domain/usecase/usecase.dart';
import 'category_event.dart';
import 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryUseCase shipmentListUseCase;
  CategoryListEntity? categoryListEntity;

  CategoryBloc({
    required this.shipmentListUseCase,
  }) : super(CategoryInitial()) {
    on<GetAllCategory>((event, emit) async {
      emit(CategoryLoading());
      Either<Failure, CategoryListEntity> result = await shipmentListUseCase();
      result.fold((l) => emit(CategoryError(l.message)), (r) {
        categoryListEntity = r;
        emit(CategoryLoaded(r.category));
      });
    });
  }
}
