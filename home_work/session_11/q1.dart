/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
*/
void main() {
  Car car1 = Car(true, 220, 1, 'car 1');

  Truck truck = Truck(500, 1000, 150, 5, 'truck 1');

  List<Vehicle> vehicles = [car1, truck];
  List<double> tripDistances = [50, 30, 100];

  for (var vehicle in vehicles) {
    double totalfuel = 0;

    for (var distance in tripDistances) {
      totalfuel += vehicle.computeFuelDistance(distance);
    }

    bool canComplete = totalfuel <= vehicle.tankCapacity;

    print(
      '${vehicle.nameCars}  needs ${totalfuel} liters of fuel. Can complete ${canComplete ? 'yes' : 'no'}',
    );
  }
}

class Vehicle {
  int _tankCapacity;
  int _fuelConsumption;
  String _nameCars;

  Vehicle(this._tankCapacity, this._fuelConsumption, this._nameCars);

  set tankCapacity(int value) {
    if (value <= 0) {
      print('Error: Tank capacity must be greater than zero.');
    } else {
      _tankCapacity = value;
    }
  }

  int get tankCapacity => _tankCapacity;

  set fuelConsumption(int value) {
    if (value <= 0) {
      print('Error: Fuel consumption must be greater than zero.');
    } else {
      _fuelConsumption = value;
    }
  }

  int get fuelConsumption => _fuelConsumption;
  String get nameCars => _nameCars;

  double computeFuelDistance(double distance) {
    return distance * _fuelConsumption;
  }
}

class Car extends Vehicle {
  bool _airConitionOn;

  Car(
    this._airConitionOn,
    super.tankCapacity,
    super.fuelConsumption,
    super.nameCars,
  );

  set airConitionOn(bool value) {
    _airConitionOn = value;
  }

  bool get airConitionOn => _airConitionOn;
  @override
  double computeFuelDistance(double distance) {
    double factor = _airConitionOn ? 1.2 : 1.0;
    return distance * fuelConsumption * factor;
  }
}

class Truck extends Vehicle {
  int _loadKg;
  int maxloadKg;
  Truck(
    this._loadKg,
    this.maxloadKg,

    super.tankCapacity,
    super.fuelConsumption,
    super.nameCars,
  );

  set loadKg(int value) {
    if (value < 0 || value > maxloadKg) {
      print('Error: loadKg must be between 0 and $maxloadKg.');
    } else {
      _loadKg = value;
    }
  }

  int get loadKg => _loadKg;

  @override
  double computeFuelDistance(double distance) {
    double factor = _loadKg * 0.01;
    return distance * (fuelConsumption + factor);
  }
}
