import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html';

@CustomTag('portfolio-element')
class PortfolioElement extends PolymerElement {
  @published StockPortfolio portfolio;
  
  PortfolioElement.created() : super.created() {
  }
}