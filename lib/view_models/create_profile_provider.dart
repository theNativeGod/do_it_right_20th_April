import 'package:do_it_right/models/fighter.dart';
import 'package:flutter/material.dart';

class CreateProfileProvider with ChangeNotifier {
  Fighter _fighter = Fighter(
    name: '',
    country: '',
    club: '',
    instructor: '',
    affiliation: '',
    age: '',
    weight: '',
    height: '',
    belt: '',
  );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get fighter => _fighter;
  get formKey => _formKey;

  set name(value) {
    _fighter.name = value;
    notifyListeners();
  }

  set country(value) {
    _fighter.country = value;
    notifyListeners();
  }

  set club(value) {
    _fighter.club = value;
    notifyListeners();
  }

  set instructor(value) {
    _fighter.instructor = value;
    notifyListeners();
  }

  set affiliation(value) {
    _fighter.affiliation = value;
    notifyListeners();
  }

  set age(value) {
    _fighter.age = value;
    notifyListeners();
  }

  set weight(value) {
    _fighter.weight = value;
    notifyListeners();
  }

  set height(value) {
    _fighter.height = value;
    notifyListeners();
  }

  set belt(value) {
    _fighter.belt = value;
    notifyListeners();
  }

  clearFighter() {
    _fighter = Fighter(
      name: '',
      country: '',
      club: '',
      instructor: '',
      affiliation: '',
      age: '',
      weight: '',
      height: '',
      belt: '',
    );
    notifyListeners();
  }
}
