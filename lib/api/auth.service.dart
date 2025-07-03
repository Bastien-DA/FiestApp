import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:fiestapp/utils/constant/constant.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:openapi/openapi.dart' hide User;

import '../models/user.dart';

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
      return data['hasAccount'] == true;
    } else {
      return false;
    }
  }

  static Future<void> register(User user, File? imageFile) async {
    final String deviceFingerprint = await _getDeviceFingerprint();

    final deviceApi = apiClient.getDeviceAuthApi();

    final userCreateDto = CreateUserDto(
      (b) async => b
        ..username = user.username
        ..alcoholConsumption = CreateUserDtoAlcoholConsumptionEnum.regular
        ..height = user.height
        ..weight = user.weight
        ..gender = CreateUserDtoGenderEnum.male
        ..age = user.age
        ..file = null,
    );

    print(userCreateDto);

    final response = await deviceApi.authControllerRegister(
      deviceId: deviceFingerprint,
      user: userCreateDto,
      file: imageFile == null
          ? null
          : await MultipartFile.fromFile(imageFile.path),
    );

    // final uri = Uri.parse('$baseUrl/auth/device/register');
    // final request = http.MultipartRequest('POST', uri);
    //
    // if (imageFile != null) {
    //   // Ajout de l'image
    //   final image = await http.MultipartFile.fromPath('file', imageFile.path);
    //   request.files.add(image);
    // }
    //
    // // Ajout des champs JSON
    // request.fields['deviceId'] = deviceFingerprint;
    // request.fields['user'] = jsonEncode(user);
    //
    // print("\n\n\n\n\n\n");
    // print(request.fields);
    // print("\n\n\n\n\n\n");
    //
    // // Exécution de la requête
    // final response = await request.send();

    if (response.statusCode == 200) {
      print('Inscription réussie');
    } else {
      print('Échec de l\'inscription : ${response.statusCode}');
    }
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
