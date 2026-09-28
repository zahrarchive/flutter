import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({super.key});

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1E6),
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: const Color(0xFFA3B18A),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukkan angka pertama',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukkan angka kedua',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA3B18A),
                  ),
                  onPressed: () {},
                  child: const Text('+', style: TextStyle(fontSize: 24, color: Colors.white)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA3B18A),
                  ),
                  onPressed: () {},
                  child: const Text('-', style: TextStyle(fontSize: 24, color: Colors.white)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE6CCB2),
                  ),
                  onPressed: () {},
                  child: const Text('÷', style: TextStyle(fontSize: 24, color: Colors.white)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE6CCB2),
                  ),
                  onPressed: () {},
                  child: const Text('×', style: TextStyle(fontSize: 24, color: Colors.white)),
                ),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              'Hasil: 0',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344E41),
              ),
            ),
          ],
        ),
      ),
    );
  }
}