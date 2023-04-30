class AuthException implements Exception {
  static Map<String, String> errors = {
    'EMAIL_EXISTS': 'email já está cadastrado',
    'OPERATION_NOT_ALLOWED': 'operação não permitida',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Muitas tentativas, tente novamente mais tarde',
    'EMAIL_NOT_FOUND': 'email não encontrado',
    'INVALID_PASSWORD': 'senha invalida',
    'USER_DISABLED': 'usuário desabilitado',
  };

  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Houve um erro';
  }
}
