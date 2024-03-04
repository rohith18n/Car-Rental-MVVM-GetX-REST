import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:car_rental/utils/app_exceptions.dart';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

typedef EitherResponse<T> = Future<Either<AppException, T>>;

class ApiService {
  static final _headers = {'Content-Type': 'application/json'};

  static EitherResponse<Map> postApi(var rawData, String url,
      [String? accessToken]) async {
    Map fetchedData = {};
    if (accessToken != null) {
      _headers['Authorization'] = 'Bearer $accessToken';
    }
    final uri = Uri.parse(url);
    final body = jsonEncode(rawData);
    try {
      final response = await http.post(uri, body: body, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(e as AppException);
    }
    return Right(fetchedData);
  }

  static EitherResponse getApi(String url, [String? accessToken]) async {
    final uri = Uri.parse(url);
    if (accessToken != null) {
      _headers['Authorization'] = 'Bearer $accessToken';
      log(accessToken);
    }
    dynamic fetchedData;
    try {
      final response = await http.get(uri, headers: _headers);
      log("====get response code====${response.statusCode.toString()}====");
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(BadRequestException());
    }
    return Right(fetchedData);
  }

  static EitherResponse putApi(var rawData, String url, String token) async {
    final uri = Uri.parse(url);
    final body = jsonEncode(rawData);
    _headers['Authorization'] = 'Bearer $token';
    dynamic fetchedData;

    try {
      final response = await http.put(uri, body: body, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(BadRequestException());
    }
    return Right(fetchedData);
  }

  static EitherResponse<Map> patchApi(
    var userData,
    String url,
    String token,
  ) async {
    final uri = Uri.parse(url);
    final body = jsonEncode(userData);
    _headers['Authorization'] = 'Bearer $token';
    Map<String, dynamic> fetchedData = {};
    try {
      final response = await http.patch(uri, body: body, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(e as AppException);
    }
    return Right(fetchedData);
  }

  static EitherResponse deleteApi(String url, String token) async {
    _headers['Authorization'] = 'Bearer $token';
    dynamic fetchedData;
    final uri = Uri.parse(url);
    try {
      final response = await http.delete(uri, headers: _headers);
      fetchedData = _getResponse(response);
    } on SocketException {
      return Left(InternetException());
    } on http.ClientException {
      return Left(RequestTimeOUtException());
    } catch (e) {
      return Left(e as AppException);
    }
    return Right(fetchedData);
  }

  static dynamic _getResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return (jsonDecode(response.body));
      case 201:
        return (jsonDecode(response.body));
      case 400:
        throw BadRequestException();
      default:
        throw BadRequestException();
    }
  }
}
