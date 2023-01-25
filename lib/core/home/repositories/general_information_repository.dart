import 'package:either_dart/either.dart';

import '../models/general_information.dart';
import 'general_information_api.dart';

class GeneralInformationRepository {
  final GeneralInformationApi _generalInformationApi;

  GeneralInformationRepository(this._generalInformationApi);

  Future<Either<String, List<GeneralInformation>>>
      fetchGeneralInformation() async {
    final result = await _generalInformationApi.fetchGeneralInformation();
    if (result.isRight) {
      return Right(result.right);
    }

    return Left(result.left);
  }
}
