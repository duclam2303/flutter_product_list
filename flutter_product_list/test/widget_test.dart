// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_product_list/main.dart';
import 'package:flutter_product_list/providers/product_provider.dart';

void main() {
  group('Product List App Tests', () {
    testWidgets('App starts and shows Product List Screen', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that the app starts with Product List Screen
      expect(find.text('Product List'), findsOneWidget);
      expect(find.text('Search products...'), findsOneWidget);
    });

    testWidgets('Search field is present and functional', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Find the search field
      final searchField = find.byType(TextField);
      expect(searchField, findsOneWidget);

      // Type into the search field
      await tester.enterText(searchField, 'iPhone');
      await tester.pump();

      // Verify text was entered
      expect(find.text('iPhone'), findsOneWidget);
    });

    testWidgets('Loading indicator shows when loading', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
          child: MaterialApp(
            home: Scaffold(
              body: Consumer<ProductProvider>(
                builder: (context, provider, child) {
                  if (provider.loadingState == LoadingState.loading &&
                      provider.products.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return const SizedBox();
                },
              ),
            ),
          ),
        ),
      );

      // Should show loading indicator initially
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
