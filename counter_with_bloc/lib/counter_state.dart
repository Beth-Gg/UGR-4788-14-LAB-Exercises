import 'package:flutter/material.dart';

class CounterStates {}

class InitialState extends CounterStates {}

class UpdateState extends CounterStates {
  final int counter;
  UpdateState(this.counter);
}