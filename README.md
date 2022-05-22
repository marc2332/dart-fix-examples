## Data-driven fix Examples

A collection of samples that illustrate how Dart's Data-driven fix work.

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

### 1. Rename method [Example](lib/fix_data.yaml#L16)
```yaml
  - title: "Migrate to 'newMethodName'"
    date: YYYY-MM-DD
    element:
      uris: [ 'xyz.dart' ]
      method: 'oldMethodName'
      inClass: 'ClassName'
    changes:
      - kind: 'rename'
        newName: 'newMethodName'
```

