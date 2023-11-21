abstract class IApplicationEnvironment {
  abstract final String envTitle;
  abstract final String projectKey;
}

class ApplicationOptions<TEnv extends IApplicationEnvironment> {
  ApplicationOptions(this.environments);

  final List<TEnv> environments;
}
