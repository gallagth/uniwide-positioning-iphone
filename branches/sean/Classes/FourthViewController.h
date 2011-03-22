//
//  FourthViewController.h
//  UNSW WiPos
//
//  Created by Sean Flynn on 23/9/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchView.h"
#import "UNSW_WiPosAppDelegate.h"

@interface FourthViewController : UIViewController {
    UIButton *buildingButton;
    SearchView *srchView;
}

@property (nonatomic, retain) UIButton *buildingButton;

- (void)bldgBtn_clicked;

@end
