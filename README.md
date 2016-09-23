/!\ [DEPRECATED] /!\

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
```
- (void)viewDidLoad {
	[super viewDidLoad]
	[self.tableView createHideableColumnContextualMenuWithAutoResizingColumns:YES identifierException:nil];
}
```
For more information on this categories, take a look at the .h, it's well documented.

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
