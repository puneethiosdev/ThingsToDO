//
//  RHAddTaskTableViewController.m
//  ThingsToDo1
//
//  Created by Vishal on 05/05/16.
//  Copyright (c) 2016 ui. All rights reserved.
//

#import "RHAddTaskTableViewController.h"
#import "RHTaskListTableViewController.h"
#import "RHTask.h"

@interface RHAddTaskTableViewController ()

@end

@implementation RHAddTaskTableViewController

@synthesize nameField =_nameField;
@synthesize taskListViewController = _taskListViewController;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"List %@",self.taskListViewController.tasks);
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)cancelButtonPressed:(id)sender{
    [self dismissModalViewControllerAnimated:YES];
}

-(void)doneButtonPressed:(id)sender{
    RHTask *newTask = [[RHTask alloc]initWithName:self.nameField.text done:NO];
    
    [self.taskListViewController.tasks addObject:newTask];
    
    [self dismissModalViewControllerAnimated:YES];

    [self.taskListViewController.tableView reloadData];
}

@end
