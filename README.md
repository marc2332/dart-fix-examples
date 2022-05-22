## Data-driven fix Examples

A collection of samples that illustrate how Dart's Data-driven fix work.

# Project structure
├── vocabulary (package)  
│   ├── vocabulary_example (app)  
│   ├── lib  
│   │   ├── fix_data.yaml (data file)  
│   │   ├── vocabulary.dart (code)  
│   ├── test-fixes (test fixes)  

### 1. Rename method [Example](lib/fix_data.yaml#L16)
```yaml
  - title: "Migrate to 'newMethodName'"
    date: 2022-05-22
    element:
      uris: [ 'xyz.dart' ]
      method: 'oldMethodName'
      inClass: 'ClassName'
    changes:
      - kind: 'rename'
        newName: 'newMethodName'
```

