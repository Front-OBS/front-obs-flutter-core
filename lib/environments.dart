abstract class IApplicationEnvironment {
  abstract final String envTitle;
  abstract final String projectKey;

  IApplicationEnvironment fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}

class ApplicationOptions<TEnv extends IApplicationEnvironment> {
  ApplicationOptions(this.environments);

  final List<TEnv> environments;
}
