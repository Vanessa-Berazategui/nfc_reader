abstract class AppEnvironment {
  AppEnvironment({
    required this.env,
  });

  final String env;

  static const dev = 'dev';
  static const stg = 'stg';
  static const prod = 'prod';
}
