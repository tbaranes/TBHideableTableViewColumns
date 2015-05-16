//
//  TBWindow.m
//  TBHideableTableViewColumnsDemo
//
//  Created by Tom Baranes on 16/05/15.
//  Copyright (c) 2015 Tom Baranes. All rights reserved.
//

#import "TBWindow.h"
#import "NSTableView+TBHideableTableViewColumns.h"

@interface TBWindow ()

@property (strong, nonatomic) NSArray *items;

@end

@implementation TBWindow

#pragma mark - Life cycle

- (void)awakeFromNib {
	[super awakeFromNib];
	[self generateData];
	[self setupTableView];
}

#pragma mark - Setup

- (void)generateData {
	NSMutableArray *items = [NSMutableArray arrayWithCapacity:100];
	for (NSUInteger i = 0; i < 100; ++i) {
		[items addObject:@{@"name": [NSString stringWithFormat:@"Demo %lu", i], @"age": [NSString stringWithFormat:@"%lu", i], @"birthday": @"Today!"}];
	}
	self.items = [items copy];
}

- (void)setupTableView {
//	Example if you need to translate your title in the contextual menu:
//	for (NSTableColumn *column in self.tableView.tableColumns) {
//		[column setTitle:NSLocalizedString(column.title, nil)];
//	}
	
	// Check if it's first setup of the tableview
	BOOL isFirstLaunch = ![[[[NSUserDefaults standardUserDefaults] dictionaryRepresentation] allKeys] containsObject:KFUserDefaultsSongTableViewColumnState];

	// Setup the contextual menu, and refresh the tableview state
	// Here, we don't want the column "name" to be hide
	[self.tableView createHideableColumnContextualMenuWithAutoResizingColumns:YES identifierException:@[@	"name"]];
	
	// Hide by default the birthday column if it's first launch
	if (isFirstLaunch) {
		[self.tableView hideColumnWithIdentifiers:@[@"birthday"]];
	}
}

#pragma mark - NSTableViewDatasource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
	return [self.items count];
}


- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
				  row:(NSInteger)row {
	NSDictionary *data = [self.items objectAtIndex:row];
	NSTableCellView *result = [tableView makeViewWithIdentifier:@"MyView" owner:nil];
	result.textField.stringValue = [data objectForKey:tableColumn.identifier];
	return result;
}

@end
