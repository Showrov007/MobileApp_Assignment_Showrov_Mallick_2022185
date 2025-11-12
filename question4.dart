import 'dart:core';

// Abstract Class Vehicle
abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void start(); // abstract method
  void stop();  // abstract method

  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  int calculateAge(int currentYear) {
    return currentYear - year;
  }
}

// Car Class
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the car engine...");
  }

  @override
  void stop() {
    print("Stopping the car engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

// Motorcycle Class
class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the motorcycle engine...");
  }

  @override
  void stop() {
    print("Stopping the motorcycle engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

// Main Function
void main() {
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true)
  ];

  // Demonstrate Polymorphism
  for (var v in vehicles) {
    v.displayInfo();
    v.start();
    v.stop();
    print("");
  }

  // Calculate Age
  int currentYear = 2024;
  print("Car age: ${vehicles[0].calculateAge(currentYear)} years");
  print("Motorcycle age: ${vehicles[1].calculateAge(currentYear)} years");
}
