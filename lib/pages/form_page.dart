import 'package:flutter/material.dart';
import '../models/itinerary_model.dart';

class FormPage extends StatefulWidget {
  final Itinerary? itinerary;

  const FormPage({this.itinerary});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final tanggalController = TextEditingController();
  final waktuController = TextEditingController();
  final aktivitasController = TextEditingController();

  String status = "Planned";

  final Color tosca = const Color(0xFF2EC4B6);
  final Color orangeSoft = const Color(0xFFFFBF69);

  @override
  void initState() {
    super.initState();
    if (widget.itinerary != null) {
      tanggalController.text = widget.itinerary!.tanggal;
      waktuController.text = widget.itinerary!.waktu;
      aktivitasController.text = widget.itinerary!.aktivitas;
      status = widget.itinerary!.status;
    }
  }

  void saveData() {
    final newItinerary = Itinerary(
      tanggal: tanggalController.text,
      waktu: waktuController.text,
      aktivitas: aktivitasController.text,
      status: status,
    );

    Navigator.pop(context, newItinerary);
  }

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tosca,
        elevation: 0,
        title: const Text("Tambah Itinerary ✨"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: tanggalController,
              decoration: inputDecoration("🗓️ Hari / Tanggal"),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: waktuController,
              decoration: inputDecoration("🕒 Waktu"),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: aktivitasController,
              decoration: inputDecoration("📍 Aktivitas"),
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: status,
              items: ["Planned", "Done"]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  status = value!;
                });
              },
              decoration: inputDecoration("🚦 Status"),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: orangeSoft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: saveData,
                child: const Text(
                  "Simpan ✨",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}