JenkinsSample | Jenkinsおじさんの設定サンプル
=============

## Install pods

- Execute Shell | シェルの実行

```sh
pod install
```

## Build Project

- Xcode Plugin

![xcode plugin 1](screenshot/xcode_plugin1.png)
![xcode plugin 2](screenshot/xcode_plugin2.png)
![xcode plugin 3](screenshot/xcode_plugin3.png)

## Perform XCTest

- Execute Shell | シェルの実行

```sh
xcodebuild test -workspace ${JOB_NAME}.xcworkspace -scheme ${JOB_NAME} -destination 'name=iPhone Retina (4-inch 64-bit),OS=7.1' | ocunit2junit
```
