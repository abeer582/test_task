import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/model/users_model.dart';
import 'package:test_task/views/screens/layout/home_screen/category/cubit/states.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsersCubit extends Cubit<UsersStates> {
  UsersCubit() :super(InitialState());

  static UsersCubit get(context) => BlocProvider.of(context);
  UsersModel usersModel = UsersModel();
  Future<List<dynamic>> getCategory() async {
    // Make an HTTP GET request to the API endpoint
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      // If the request is successful, parse the response body
      final jsonData = json.decode(response.body);
      print('ooooooooooooooo');
      print(response.body.length);
      return jsonData;
    } else {
      print('uuuuuuuuuuuuuu');

      print(response.body.length);

      // If the request fails, throw an exception or handle the error accordingly
      throw Exception('Failed to fetch data');

    }
  }
  //
  // void getCategory() async {
  //   try {
  //     emit(UsersLoadingState());
  //     Response response = await DioHelper.getData(url: '');
  //     if (response.statusCode == 200) {
  //       usersModel = UsersModel
  //           .fromJson(response.data);
  //       // print(response.data.toString());
  //       emit(UsersSuccessState());
  //     }
  //   } on DioError catch (messageError) {
  //     print(messageError.toString());
  //
  //     emit(UsersErrorState(messageError.toString()));
  //   }
  // }
}