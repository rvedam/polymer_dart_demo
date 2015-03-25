part of polymer_demo.models;

class Stock extends Observable {
  @observable String symbol;
  @observable String name;
  @observable num currentPrice;
  @observable num daysHigh;
  @observable num daysLow;
  @observable num yearsHigh;
  @observable num yearsLow;
  
  // TODO: Need to be able add number of shares per stock
  //@observable num shares;
  
  // num totalPrice() => currentPrice * shares;

  // use Yahoo's Finance API to update yourself
  updateInfo() {
    HttpRequest request = new HttpRequest();
    var url = 'http://query.yahooapis.com/v1/public/yql';
    var query = Uri.encodeFull('select * from yahoo.finance.quote where symbol in ("' + this.symbol + '")');
    
  }
}