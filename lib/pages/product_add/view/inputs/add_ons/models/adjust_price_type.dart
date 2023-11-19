enum AdjustPriceType{
  flatFee,
  quantityBased,
  percentageBased,
}

extension AdjustPriceTypeConverter on AdjustPriceType{
  String getKey(){
    switch(this){
      case AdjustPriceType.quantityBased:
        return 'quantity_based';
      case AdjustPriceType.percentageBased:
        return 'percentage_based';
      default:
        return 'flat_fee';
    }
  }

  String getName(){
    switch(this){
      case AdjustPriceType.quantityBased:
        return 'Quantity Based';
      case AdjustPriceType.percentageBased:
        return 'Percentage Based';
      default:
        return 'Flat Fee';
    }
  }

  static AdjustPriceType fromString(String key){
    switch(key){
      case 'quantity_based':
        return AdjustPriceType.quantityBased;
      case 'percentage_based':
        return AdjustPriceType.percentageBased;
      default:
        return AdjustPriceType.flatFee;
    }
  }
}