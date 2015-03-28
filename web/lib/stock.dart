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
    var url = 'http://query.yahooapis.com/v1/public/yql?q=';
    var query = Uri.encodeFull('select * from yahoo.finance.quotes where symbol in ("' + this.symbol + '")');
    query = query + '&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=';
    HttpRequest.getString(url+query).then((String responseText) {
      Map stockData = JSON.decode(responseText);
      // there a lot of values for a given stock we are only grabbing a small snippet of what is there
      this.name = stockData['query']['results']['quote']['Name'];
      this.currentPrice = num.parse(stockData['query']['results']['quote']['Ask']);
      this.daysHigh = num.parse(stockData['query']['results']['quote']['DaysHigh']);
      this.daysLow = num.parse(stockData['query']['results']['quote']['DaysLow']);
      this.yearsHigh = num.parse(stockData['query']['results']['quote']['YearHigh']);
      this.yearsLow = num.parse(stockData['query']['results']['quote']['YearLow']);
    });
  }
}