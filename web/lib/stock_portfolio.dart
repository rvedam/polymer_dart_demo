/**
 * Example of an Observable Model used within our Polymer.dart application
 * 
 */
part of polymer_demo.models;

class StockPortfolio extends Observable {
  @observable String name;
  @observable String description;
  @observable List<Stock> stocks;
  
  // make name required parameter to make it easier to keep track
  StockPortfolio([this.name='', this.description='']);
  
}
