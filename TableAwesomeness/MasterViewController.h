//
//  MasterViewController.h
//  TableAwesomeness
//
//  Created by Scott Olsen on 3/26/13.
//  Copyright (c) 2013 Scott Olsen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController

@property (nonatomic, copy) NSMutableArray *eventList;
@property (strong, nonatomic) IBOutlet UITableView *eventTable;
//@property (strong, nonatomic) IBOutlet UIRefreshControl *refreshControl;

@end
