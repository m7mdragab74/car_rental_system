import 'car.dart';
import 'user.dart';

class Booking {
  final User user;
  final Car car;
  final DateTime startDate;
  final int numberOfDays;

  Booking(this.user, this.car, this.startDate, this.numberOfDays);
}
