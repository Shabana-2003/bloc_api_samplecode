import 'package:bloc_app/apiprovider.dart';
import 'package:bloc_app/model.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<ModelData?> fetchCovidList() {
    return _provider.fetchApi();
  }
}

class NetworkError extends Error {}