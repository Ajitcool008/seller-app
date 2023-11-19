## Generation file

This project uses code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter packages pub run build_runner build --build-filter="package:app_builder_repository/src/models/**/*.dart"
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Format code

```
dart format -l 120 lib
```


## Prefix definition

Abd_: App builder type
AW_: App builder widget
AS_: App builder screen