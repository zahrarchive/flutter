import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/components/custom_button.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:login_app/components/custom_textfield.dart';
import 'package:login_app/controller/kalkulator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  void hitung(Function(double, double) operasi) {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Kedua angka harus diisi terlebih dahulu!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }
    double a1 = double.tryParse(txtangka1.text) ?? 0;
    double a2 = double.tryParse(txtangka2.text) ?? 0;
    operasi(a1, a2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my kalkulator"),
        centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(
              myHint: "input angka 1",
              txtController: txtangka1,
            ),
            const SizedBox(height: 10),
            CustomTextfield(
              myHint: "input angka 2",
              txtController: txtangka2,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  myLabel: "+",
                  bgColor: Color.fromARGB(255, 176, 131, 180),
                  textColor: Colors.white,
                  onPressed: () => hitung(controller.tambah),
                ),
                CustomButton(
                  myLabel: "-",
                  bgColor: Color.fromARGB(255, 101, 106, 169),
                  textColor: Colors.white,
                  onPressed: () => hitung(controller.kurang),
                  
                ),
                CustomButton(
                  myLabel: "x",
                  bgColor: Color.fromARGB(255, 217, 202, 116),
                  textColor: Colors.white,
                  onPressed: () => hitung(controller.kali),
                ),
                CustomButton(
                  myLabel: "/",
                  bgColor: Color.fromARGB(255, 175, 76, 76),
                  textColor: Colors.white,
                  onPressed: () => hitung(controller.bagi),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Obx(
              () => CustomText(
                text: "Hasil: ${controller.hasilHitung.value}",
                fontSize: 20,
                color: const Color.fromARGB(255, 96, 161, 172),
              ),
            ),
          ],
        ),
      ),
    );
  }
}