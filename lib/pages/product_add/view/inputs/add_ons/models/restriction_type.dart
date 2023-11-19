enum RestrictionTextType{
  anyText,
  onlyLetters,
  onlyNumbers,
  onlyLettersAndNumbers,
  onlyEmailAddress,
}
extension RestrictionConverter on RestrictionTextType{
  String getKey(){
    switch(this){
      case RestrictionTextType.onlyLetters:
        return 'only_letters';
      case RestrictionTextType.onlyNumbers:
        return 'only_numbers';
      case RestrictionTextType.onlyLettersAndNumbers:
        return 'only_letters_numbers';
      case RestrictionTextType.onlyEmailAddress:
        return 'email';
      default:
        return 'any_text';
    }
  }

  String getName(){
    switch(this){
      case RestrictionTextType.onlyLetters:
        return 'Only Letters';
      case RestrictionTextType.onlyNumbers:
        return 'Only Numbers';
      case RestrictionTextType.onlyLettersAndNumbers:
        return 'Only Letters And Numbers';
      case RestrictionTextType.onlyEmailAddress:
        return 'Only Mail Address';
      default:
        return 'Any Text';
    }
  }

  static RestrictionTextType fromString(String key){
    switch(key){
      case 'only_letters':
        return RestrictionTextType.onlyLetters;
      case 'only_numbers':
        return RestrictionTextType.onlyNumbers;
      case 'only_letters_numbers':
        return RestrictionTextType.onlyLettersAndNumbers;
      case 'email':
        return RestrictionTextType.onlyEmailAddress;
      default:
        return RestrictionTextType.anyText;
    }
  }
}