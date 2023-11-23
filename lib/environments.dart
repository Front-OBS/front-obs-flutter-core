abstract class IApplicationEnvironment {
  abstract final String envTitle;
}

class ApplicationOptions<TEnv extends IApplicationEnvironment> {
  ApplicationOptions(this.environments);

  final List<TEnv> environments;
}
