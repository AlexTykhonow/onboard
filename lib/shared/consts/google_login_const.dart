import 'dart:io';

const googleClientIdIos =
    '836044151658-2u3asonhrlio23dv1prnv57lr61npn1r.apps.googleusercontent.com';

String clientID() {
  if (Platform.isIOS) {
    return googleClientIdIos;
  }

  return '';
}
