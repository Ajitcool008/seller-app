enum FormatTitleType{
  label,
  heading,
  hide,
}

extension FormatTitleConverter on FormatTitleType{
  String getKey(){
    switch(this){
      case FormatTitleType.heading:
        return 'heading';
      case FormatTitleType.hide:
        return 'hide';
      default:
        return 'label';
    }
  }

  String getName(){
    switch(this){
      case FormatTitleType.heading:
        return 'Heading';
      case FormatTitleType.hide:
        return 'Hide';
      default:
        return 'Label';
    }
  }

  static FormatTitleType fromString(String key){
    switch(key){
      case 'heading':
        return FormatTitleType.heading;
      case 'hide':
        return FormatTitleType.hide;
      default:
        return FormatTitleType.label;
    }
  }
}