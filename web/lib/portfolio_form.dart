import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html';

@CustomTag('portfolio-form')
class PortfolioFormElement extends PolymerElement {
  @published StockPortfolio portfolio;
  
  @observable Stock newStock = new Stock();
  
  PortfolioFormElement.created() : super.created() {
    portfolio = new StockPortfolio();
  }
  
  addStockSymbol(Event event, var detail, Node sender) {
    //event.preventDefault();
    portfolio.stocks.add(newStock);
    newStock = new Stock();
  }
  
  validatePortfolio(Event event, var detail, Node sender) {
    event.preventDefault();
    dispatchEvent(new CustomEvent('validportfolio',
        detail: {'portfolio': portfolio}));
  }  
}