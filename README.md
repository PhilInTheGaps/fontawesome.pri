# FontAwesome.pri

![FontAwesome Version](https://img.shields.io/badge/FontAwesome-5.11.2-blue.svg?style=for-the-badge)

This fork adds a new modified version of [FontAwesome.qml](https://github.com/benlau/fontawesome.pri) that supports Font-Awesome 5.

## Fork

The usage changes only in the way that the font family is specified.  
As Font-Awesome 5 was split into 3 different fonts: _Solid_, _Regular_ and _Brands_ now the font family has to be explicitly specified.

There are also two special icon names that had to be changed in order to work:
- 500px -> \_500px
- print -> \_print

This was required because QML properties can not begin with digits and _print_ is a reserved keyword.

Unfortunately there is a workaround required when updating to a new Font-Awesome version:  
The name of the font _fa-regular.ttf_ has to be manually changed to "Font Awesome 5 Free Regular" because QML currently does not support font styles.

## Installation

- Add this repo as a submodule
- Add include statement to your .pro file:  
`include(path/to/fontawesome.pri)`
- Add "qrc://" to your QML import path  
`engine.addImportPath("qrc:///");`

## Example

```QML
import QtQuick 2.0
import FontAwesome 2.1

Text {
  // The font will be loaded once the singleton object, FontAwesome, is referred in the application.
  text: FontAwesome.addressBook
  font.family: FontAwesome.familySolid // or .familyRegular, .familyBrands
  font.styleName: "Solid" // Only required if family is solid
}
```

![Screenshot](https://github.com/PhilInTheGaps/fontawesome.pri/raw/master/docs/preview.png)

## Versions

Include                   | FontAwesome
--------------------------|------------
`include FontAwesome 2.1` | 5.11.2
`include FontAwesome 2.0` | 5.6.3
`include FontAwesome 1.0` | 4.0
