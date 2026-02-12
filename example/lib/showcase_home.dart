import 'package:example/pages/atoms_page.dart';
import 'package:example/pages/molecules_page.dart';
import 'package:example/pages/organisms_page.dart';
import 'package:example/pages/pages_page.dart';
import 'package:example/pages/templates_page.dart';
import 'package:flutter/material.dart';

class ShowcaseHome extends StatelessWidget {
  const ShowcaseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atomic Desing Showcase')),
      body: ListView(
        children: [
          _item(context, 'Atoms', const AtomsPage()),
          _item(context, 'Molecules', const MoleculesPage()),
          _item(context, 'Organisms', const OrganismsPage()),
          _item(context, 'Templates', const TemplatesPage()),
          _item(context, 'Pages', const PagesPage()),
          
        ]),
    );
  }
}

Widget _item(BuildContext context, String title, Widget page) {
  return ListTile(
    title: Text(title),
    trailing: const Icon(Icons.chevron_right),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => page),
      );
    },
  );
}
