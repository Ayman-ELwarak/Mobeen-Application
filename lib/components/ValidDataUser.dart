String validateUser(Map<String, dynamic> userData) {
  String errorMessage = "";

  userData.forEach((key, value) {
    if (value == null || value.toString().isEmpty || value.toString() == "") {
      errorMessage = 'Field "$key" cannot be empty.';
      return;
    }
  });

  if (errorMessage != "") {
      return "جميع الحقول مطلوبة";
  }

  String email = userData['email'];
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email)) {
    errorMessage = 'البريد الالكتروني غير صحيح';
    return errorMessage;
  }

  String password = userData['password'];
  if (password.length < 8) {
    errorMessage = 'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل.';
    return errorMessage;
  }

  String passwordConfirmation = userData['passwordConfirm'];
  if (password != passwordConfirmation) {
    errorMessage = 'كلمات المرور غير متطابقة';
    return errorMessage;
  }

  return 'success';
}
