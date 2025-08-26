// import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyConveter extends StatefulWidget {
  const CurrencyConveter({super.key});

  @override
  State<CurrencyConveter> createState() => _CurrencyConveterState();
}

class _CurrencyConveterState extends State<CurrencyConveter> {
  String fromCurrency = "INR";
  String toCurrency = "USD";

  TextEditingController amountController = TextEditingController();
  TextEditingController answerController = TextEditingController();

  // Example exchange rates relative to INR
  final Map<String, double> rates = {
    "INR": 1.0,
    "USD": 0.012,
    "EUR": 0.011,
    "GBP": 0.0095,
  };
  void convertCurrency() {
    double amount = double.tryParse(amountController.text) ?? 0.0;
    double inInr = amount / rates[fromCurrency]!;
    double converted = inInr * rates[toCurrency]!;

    setState(() {
      answerController.text = converted.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currency Converter"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Answer",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 5),

              Container(
                height: 223,
                child: Column(
                  children: [
                    const Text("Input Value", style: TextStyle(fontSize: 20)),
                    for (var c in ["INR", "USD", "EUR", "GBP"])
                      ListTile(
                        title: Text(c),
                        leading: Radio<String>(
                          value: c,
                          groupValue: fromCurrency,
                          onChanged: (value) {
                            setState(() => fromCurrency = value!);
                          },
                        ),
                      ),
                  ],
                ),
              ),

              // To Currency
              Container(
                height: 223,
                child: Column(
                  children: [
                    const Text("Output Value", style: TextStyle(fontSize: 20)),
                    for (var c in ["INR", "USD", "EUR", "GBP"])
                      ListTile(
                        title: Text(c),
                        leading: Radio<String>(
                          value: c,
                          groupValue: toCurrency,
                          onChanged: (value) {
                            setState(() => toCurrency = value!);
                          },
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: FloatingActionButton.extended(
                  onPressed: convertCurrency,
                  label: const Text("Convert", style: TextStyle(fontSize: 20)),
                  icon: const Icon(Icons.currency_exchange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
