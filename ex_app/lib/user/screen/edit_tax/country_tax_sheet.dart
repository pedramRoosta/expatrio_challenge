import 'package:flutter/material.dart';

class CoutryTaxSheet extends StatefulWidget {
  const CoutryTaxSheet({
    required this.countries,
    super.key,
  });

  final List<Map<String, dynamic>> countries;

  @override
  State<CoutryTaxSheet> createState() => _CoutryTaxSheetState();
}

class _CoutryTaxSheetState extends State<CoutryTaxSheet> {
  final List<Map<String, dynamic>> filteredCountries = [];
  @override
  void initState() {
    super.initState();
    filteredCountries.addAll(widget.countries);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) => searchContries(searchTerm: value),
          decoration: const InputDecoration(
            hintText: 'Search for a country',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            suffixIcon: Icon(
              Icons.search,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            height: 300,
            child: ListView(
              shrinkWrap: true,
              children: [
                for (final country in filteredCountries)
                  ListTile(
                    onTap: () {
                      Navigator.pop(context, country);
                    },
                    title: Text(country['label']),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void searchContries({required searchTerm}) {
    filteredCountries.clear();
    if (searchTerm.isEmpty) {
      filteredCountries.addAll(widget.countries);
      setState(() {});
    } else {
      for (final country in widget.countries) {
        if (country['label'].toLowerCase().contains(searchTerm.toLowerCase())) {
          filteredCountries.add(country);
        }
      }
    }
    setState(() {});
  }
}
