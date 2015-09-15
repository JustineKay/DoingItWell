//
//  CreateNewListViewController.m
//  DoingItWell
//
//  Created by Justine Gartner on 9/13/15.
//  Copyright © 2015 Justine Gartner. All rights reserved.
//

#import "CreateNewListViewController.h"
#import "ToDoListsTableViewController.h"
#import "IntroViewController.h"
#import "List.h"

@interface CreateNewListViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userListName;

@end

@implementation CreateNewListViewController

- (IBAction)goButtonTapped:(UIButton *)sender {
    List *newList = [self createNewList:self.userListName.text];
    [self.listManager createNewListViewController:self didCreateNewList:newList];
}

-(List *)createNewList:(NSString *)listName{
    
    List *newList = [[List alloc] init];
    newList.listName = listName;
    
    return newList;
}


@end
