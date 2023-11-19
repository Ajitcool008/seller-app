import 'package:app_builder_repository/src/models/widgets/product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('JsonSerializable AWProduct widget test', () {
    Map<String, dynamic> json = {
      "id": "product-tab_1668410214159_w7u40l",
      "type": "product-tab",
      "fields": {
        "pad": 12.0,
        "items": [
          {
            "template": "default",
            "data": {
              "name": {
                "text": "Latest"
              },
              "layoutItem": "list",
              "search": {
                "text": ""
              },
              "tags": [],
              "categories": [],
              "limit": 4,
              "template": {
                "template": "contained",
                "data": {
                  "size": {
                    "width": 160,
                    "height": 190
                  },
                  "imageSize": "cover",
                  "enableLabelNew": true,
                  "enableLabelSale": true,
                  "enableRating": true
                }
              }
            }
          }
        ]
      },
      "layout": "horizontal",
      "styles": {
        "padding": {
          "paddingLeft": 0,
          "paddingRight": 0,
          "paddingBottom": 0,
          "paddingTop": 0
        },
        "margin": {
          "marginLeft": 0,
          "marginRight": 0,
          "marginBottom": 0,
          "marginTop": 0
        },
        "background": {
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          }
        },
        "pad": 12,
        "dividerWidth": 1,
        "dividerColor": {
          "dark": {
            "r": 84,
            "g": 84,
            "b": 88,
            "a": 0.5
          },
          "value": {
            "r": 222,
            "g": 226,
            "b": 230,
            "a": 1
          }
        },
        "height": 300,
        "col": 2,
        "ratio": 1,
        "indicatorColor": {
          "value": {
            "r": 222,
            "g": 226,
            "b": 230,
            "a": 1
          },
          "dark": {
            "r": 142,
            "g": 142,
            "b": 147,
            "a": 1
          }
        },
        "indicatorActiveColor": {
          "value": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "backgroundColorItem": {
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          }
        },
        "textColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          }
        },
        "subTextColor": {
          "dark": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          },
          "value": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          }
        },
        "priceColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          }
        },
        "salePriceColor": {
          "dark": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          },
          "value": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          }
        },
        "regularPriceColor": {
          "dark": {
            "r": 204,
            "g": 204,
            "b": 204,
            "a": 1
          },
          "value": {
            "r": 100,
            "g": 124,
            "b": 156,
            "a": 1
          }
        },
        "wishlistColor": {
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          }
        },
        "radius": 0,
        "radiusImage": 8,
        "paddingItem": {
          "paddingItemLeft": 0,
          "paddingItemRight": 0,
          "paddingItemBottom": 0,
          "paddingItemTop": 0
        },
        "labelNewColor": {
          "dark": {
            "r": 33,
            "g": 186,
            "b": 69,
            "a": 1
          },
          "value": {
            "r": 33,
            "g": 186,
            "b": 69,
            "a": 1
          }
        },
        "labelNewTextColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "radiusLabelNew": 8,
        "labelSaleColor": {
          "dark": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          },
          "value": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          }
        },
        "labelSaleTextColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "radiusLabelSale": 8,
        "typeCart": "elevated",
        "enableIconCart": true,
        "iconCart": {
          "name": "plus",
          "type": "feather"
        },
        "radiusCart": 8,
        "shadowColor": {
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          },
          "dark": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          }
        },
        "offsetX": 0,
        "offsetY": 4,
        "blurRadius": 24,
        "spreadRadius": 0
      },
      "disable": false
    };

    Map<String, dynamic> json2 = {
      "id": "product-featured_1620098370422_bxncud",
      "type": "product-featured",
      "fields": {
        "excludeProduct": [],
        "limit": 8,
        "template": {
          "template": "contained",
          "data": {
            "size": {
              "width": 240.0,
              "height": 240.0
            },
            "imageSize": "cover",
            "enableLabelNew": true,
            "enableLabelSale": true,
            "enableRating": true,
            "enableQuantity": false
          }
        }
      },
      "layout": "carousel",
      "styles": {
        "padding": {
          "paddingLeft": 20,
          "paddingRight": 20,
          "paddingBottom": 0,
          "paddingTop": 0
        },
        "margin": {
          "marginLeft": 0,
          "marginRight": 0,
          "marginBottom": 28,
          "marginTop": 0
        },
        "background": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          }
        },
        "pad": 8,
        "dividerWidth": 0,
        "dividerColor": {
          "dark": {
            "r": 84,
            "g": 84,
            "b": 88,
            "a": 0.5
          },
          "value": {
            "r": 222,
            "g": 226,
            "b": 230,
            "a": 1
          }
        },
        "height": 340.0,
        "col": 2,
        "ratio": 1,
        "indicatorColor": {
          "value": {
            "r": 222,
            "g": 226,
            "b": 230,
            "a": 1
          },
          "dark": {
            "r": 142,
            "g": 142,
            "b": 147,
            "a": 1
          }
        },
        "indicatorActiveColor": {
          "value": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "backgroundColorItem": {
          "dark": {
            "r": 49,
            "g": 49,
            "b": 49,
            "a": 0
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "textColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          }
        },
        "subTextColor": {
          "dark": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          },
          "value": {
            "r": 159,
            "g": 173,
            "b": 192,
            "a": 1
          }
        },
        "priceColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 1
          }
        },
        "salePriceColor": {
          "dark": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          },
          "value": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          }
        },
        "regularPriceColor": {
          "dark": {
            "r": 204,
            "g": 204,
            "b": 204,
            "a": 1
          },
          "value": {
            "r": 100,
            "g": 124,
            "b": 156,
            "a": 1
          }
        },
        "radius": 0,
        "radiusImage": 0,
        "labelNewColor": {
          "dark": {
            "r": 33,
            "g": 186,
            "b": 69,
            "a": 1
          },
          "value": {
            "r": 33,
            "g": 186,
            "b": 69,
            "a": 1
          }
        },
        "labelNewTextColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "radiusLabelNew": 19,
        "labelSaleColor": {
          "dark": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          },
          "value": {
            "r": 240,
            "g": 31,
            "b": 14,
            "a": 1
          }
        },
        "labelSaleTextColor": {
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          },
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 1
          }
        },
        "radiusLabelSale": 19,
        "shadowColor": {
          "value": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          },
          "dark": {
            "r": 255,
            "g": 255,
            "b": 255,
            "a": 0
          }
        },
        "offsetX": 0,
        "offsetY": 4,
        "blurRadius": 24,
        "spreadRadius": 0
      },
      "disable": false
    };

    Map<String, dynamic> json3 = {
      "id": "video-shopping_1664506062893_t1ctxo",
    "type": "video-shopping",
    "fields": {
    "search": {
    "text": ""
    },
    "tags": [],
    "categories": [],
    "includeProduct": [],
    "excludeProduct": [],
    "limit": 4,
    "enableWishlist": true,
    "enableComment": true,
    "enableShare": true,
    "enableAddCart": true
    },
    "styles": {
    "padding": {
    "paddingLeft": 0,
    "paddingRight": 0,
    "paddingBottom": 0,
    "paddingTop": 0
    },
    "margin": {
    "marginLeft": 0,
    "marginRight": 0,
    "marginBottom": 0,
    "marginTop": 0
    },
    "background": {
    "value": {
    "r": 0,
    "g": 0,
    "b": 0,
    "a": 0
    },
    "dark": {
    "r": 0,
    "g": 0,
    "b": 0,
    "a": 0
    }
    }
    },
    "disable": false
    };

    AWProduct productTab = AWProduct.fromJson(json);

    AWProduct productFeatured = AWProduct.fromJson(json2);

    AWProduct productVideo = AWProduct.fromJson(json3);

    expect(productTab.toJson(), json);

    expect(productFeatured.toJson(), json2);

    expect(productVideo.toJson(), json3);
  });
}
