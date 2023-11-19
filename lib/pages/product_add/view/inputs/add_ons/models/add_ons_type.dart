enum AddOnsType{
  multiChoice,
  checkBox,
  shortText,
  longText,
  fileUpload,
  customerDefinePrice,
  quantity,
  heading,
}

extension AddOnsConverter on AddOnsType{
  String getKey(){
    switch(this){
      case AddOnsType.checkBox:
        return 'checkbox';
      case AddOnsType.shortText:
        return 'custom_text';
      case AddOnsType.longText:
        return 'custom_textarea';
      case AddOnsType.fileUpload:
        return 'file_upload';
      case AddOnsType.customerDefinePrice:
        return 'custom_price';
      case AddOnsType.quantity:
        return 'input_multiplier';
      case AddOnsType.heading:
        return 'heading';
      default:
        return 'multiple_choice';
    }
  }

  String getName(){
    switch(this){
      case AddOnsType.checkBox:
        return 'Check Boxes';
      case AddOnsType.shortText:
        return 'Short Text';
      case AddOnsType.longText:
        return 'Long Text';
      case AddOnsType.fileUpload:
        return 'File Upload';
      case AddOnsType.customerDefinePrice:
        return 'Customer Defined Price';
      case AddOnsType.quantity:
        return 'Quantity';
      case AddOnsType.heading:
        return 'Heading';
      default:
        return 'Multiple Choice';
    }
  }

  static AddOnsType fromString(String key){
    switch(key){
      case 'checkbox':
        return AddOnsType.checkBox;
      case 'custom_text':
        return AddOnsType.shortText;
      case 'custom_textarea':
        return AddOnsType.longText;
      case 'file_upload':
        return AddOnsType.fileUpload;
      case 'custom_price':
        return AddOnsType.customerDefinePrice;
      case 'input_multiplier':
        return AddOnsType.quantity;
      case 'heading':
        return AddOnsType.heading;
      default:
        return AddOnsType.multiChoice;
    }
  }
}


