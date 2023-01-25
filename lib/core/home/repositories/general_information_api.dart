import 'package:either_dart/either.dart';
import '../../../shared/network/api_helper/api_config.dart';
import '../../../shared/network/api_helper/base_api.dart';
import '../../../shared/network/api_helper/dio_client.dart';
import '../models/general_information.dart';

class GeneralInformationApi with BaseApi<GeneralInformation> {
  final DioClient _dioClient;

  GeneralInformationApi(this._dioClient);

  Future<Either<String, List<GeneralInformation>>> fetchGeneralInformation() =>
      requestType(
        () async {
          final response = await _dioClient.dio.get<void>(
            ApiUrl.getNotAuthInformation,
          );

          return (response.data as List<dynamic>)
              .map(
                (e) => GeneralInformation.fromJson(e as Map<String, dynamic>),
              )
              .toList();
        },
      );
}
