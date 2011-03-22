//
//  UNSW_WiPosAppDelegate.h
//  UNSW WiPos
//
//  Created by Sean Flynn on 22/9/10.
//  Copyright University of New South Wales 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UNSW_WiPosAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
