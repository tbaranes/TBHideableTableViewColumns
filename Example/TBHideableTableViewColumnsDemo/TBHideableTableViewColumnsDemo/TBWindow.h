//
//  TBWindow.h
//  TBHideableTableViewColumnsDemo
//
//  Created by Tom Baranes on 16/05/15.
//  Copyright (c) 2015 Tom Baranes. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TBWindow : NSWindow <NSTextDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableView;

@end
