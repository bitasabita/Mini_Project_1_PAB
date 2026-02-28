import 'package:flutter/material.dart';
import '../models/itinerary_model.dart';
import 'form_page.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Itinerary> itineraryList = [];
  String selectedFilter = "All";

  final Color tosca = const Color(0xFF2EC4B6);
  final Color orangeSoft = const Color(0xFFFFBF69);
  final Color darkBlue = const Color(0xFF3A4F7A);

  void navigateToForm({Itinerary? data, int? index}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FormPage(itinerary: data),
      ),
    );

    if (result != null) {
      setState(() {
        if (index != null) {
          itineraryList[index] = result;
        } else {
          itineraryList.add(result);
        }
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Itinerary berhasil disimpan ✨"),
          backgroundColor: tosca,
        ),
      );
    }
  }

  List<Itinerary> getFilteredList() {
    if (selectedFilter == "Planned") {
      return itineraryList.where((e) => e.status == "Planned").toList();
    } else if (selectedFilter == "Done") {
      return itineraryList.where((e) => e.status == "Done").toList();
    }
    return itineraryList;
  }

  Color getStatusColor(String status) {
    return status == "Done" ? orangeSoft : tosca;
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = getFilteredList();

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orangeSoft,
        onPressed: () => navigateToForm(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ================= HEADER =================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [darkBlue, tosca],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Travel Itinerary ✈️",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Organize your journey beautifully 🌤️",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ================= FILTER =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: ["All", "Planned", "Done"].map((filter) {
                  final isSelected = selectedFilter == filter;
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ChoiceChip(
                      label: Text(filter),
                      selected: isSelected,
                      selectedColor: tosca,
                      onSelected: (_) {
                        setState(() {
                          selectedFilter = filter;
                        });
                      },
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 10),

            // ================= LIST =================
            Expanded(
              child: filteredList.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.map_outlined,
                              size: 60, color: Colors.grey),
                          SizedBox(height: 10),
                          Text(
                            "Belum ada itinerary",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        final item = filteredList[index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    DetailPage(itinerary: item),
                              ),
                            ); 
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 10,
                                  offset: const Offset(0, 5),
                                )
                              ], 
                            ),
                            child: Column(
                              crossAxisAlignment: 
                                  CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item.tanggal,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 4),
                                      decoration: BoxDecoration(
                                        color: getStatusColor(
                                            item.status),
                                        borderRadius:
                                            BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        item.status,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text("🕒 ${item.waktu}"),
                                const SizedBox(height: 4),
                                Text("📍 ${item.aktivitas}"),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.edit,
                                          color: tosca),
                                      onPressed: () {
                                        navigateToForm(
                                            data: item,
                                            index:
                                                itineraryList.indexOf(
                                                    item));
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                      onPressed: () {
                                        setState(() {
                                          itineraryList.removeAt(
                                              itineraryList.indexOf(
                                                  item));
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}