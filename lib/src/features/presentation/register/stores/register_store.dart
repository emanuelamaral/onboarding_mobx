import 'package:mobx/mobx.dart';
import 'package:onboarding_mobx/src/models/user/user_model.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore with Store {
  @observable
  String? email;
  @observable
  String? senha;
  @observable
  UserModel? user;

  @action
  adicionarEmail(novoEmail) {
    email = novoEmail;
  }

  @action
  adicionarSenha(novaSenha) {
    senha = novaSenha;
  }

  @action
  Future<void> cadastarUsuario() async {
    user = UserModel(email: email, senha: senha);
  }

  @action
  Future<bool> verificarLogin(String email, String senha) async {
    print("email cadastrado: ${user?.email}");
    print("Senha cadastrada: ${user?.senha}");

    print("email do parametro: $email");
    print("senha do parametro $senha");

    if (email == user?.email && senha == user?.senha) {
      return true;
    } else {
      return false;
    }
  }
}
