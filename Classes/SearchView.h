//
//  SearchView.h
//  UNSW WiPos
//
//  Created by Sean Flynn on 20/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SearchView : UITableViewController {

    //NSString       searchType;
    NSMutableArray *buildingItems;
    /*NSMutableArray *elecLevelItems;
    NSMutableArray *elecLGRoomItems;
    NSMutableArray *elecGrdRoomItems;
    NSMutableArray *elec1FRoomItems;
    NSMutableArray *elec2FRoomItems;
    NSMutableArray *elec3FRoomItems;
    NSMutableArray *elec4FRoomItems;*/
    
    UIWindow *window;
    UINavigationController *navigationController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
