import 'package:flutter/material.dart';
import 'package:flutterassignment/add_info.dart';
import 'package:flutterassignment/budget_data.dart';
import 'package:flutterassignment/main.dart';

class BudgetList {
  static List<Budget> data = [];
}


class Budget{
  Budget({required this.title, required this.amount, required this.type});
  String title = '';
  int amount = 0;
  String type = 'Expense';
}