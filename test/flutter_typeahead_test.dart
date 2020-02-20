import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

void main() {
  testWidgets('Test.', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DescriptionField(),
        ),
      ),
    );

    await tester.pumpAndSettle();
  });
}

class DescriptionField extends StatefulWidget {
  const DescriptionField();

  @override
  DescriptionFieldState createState() => DescriptionFieldState();
}

class DescriptionFieldState extends State<DescriptionField> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<String>(
      textFieldConfiguration: TextFieldConfiguration<dynamic>(
        controller: controller,
        autofocus: true,
      ),
      suggestionsCallback: (_) => [],
      itemBuilder: (_, __) => Container(),
      onSuggestionSelected: (_) {},
    );
  }
}
