import 'booking.dart';
import 'car.dart';
import 'user.dart';

class CarRentalSystem {
  List<User> users = [];
  List<Car> cars = [];
  List<Booking> bookings = [];

  void register(String username, String password) {
    users.add(User(username, password));
    print('User $username registered successfully.');
  }

  void addCar(String model, double pricePerDay) {
    cars.add(Car(model, pricePerDay));
    print('Car $model added to the inventory.');
  }

  void listAvailableCars() {
    print('Available cars:');
    for (var car in cars) {
      if (car.available) {
        print('${car.model} - \$${car.pricePerDay} per day');
      }
    }
  }

  void bookCar(User user, Car car, DateTime startDate, int numberOfDays) {
    if (!car.available) {
      print('Car ${car.model} is not available for booking.');
      return;
    }
    bookings.add(Booking(user, car, startDate, numberOfDays));
    car.available = false;
    print('Booking successful! ${car.model} booked by ${user.username}.');
  }
}