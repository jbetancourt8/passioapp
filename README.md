# passioapp

This is a simple RN application that uses native module to detect logos.

## How to Install

Clone the repo and run `npm install`

Open `passioapp.xcworkspace` located in the ios folder with Xcode and add a development team.

If the following error occurs:

```
building for ios simulator but the linked framework
```

In the build settings, under Build Options, set Validate Workspace to Yes.

## Todo

Currently the application is not integrated with the Passio SDK. Will need to do further research into how to bridge Swift and React Native.

## Screenshots

![Home page](./screenshots/screenshot1.jpeg)

![Detection page](./screenshots/screenshot2.jpeg)
