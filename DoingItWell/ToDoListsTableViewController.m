//
//  ToDoListsTableViewController.m
//  DoingItWell
//
//  Created by Justine Gartner on 9/13/15.
//  Copyright © 2015 Justine Gartner. All rights reserved.
//

#import "ToDoListsTableViewController.h"
#import "List.h"

@interface ToDoListsTableViewController ()

@property (nonatomic)NSMutableArray *userData;

@end

@implementation ToDoListsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Doing It Well";
    
    self.userData = [[NSMutableArray alloc]init];
    NSLog(@"user data: %@", self.userData);
    
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.userData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ToDoListsCellIdentifier" forIndexPath:indexPath];
    
    List *list = self.userData [indexPath.row];
    
    NSLog(@"list name: %@", list.listName);
    
    cell.textLabel.text = list.listName;

    
    return cell;
}

-(void)addNewLists:(NSMutableArray *)userLists{
    
    [self.userData addObjectsFromArray:userLists];
    
    NSLog(@"user data from addNewLists method: %@", self.userData);
    
}

@end
