class Validation {
  static String validateFullName(String fullname) {
    if (fullname.isEmpty) {
      return 'Your name invalid';
    }

    if (fullname.length > 30) {
      return 'This field require maximum 30 charaters';
    }

    return null;
  }

   static String validateCompanyName(String fullname) {
    if (fullname.isEmpty) {
      return 'Your company name invalid';
    }

    if (fullname.length > 30) {
      return 'This field require maximum 30 charaters';
    }

    return null;
  }

   static String validateLegal(String legal) {
    if (legal.isEmpty) {
      return 'Your legal is invalid';
    }

    if (legal.length > 30) {
      return 'This field require maximum 30 charaters';
    }

    return null;
  }

  static String validateTaxCode(String taxCode) {
    if (taxCode.isEmpty) {
      return 'Please input your tax code';
    }

    if (taxCode.length > 10) {
      return 'Your tax code is invalid';
    }

    return null;
  }

  static String validateAddress(String address) {
    if (address.isEmpty) {
      return 'Address invalid';
    }

    if (address.length > 100) {
      return 'Address is too long';
    }

    return null;
  }

  static String validatePhone(String phone) {
    if (phone.isEmpty) {
      return 'Phone invalid';
    }

    if (phone.length > 10) {
      return 'Phone number maximum 10 numbers';
    }

    return null;
  }

  static String validateINC(String identifyCard) {
    if (identifyCard.isEmpty) {
      return 'Invalid Card Number';
    }

    if (identifyCard.length > 9) {
      return 'Your identify card is invalid';
    }

    return null;
  }

  static String validateBirthdate(String differenceInYears) {
    if (int.parse(differenceInYears) < 15) {
      return 'We are sorry! Your age does not fit the labour policy';
    }

    if (int.parse(differenceInYears) > 65) {
      return 'We are sorry! Your age does not fit the labour policy';
    }

    return null;
  }
}
