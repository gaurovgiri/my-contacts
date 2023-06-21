## Separation of Concern:
- Separates UI and Business Logic
```
lib
├── config
│   └── utils
│       └── app_colors.dart
├── core
│   └── constants
│       ├── app_images.dart
│       ├── app_styles.dart
│       └── strings.dart
├── features
│   └── contacts
│       ├── controller
│       ├── data
│       └── presentation
│           ├── my_contacts.dart
│           └── widgets
└── main.dart
```

Under features/contacts, the directories are arranged using separation of concern.