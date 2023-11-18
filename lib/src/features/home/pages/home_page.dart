import 'package:ecommerce/src/features/products/widgets/product_listview_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce app'),
      ),
      body: ListView(
        children: const [ProductListViewWidget(title: 'Produtos em destaque')],
      ),
    );
  }
}
