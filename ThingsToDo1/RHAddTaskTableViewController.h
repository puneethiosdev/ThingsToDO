//
//  RHAddTaskTableViewController.h
//  ThingsToDo1
//
//  Created by Vishal on 05/05/16.
//  Copyright (c) 2016 ui. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RHTaskListTableViewController;

@interface RHAddTaskTableViewController : UITableViewController

-(IBAction)cancelButtonPressed:(id)sender;
-(IBAction)doneButtonPressed:(id)sender;

@property(nonatomic,strong) IBOutlet UITextField *nameField;

@property(nonatomic,strong) RHTaskListTableViewController *taskListViewController;


@end
