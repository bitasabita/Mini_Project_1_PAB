import 'package:flutter/material.dart';
import '../models/itinerary_model.dart';

class DetailPage extends StatelessWidget {
  final Itinerary itinerary;

  DetailPage({required this.itinerary});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Itinerary"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Tanggal: ${itinerary.tanggal}"),
              SizedBox(height: 8),
              Text("Waktu: ${itinerary.waktu}"),
              SizedBox(height: 8),
              Text("Aktivitas: ${itinerary.aktivitas}"),
              SizedBox(height: 8),
              Text("Status: ${itinerary.status}"),
            ],
          ),
        ),
      ),
    );
  }
}