//
//  CreateNewListViewController.h
//  DoingItWell
//
//  Created by Justine Gartner on 9/13/15.
//  Copyright © 2015 Justine Gartner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoListManager.h"

@interface CreateNewListViewController : UIViewController

@property (nonatomic, weak) id <ToDoListManager> listManager;

@end
