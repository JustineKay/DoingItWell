//
//  IntroViewController.m
//  DoingItWell
//
//  Created by Justine Gartner on 9/13/15.
//  Copyright © 2015 Justine Gartner. All rights reserved.
//

#import "IntroViewController.h"
#import "CreateNewListViewController.h"
#import "ToDoListsTableViewController.h"

@interface IntroViewController ()

// array of lists
@property (nonatomic) NSMutableArray *userLists;

@end

@implementation IntroViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.userLists = [[NSMutableArray alloc] init];
}

- (IBAction)doingItWellButtonTapped:(UIButton *)sender {
    
    ToDoListsTableViewController *listsTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ToDoListsTableViewController"];
    
    // pass self.lists to listsTableViewController
    //listsTableViewController.userData = self.userLists;
    
    [self.navigationController pushViewController:listsTableViewController animated:YES];
    
    
}

- (IBAction)doMoreButtonTapped:(UIButton *)sender {
    
    CreateNewListViewController *newListViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateNewListViewController"];
    
    newListViewController.listManager = self;
    
    
    [self.navigationController pushViewController:newListViewController animated:YES];
    
    
}

#pragma mark - ToDoListManager delegate methods

- (void)createNewListViewController:(CreateNewListViewController *)viewController
                   didCreateNewList:(List *)list {
    
    // add new list to self.lists
    [self.userLists addObject:list];
    
    NSLog(@"user lists: %@", self.userLists);
    
    ToDoListsTableViewController *listsTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ToDoListsTableViewController"];
    
    // pass self.lists to listsTableViewController
    //listsTableViewController.userData = self.userLists;
    
    [listsTableViewController addNewLists:self.userLists];
    [listsTableViewController.tableView reloadData];
    
    //IntroViewController *root = self.navigationController.viewControllers[0];
    self.navigationController.viewControllers = @[self,listsTableViewController, viewController];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    NSLog(@"%@", list.listName);
    
    
}

@end
