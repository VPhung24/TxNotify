# TxNotify

[pending] written for web. now native with wallet connect 

Subscribe to any address's pending transaction

Uses:

- [XcodeGen](https://github.com/yonaskolb/XcodeGen)
- [Alchemy](https://dashboard.alchemy.com)

n the project directory, run

```
./start
```

## getting started

### [XcodeGen](https://github.com/yonaskolb/XcodeGen)

Using [XcodeGen](https://github.com/yonaskolb/XcodeGen), we'll generate swift projects and frameworks on demand. Easily share code, generate schemes for different environments, share build settings across multiple targets, and so more via the `project.yml` config file.

```
brew install xcodegen
```

in the projects directory,

```
xcodegen generate
```

then open the project via

```
open TxNotify.xcodeproj
```

which is pretty much the bash executable `start`. run this after `project.yml` config changes

```
./start
```

### [swiftlint](https://github.com/realm/SwiftLint)

```
brew install swiftlint
```
