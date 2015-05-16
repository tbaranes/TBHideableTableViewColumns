TBHideableTableViewColumns
===

Features
------

Do you want to copy iTunes NSTableView's column management? You are at the right place!

TBHideableTableViewColumns does:

- Display / hide columns using a contextual menu
- Save the column width when it's resizing
- Save the column place when the NSTableView is ordering columns
- Auto-resize all columns to fit their content
- Restore the columns state (hide/display, width) between each laucnh

And more following the needed.

Requirements
------

This category requires Xcode 6, targeting OSX 10.7 and above. It should work for previous versions, but never tested.


ARC Compatibility
------

TBHideableTableViewColumns requires ARC.


Installation 
------

### With CocoaPods ###

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See their "Getting Started" guide for more information.

So, to use it, just add this line in your Podfile
```
pod "TBHideableTableViewColumns"
```

### Manual installation ###

To use TBHideableTableViewColumns, just drag the TBHideableTableViewColumns.h and .m files into your project and import the header file in your class.

Usage
------

### Methods

TBHideableTableViewColumns extends NSTableView using several methods.

```
- (void)createHideableColumnContextualMenuWithAutoResizingColumns:(BOOL)autoResizingColumns identifierException:(NSArray *)identifierException;
```

In order to use it, you just have to call the following method. That will set everything by automatically: refresh the last state of your NSTableView, or start listening for columns change.

The contextual menu will display your column title. If this one is nil, it will use do a `NSLocalizedString` on the identifier, and display it.

**Parameters:**

- `autoResizingColumns`: pass YES if you want to display `Auto-resizing all columns` in your contextual menu
- `identifierException`: column's identifiers you want to display permanently.


```
- (void)hideColumnWithIdentifiers:(NSArray *)identifiers;
```

This method is usefull if you want to hide by default some columns. Just pass their identifiers to `identifiers` 

```
- (void)resizingAllColumn;
```

Resize all columns to fit their contents.

### Localizables

TBHideableTableViewColumns is using its own bundle in order to localize its strings. Currently, it's supporting the following languages:

- English

Feel free to add more translations.

Feedback
------

  * If you found a **bug**, open an **issue**
  * If you have a **feature request**, open an **issue**
  * If you want to **contribute**, submit a **pull request**

Contact
------

* [@tbaranes](https://github.com/tbaranes/) on github

License
------

FSI is under the Apache license. See the LICENSE file for more information.
