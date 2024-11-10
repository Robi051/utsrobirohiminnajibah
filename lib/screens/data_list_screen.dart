import 'package:flutter/material.dart';

class DataListScreen extends StatefulWidget {
  final String type;

  const DataListScreen({super.key, required this.type});

  @override
  State<DataListScreen> createState() => _DataListScreenState();
}

class _DataListScreenState extends State<DataListScreen> {
  final _searchController = TextEditingController();
  List<String> _filteredItems = [];
  final Map<String, List<String>> _data = {
    'siswa': [
      'Febri Mulyadi',
      'Budiono Siregar',
      'Aceng Suhendar',
      'Sesilia',
    ],
    'guru': [
      'Ahmad Dahlan',
      'Kartini',
      'Ki Hajar Dewantara',
    ],
    'staff': [
      'Budi Santoso',
      'Dewi Sartika',
      'Siti Aminah',
    ],
    'admin': [
      'Administrator1',
      'Administrator2',
    ],
  };

  @override
  void initState() {
    super.initState();
    _filteredItems = _data[widget.type] ?? [];
  }

  void _handleSearch(String query) {
    setState(() {
      _filteredItems = _data[widget.type]!
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Data ${widget.type[0].toUpperCase()}${widget.type.substring(1)}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _handleSearch,
              decoration: InputDecoration(
                hintText: 'Pencarian Data',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_filteredItems[index]),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
