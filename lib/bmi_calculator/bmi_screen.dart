import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = '';
  var backgroundColorStatus = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'YOUR BMI',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: backgroundColorStatus,
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'BMI',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: wtController,
                decoration: const InputDecoration(
                  label: Text('Enter Your Weight(in KG)'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ftController,
                decoration: const InputDecoration(
                  label: Text('Enter Your Height(in FEET)'),
                  prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: inController,
                decoration: const InputDecoration(
                  label: Text('Enter Your Height(in INCH)'),
                  prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  FocusScope.of(context).unfocus();
                  wtController.clear();
                  ftController.clear();
                  inController.clear();

                  if (wt != '' && ft != '' && inch != '') {
                    var iWt = int.parse(wt, radix: 10);
                    var iFt = int.parse(ft, radix: 10);
                    var iInch = int.parse(inch, radix: 10);

                    var totalInch = (iFt * 12) + iInch;
                    var totalCentimeter = totalInch * 2.54;
                    var totalMeter = totalCentimeter / 100;

                    var bmiResult = iWt / (totalMeter * totalMeter);

                    setState(() {
                      result = 'Your BMI is ${bmiResult.toStringAsFixed(4)}';
                      backgroundColorStatus = getTheStatusOfBMI(bmiResult);
                    });
                  } else {
                    setState(
                      () {
                        result = 'Please Fill All The Required Blanks';
                        backgroundColorStatus = Colors.white;
                      },
                    );
                  }
                },
                child: const Text('Calculate'),
              ),
              const SizedBox(height: 15),
              Text(
                result,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getTheStatusOfBMI(double bmiResult) {
    if (bmiResult < 18.5) {
      return Colors.lightBlue;
    } else if (bmiResult > 18.5 && bmiResult <= 24.9) {
      return Colors.green;
    } else if (bmiResult >= 25 && bmiResult <= 29.9) {
      return Colors.yellowAccent;
    } else if (bmiResult >= 30 && bmiResult <= 34.9) {
      return Colors.orange;
    } else if (bmiResult >= 35) {
      return Colors.redAccent;
    } else {
      return Colors.white;
    }
  }
}
