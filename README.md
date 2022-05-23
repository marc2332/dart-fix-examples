## Dart fix Examples

A collection of samples that illustrate how Dart fix works.

Read more in [Data-driven Fixes](https://github.com/flutter/flutter/wiki/Data-driven-Fixes#data-driven-fixes) wiki page.

# Project structure
├── vocabulary (package)  
│   ├── lib  
│   │   ├── fix_data.yaml (data file)  
│   │   ├── vocabulary.dart (code)  
│   ├── test_fixes (test fixes)  
│   ├── vocabulary_example (app)  

To run fix tests locally.
```sh
dart fix --compare-to-golden
```

### 1. Rename parameter [Example](lib/fix_data.yaml#L16)
```yaml
  - title: "Migrate 'oldParameter to 'newParameter'"
    date: YYYY-MM-DD
    element:
      uris: [ 'xyz.dart' ]
      constructor: ''
      inClass: 'ClassName'
    changes:
      - kind: 'renameParameter'
        oldName: 'oldParameter'
        newName: 'newParameter'
```

### 2. Rename method [Example](lib/fix_data.yaml#L27)
```yaml
  - title: "Migrate 'newMethodName to 'oldMethodName'"
    date: YYYY-MM-DD
    element:
      uris: [ 'xyz.dart' ]
      method: 'oldMethodName'
      inClass: 'ClassName'
    changes:
      - kind: 'rename'
        newName: 'newMethodName'
```

