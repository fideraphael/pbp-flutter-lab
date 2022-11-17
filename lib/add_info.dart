import 'package:flutter/material.dart';
import 'package:flutterassignment/main.dart';
import 'package:flutter/services.dart';
import 'package:flutterassignment/models.dart';
import 'package:flutterassignment/budget_data.dart';

void main() {
  runApp(const MyApp());
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = "";
  int _budget = 0;
  String _type = 'Expense';
  final List<String> listBudgetType = ['Income', 'Expense'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Adding clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Routing the menu to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget Data'),
              onTap: () {
                // Routing the menu to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Show Budget'),
              onTap: () {
                // Routing the menu to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage(title: "Test Title")),
                );
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            children: [
              Padding(
              // Using padding of 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Title",
                    // Add icons to make it more intuitive
                  icon: const Icon(Icons.account_circle_outlined),
                  // Added a circular border to make it neater
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                // Added behavior when name is typed
                onChanged: (String? value) {
                  setState(() {
                    _title = value!;
                  });
                },
                // Added behavior when data is saved
                onSaved: (String? value) {
                  setState(() {
                    _title = value!;
                  });
                },
                // Validator as form validation
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Title cannot be empty!';
                  }
                  return null;
                },
              ),
              ),
              Padding(
                // Using padding of 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Amount",
                    // Add icons to make it more intuitive
                    icon: const Icon(Icons.account_balance_wallet_outlined),
                    // Added a circular border to make it neater
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Added behavior when budget is typed
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
                ],
                  onChanged: (String? value) {
                    setState(() {
                      if (value! != '') {
                        _budget = int.parse(value!);
                      }
                    });
                  },
                  // Added behavior when data is saved
                  onSaved: (String? value) {
                    setState(() {
                      if (value! != '') {
                        _budget = int.parse(value!);
                      }
                    });
                  },
                  // Validator as form validation
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Amount cannot be empty!';
                    }
                    return null;
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.class_),
                title: const Text(
                  'Budget Type',
                ),
                trailing: DropdownButton(
                  value: _type,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: listBudgetType.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _type = value!;
                    });
                  },

                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    BudgetList.data.add(Budget(
                      title: _title,
                      amount: _budget,
                      type: _type,
                    ));

                  }
                },
                child: const Text("Save", style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          ),
          ),
          ),
      ),
    );
  }
}
