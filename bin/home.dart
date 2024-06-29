import 'car_rental_system.dart';

void main()
{
  var rentalSystem = CarRentalSystem();

  rentalSystem.register('user1', 'password1');
  rentalSystem.register('user2', 'password2');

  rentalSystem.addCar('BMW E36', 100.0);
  rentalSystem.addCar('BMW M3', 129.0);
  rentalSystem.addCar('Ford Mustang', 110.0);

  rentalSystem.listAvailableCars();


  var user = rentalSystem.users[0]; 
  var car = rentalSystem.cars[0];   
  rentalSystem.bookCar(user, car, DateTime.now(), 5);

  rentalSystem.listAvailableCars();
}

