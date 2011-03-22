    //
//  FourthViewController.m
//  UNSW WiPos
//
//  Created by Sean Flynn on 23/9/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import "FourthViewController.h"


@implementation FourthViewController

@synthesize buildingButton;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
    
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.buildingButton = [[UIButton alloc] init];

    self.buildingButton = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
    [self.buildingButton setFrame:CGRectMake(20, 91, 280, 37)];
    //self.buildingButton.frame = CGRectMake(20, 91, 280, 37);
    [self.buildingButton setTitle:@"Building Name:" forState:UIControlStateNormal];
    // add target
    [self.buildingButton addTarget:self action:@selector(bldgBtn_clicked) forControlEvents:UIControlEventTouchUpInside];
    // add to view

    [self.view addSubview:self.buildingButton];
    
}

- (void)bldgBtn_clicked {
    srchView = [[SearchView alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:srchView animated:YES];
    
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [self.buildingButton release];
}


- (void)dealloc {
    /* IS VERY VERY BAD, BUT I HAVE NO CHOICE */
    //[super dealloc];
}


@end
