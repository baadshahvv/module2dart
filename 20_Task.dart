class Product{
  String name;
  double price;

  Product(this.name,this.price);
  void Display(){
    print('Product: $name, Price: $price');
  }
}

class Cart{

  List<Product> _item = [];

  void addProduct(Product product){
    _item.add(product);
    print('${product.name} added to the cart');
  }

  void showCart(){
    if(_item.isEmpty){
      print('Your cart is empty');
    }else{
      print('Items in your cart');
      for(var product in _item){
        product.Display();
      }
    }
  }

  List<Product> get items => _item;
}

class Order{
  Cart cart;

  Order(this.cart);

  double calculateTotal(){
    double Total = 0;
    for(var item in cart.items){
      Total += item.price;
    }
    return Total;
  }

  void checkOut(){
    cart.showCart();
    double Total = calculateTotal();
    print('Total Price: $Total');
  }
}

void main(){

   Product p1 = Product("Laptop", 1200.00);
  Product p2 = Product("Headphones", 150.50);
  Product p3 = Product("Mouse", 25.00);

  Cart cart = Cart();
  cart.addProduct(p1);
  cart.addProduct(p2);
  cart.addProduct(p3);

  cart.showCart();

  Order order = Order(cart);
  order.checkOut();
}