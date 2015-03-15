import 'dart:html';
import 'package:polymer/polymer.dart';
import 'models.dart';

@CustomTag('portfolio-form')
class PortfolioFormElement extends PolymerElement {
  @published StockPortfolio portfolio;
  @observable String nameErrorMessage = '';
  @observable String descErrorMessage = '';
  
  PortfolioFormElement.created() : super.created() {
    
  }
  
  validatePortfolio(Event event, Object detail, Node sender) {
    event.preventDefault();
    dispatchEvent(new CustomEvent('validportfolio',
        detail: {'portfolio': portfolio}));
  }  
}