import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:fiestapp/utils/constant/constant.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:openapi/openapi.dart';

class AuthService {
  static final String baseUrl = dotenv.env['API_ENDPOINT'] ?? '';

  static Future<bool> checkFingerprintAccount() async {
    // 2. Obtiens un identifiant unique du téléphone (exemple ici)
    final String deviceFingerprint = await _getDeviceFingerprint();

    // 3. Envoie cette "fingerprint" à ton API pour vérification
    final response = await http.post(
      Uri.parse('$baseUrl/auth/device'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'deviceId': deviceFingerprint}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['accessToken'] == true;
    } else {
      return false;
    }
  }

  static Future<Response<RegisterResponseDto>> register(
    User user,
    File? imageFile,
  ) async {
    final String deviceFingerprint = await _getDeviceFingerprint();

    final deviceApi = apiClient.getDeviceAuthApi();

    final response = await deviceApi.authControllerRegister(
      deviceId: deviceFingerprint,
      username: user.username,
      alcoholConsumption: "regular",
      height: user.height,
      weight: user.weight,
      gender: "male",
      age: user.age,
      file: imageFile == null
          ? null
          : await MultipartFile.fromFile(imageFile.path),
    );

    return response;
  }

  static Future<String> _getDeviceFingerprint() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.fingerprint;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor ?? 'unknown_ios_id';
    } else {
      return 'unsupported_platform';
    }
  }
}
