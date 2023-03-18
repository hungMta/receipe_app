import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/dialog_helper.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  Object? handleError(Object error) {
    switch (error.runtimeType) {
      case DioError:
        final dioERR = error as DioError;
        switch (dioERR.type) {
          case DioErrorType.connectionTimeout:
            DialogHelper.showAlert(
                context: context, message: 'Connect timeout');
            return error;
          default:
            return error;
        }
      default:
        DialogHelper.showAlert(
            context: context, message: 'Something went wrong!');
        return error;
    }
  }
}
