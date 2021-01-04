abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction {
  const ErrorAction();

  Object get error;
}
