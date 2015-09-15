//
//  ToDoListManager.h
//  DoingItWell
//
//  Created by Justine Gartner on 9/13/15.
//  Copyright © 2015 Justine Gartner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "List.h"

@class CreateNewListViewController;

@protocol ToDoListManager <NSObject>

- (void)createNewListViewController:(CreateNewListViewController *)viewController
                   didCreateNewList:(List *)list;

@end
