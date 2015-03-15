part of polymer_demo.models;

class Stock extends Observable {
  @observable String name;
  @observable num currentPrice;
  @observable num daysHigh;
  @observable num daysLow;
  @observable num yearsHigh;
  @observable num yearsLow;
  @observable num shares;
  
  num totalPrice() => currentPrice * shares;
}