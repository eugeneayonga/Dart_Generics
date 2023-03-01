import 'package:dart_generics/dart_generics.dart' as dart_generics;
import 'package:dart_generics/dart_generics_examples.dart'
    as dart_generics_examples;
import 'package:dart_generics/dart_generics_within_classes_and_methods.dart'
    as dart_generics_within_classes_and_methods;

void main(List<String> arguments) {
  print('Hello world: ${dart_generics.calculate()}!');
  print('*********************************************');

  print('${dart_generics_examples.genericsDisplay(arguments)}');
  print('*****************************************************');

  print('${dart_generics_within_classes_and_methods.utilsDisplay(arguments)}');
  print('*****************************************************');
}
