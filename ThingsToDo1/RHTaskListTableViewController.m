//
//  RHTaskListTableViewController.m
//  ThingsToDo1
//
//  Created by Vishal on 05/05/16.
//  Copyright (c) 2016 ui. All rights reserved.
//

#import "RHTaskListTableViewController.h"
#import "RHTask.h"
#import "RHAddTaskTableViewController.h"

@interface RHTaskListTableViewController ()

@end

@implementation RHTaskListTableViewController

@synthesize tasks = _tasks;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tasks = [[NSMutableArray alloc] init];
    
    RHTask *task = [[RHTask alloc]initWithName:@"My First Task" done:NO];
    
    RHTask *newTask = [[RHTask alloc]init];
    
    newTask.name = @"My New Task";
    
    newTask.done = NO;
    
    [self.tasks addObject:newTask];
    
    
    [self.tasks addObject:task];
    
    RHTask *doneTask = [[RHTask alloc] initWithName:@"My First Done Task" done:YES];
    
    RHTask *secondTask = [[RHTask alloc]initWithName:@"My Second Done Task" done:YES];
    
    [self.tasks addObject:secondTask];
    
    [self.tasks addObject:doneTask];
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"AddTaskSegue"]){
        
        UINavigationController *navCon = segue.destinationViewController;
        RHAddTaskTableViewController *addTaskViewController = [navCon.viewControllers objectAtIndex:0];
        addTaskViewController.taskListViewController =self;
        
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tasks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *NotDoneCellIdentifier = @"NotDoneTaskCell";
    static NSString *DoneCellIdentifier = @"DoneTaskCell";
    

    RHTask *currentTask = [self.tasks objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = currentTask.done ? DoneCellIdentifier : NotDoneCellIdentifier;
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    

    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell...
 
    cell.textLabel.text = currentTask.name;
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
