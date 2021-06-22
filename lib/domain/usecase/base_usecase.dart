abstract class UseCase<Type, Params> {
  Future<Type> action(Params params);
}

abstract class UseCaseNoParams<Type> {
  Future<Type> action();
}
abstract class AltUseCase<Params> {
  Future<void> action(Params params);
}

