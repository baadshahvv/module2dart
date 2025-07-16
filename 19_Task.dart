class Vehicle{

  String type = "Genre of Vehicle";
  String fuelType = "Unknown";
  int Speed = 0;

  void displayDetail(){
    print('Type: $type');
    print('Fuel Type: $fuelType');
    print('Speed: $Speed');
  }
}

class Car extends Vehicle{
  Car(){
    type = "Sedan";
    fuelType = "Petrol";
    Speed = 220;
  }
  @override
  void displayDetail(){
    print('Vehicle Detail (car): ');
    super.displayDetail();
  }
}

class Bike extends Vehicle{
  Bike(){
    type = "Sports";
    fuelType = "Petrol";
    Speed = 300;
  }
  @override
  void displayDetail(){
    print('Vehicle Detail (bike): ');
    super.displayDetail();
  }
}

void main(){
  Car car = Car();
  car.displayDetail();
  print('');

  Bike bike = Bike();
  bike.displayDetail();
}
