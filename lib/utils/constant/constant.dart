import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:openapi/openapi.dart';

final String defaultProfilImage = '${S3_enpoint}user/user.webp';
final String defaultEventImage = "${S3_enpoint}event/event.webp";
final String S3_enpoint = dotenv.env['S3_ENDPOINT'] ?? '';
final apiClient = Openapi(basePathOverride: dotenv.env['API_ENDPOINT'] ?? '');
