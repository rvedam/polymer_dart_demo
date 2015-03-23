import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html';

@CustomTag('portfolio-form')
class PortfolioFormElement extends PolymerElement {
  @published StockPortfolio portfolio;
  @observable String nameErrorMessage = '';
  @observable String descErrorMessage = '';
  
  PortfolioFormElement.created() : super.created() {
    portfolio = new StockPortfolio();
  }
  
  validatePortfolio(Event event, Object detail, Node sender) {
    event.preventDefault();
    dispatchEvent(new CustomEvent('validportfolio',
        detail: {'portfolio': portfolio}));
  }  
}