//
//  SecondViewController.m
//
//  Created by Sean Flynn on 6/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

@synthesize imgView;

- (void)viewDidLoad {
    printf("VDL");
    UIImage *img = [[UIImage imageNamed:@"Level4.jpg"] retain];
    self.imgView = [[UIImageView alloc] initWithImage:img];

    UIImage *overlayImg = [UIImage imageNamed:@"Green.jpg"];
    UIImageView *overlayImgView = [[UIImageView alloc] initWithImage:overlayImg];
    overlayImgView.alpha = 0.5;
    
    
    overlayImgView.center = CGPointMake(100.0, 100.0);
    
    [self.imgView addSubview:overlayImgView];
            
    [self.view addSubview:self.imgView];
    [(UIScrollView *) self.view setContentSize:[img size]];
    [(UIScrollView *) self.view setMaximumZoomScale:1.5];
    [(UIScrollView *) self.view setMinimumZoomScale:0.5];
    [(UIScrollView *) self.view setZoomScale:0.5];
    
} 

- (UIView *) viewForZoomingInScrollView: (UIScrollView *) scrollView {
    return imgView;
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
    [imgView release];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    /* IS VERY VERY BAD, BUT I HAVE NO CHOICE */
    //[super dealloc];
}

@end
