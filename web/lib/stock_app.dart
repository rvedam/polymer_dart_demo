import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html';

@CustomTag('stock-app')
class StockAppElement extends PolymerElement {
  @observable List<StockPortfolio> portfolios = toObservable([]);
  
  @observable bool addPortfolio = false;
  
  StockAppElement.created() : super.created() {
  }
    
  showPortfolioList(Event event, var detail, Node sender) {
    event.preventDefault();
    addPortfolio = false;
  }
  
  addNewPortfolio(Event event, Object detail, Node sender) {
    event.preventDefault();
    addPortfolio = true;
  }
  
  updatePortfolioList(Event event, var detail, Node sender) {
    event.preventDefault();
    StockPortfolio portfolio = detail['portfolio'];
    portfolio.update();
    portfolios.add(detail['portfolio']);
    addPortfolio = false;
  }
}