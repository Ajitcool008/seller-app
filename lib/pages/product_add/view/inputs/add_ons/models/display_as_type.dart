enum MultiChoiceDisplayType{
  dropdown,
  radioButton,
  image,
}

extension DisplayTypeConverter on MultiChoiceDisplayType{
  String getKey(){
    switch(this){
      case MultiChoiceDisplayType.radioButton:
        return 'radiobutton';
      case MultiChoiceDisplayType.image:
        return 'images';
      default:
        return 'select';
    }
  }

  String getName(){
    switch(this){
      case MultiChoiceDisplayType.radioButton:
        return 'Radio Button';
      case MultiChoiceDisplayType.image:
        return 'Image';
      default:
        return 'Dropdown';
    }
  }

  static MultiChoiceDisplayType fromString(String key){
    switch(key){
      case 'radiobutton':
        return MultiChoiceDisplayType.radioButton;
      case 'images':
        return MultiChoiceDisplayType.image;
      default:
        return MultiChoiceDisplayType.dropdown;
    }
  }
}