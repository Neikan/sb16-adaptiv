<h1 align="center">About</h1>

# Run project
```sh
flutter run lib/main.dart
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Generate files
#### `Json_serializable`-models
```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```

<br />

# Модуль 16. Cross-platform apps

#### Задание
1. Реализовать приложение со списком чего-либо.

2. Дизайн приложения должен зависеть от текущей ширины экрана:

- При ширине экрана `менее` 720 dp:
    - список должен быть в виде ListView,
    - меню отображается сверху,
    - по клику на элемент должен отображаться Bottom Sheet.

- При ширине экрана `более` 720 dp:
    - список должен быть в виде GridView,
    - меню отображается слева,
    - по клику на элемент должен отображаться Popover.
