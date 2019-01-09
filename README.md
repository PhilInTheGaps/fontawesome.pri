# FontAwesome.pri

![FontAwesome Version](https://img.shields.io/badge/FontAwesome-5.6.3-blue.svg?style=for-the-badge)

This fork adds a new modified version (2.0) of FontAwesome.qml that supports Font-Awesome 5.

## Fork

The usage changes only in the way that the font family is specified.  
As Font-Awesome 5 was split into 3 different fonts: _Solid_, _Regular_ and _Brands_ now the font family has to be explicitly specified.

There are also two special icon names that had to be changed in order to work:
- 500px -> \_500px
- print -> \_print

This was required because QML properties can not begin with digits and _print_ is a reserved keyword.

Unfortunately there is a workaround required when updating to a new Font-Awesome version:  
The name of the font _fa-regular.ttf_ has to be manually changed to "Font Awesome 5 Free Regular" because QML currently does not support font styles.

Example
-------

```QML
import QtQuick 2.0
import FontAwesome 2.0

Text {
  // The font will be loaded once the singleton object, FontAwesome, is referred in the application.
  text: FontAwesome.addressBook
  font.family: FontAwesome.familySolid // or .familyRegular, .familyBrands
}
```

## Original

FontAwesome.pri bundle FontAwesome font and icon table into a single module for QML project.

Features
--------

 1. Installable by qpm
 2. Work well with Qt Quick Designer. Able to show icons in "Design" mode
 3. Auto completion of icon name works in Qt Creator.

Example
-------

```
import QtQuick 2.0
import FontAwesome 1.0

Text {
  // The font will be loaded once the singleton object, FontAwesome, is referred in the application.
  text: FontAwesome.addressBook
  font.family: FontAwesome.fontFamily
}
```

![Screenshot](https://raw.githubusercontent.com/benlau/fontawesome.pri/master/docs/designmode.png)

Installation
------------

Install FontAwesome.pri by qpm:

    qpm install font.awesome.pri

Add "qrc://" to your QML import path

    engine.addImportPath("qrc:///"); // QQmlEngine

API
---

**FontAwesome**

FontAwesome is a signleton object.
Once it is referred in your code, it will load the font into memory.
Then it will be available for all other components.
Therefore, it is recommended to refer it on main.qml.

**FontAwesome.fontFamily**

It hold the font name. You may pass to the `font.family` in Text component

**Icon Table**

Moreover, FontAwesome object also hold a icon table.
For complete icon list, please check the source of [FontAwesome.qml](https://github.com/benlau/fontawesome.pri/blob/master/FontAwesome/FontAwesome.qml) file.
