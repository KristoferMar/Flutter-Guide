# personal_expense_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

## ListView

When the length of a list is known we use <br>
ListView<br>

When the length of a list is unknown and posibly very long we should always use:<br>
ListView.builder<br>

ListView.builder is a lazily loaded listview which gives you much performance. <br>

## Theme

A theme property is a property which can specify and hold various kinds of values for styling and design of your app. We specify this property in our Main MyApp class and we configure in the same place

## Widget tree & Element Tree

- Widget Tree - Configuration (rebuilds frequently).<br>
- Element Tree - Links widgets with rendered objects (rarely rebuilds). <br>
- Render Tree - Rendered objects on the screen (rarely rebuilds)<br>

## Context

Context is found in every single widget and work as the skeleton of our widget trees. It knows about all our states and in knows about other context's around them.It's a communication chanel to parse data. <br>

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
