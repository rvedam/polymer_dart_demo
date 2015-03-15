import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html';

@CustomTag('stock-app')
class StockAppElement extends PolymerElement {
  @observable List<StockPortfolio> portfolios;
  
  StockAppElement.created() : super.created() {
  }
  
  
}