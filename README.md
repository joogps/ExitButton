<h1> ExitButton
  <img align="right" alt="Dark icon" src="../assets/dark-mode-small.png" width=60px>
  <img align="right" alt="Light icon" src="../assets/light-mode-small.png" width=60px>
</h1>

<p>
    <img src="https://img.shields.io/badge/iOS-13.0+-blue.svg" />
    <img src="https://img.shields.io/badge/-SwiftUI-red.svg" />
    <a href="https://twitter.com/joogps">
        <img src="https://img.shields.io/badge/Contact-@joogps-lightgrey.svg?style=social&logo=twitter" alt="Twitter: @joogps" />
    </a>
</p>

A simple, native SwiftUI exit icon made with SF Symbols, with colors and sizes that exactly match Apple's.

# 
<img alt="Home app gif" src="../assets/home-app.gif" width=450px> <img alt="Share sheet gif" src="../assets/share-sheet.gif" width=450px>

<p align="center">
  <i>As seen in the Home app and the iOS share sheet</i>
  </p>

## Installation
This repository is a Swift package, so you can just include it in your app through the Swift Package Manager. Alternatively, you can just copy the custom view to your project and it will work just as fine:

```swift
struct ExitButtonView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(white: colorScheme == .dark ? 0.19 : 0.93))
            Image(systemName: "xmark")
                .resizable()
                .scaledToFit()
                .font(Font.body.weight(.bold))
                .scaleEffect(0.416)
                .foregroundColor(Color(white: colorScheme == .dark ? 0.62 : 0.51))
        }
    }
}
```

## Usage
Usage is incredibly straight forward. Just import the component and instantiate the view like this:
```swift
import ExitButton

ExitButtonView()
```

and frame it like this:
```swift
ExitButtonView().frame(width: 24, height: 24)
```


or use it as a button, like this:
```swift
Button(action: { presentationMode.wrappedValue.dismiss() }) {
  ExitButtonView()
}.frame(width: 24, height: 24)
```
