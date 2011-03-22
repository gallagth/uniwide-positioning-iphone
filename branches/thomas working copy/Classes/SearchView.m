    //
//  SearchView.m
//  UNSW WiPos
//
//  Created by Sean Flynn on 20/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchView.h"


@implementation SearchView


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
        [window addSubview:navigationController.view];
        [window makeKeyAndVisible];
    }
    return self;
}


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
    
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    buildingItems = [[NSMutableArray alloc] init];
    /*elecLevelItems = [[NSMutableArray alloc] init];
    elecLGRoomItems = [[NSMutableArray alloc] init];
    elecGrdRoomItems = [[NSMutableArray alloc] init];
    elec1FRoomItems = [[NSMutableArray alloc] init];
    elec2FRoomItems = [[NSMutableArray alloc] init];
    elec3FRoomItems = [[NSMutableArray alloc] init];
    elec4FRoomItems = [[NSMutableArray alloc] init];*/
    
    [buildingItems addObject:@"Computer Science & Engineering"];
    [buildingItems addObject:@"Electrical Engineering"];
    [buildingItems addObject:@"Library"];
    [buildingItems addObject:@"Mechanical Engineering"];
    [buildingItems addObject:@"Red Centre"];
    [buildingItems addObject:@"More to come later..."];
    
    /*[elecLevelItems addObject:@"Lower Ground"];
    [elecLevelItems addObject:@"Ground Floor"];
    [elecLevelItems addObject:@"1st Floor"];
    [elecLevelItems addObject:@"2nd Floor"];
    [elecLevelItems addObject:@"3rd Floor"];
    [elecLevelItems addObject:@"4th Floor"];
    
    [elecLGRoomItems addObject:@"LGB"];
    [elecLGRoomItems addObject:@"LG7"];
    
    [elecGrdRoomItems addObject:@"G01A"];
    [elecGrdRoomItems addObject:@"G01B"];
    [elecGrdRoomItems addObject:@"G01C"];
    [elecGrdRoomItems addObject:@"G02"];
    [elecGrdRoomItems addObject:@"G02A"];
    [elecGrdRoomItems addObject:@"G03"];
    
    [elec1FRoomItems addObject:@"125"];
    [elec1FRoomItems addObject:@"126"];
    
    [elec2FRoomItems addObject:@"217"];
    [elec2FRoomItems addObject:@"218"];
    
    [elec3FRoomItems addObject:@"348"];
    [elec3FRoomItems addObject:@"349"];
    
    [elec4FRoomItems addObject:@"413"];
    [elec4FRoomItems addObject:@"413C"];*/
    
    self.navigationItem.title = @"Buildings";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [buildingItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    static NSString *CellIdentifier = @"Cell";
 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
 
    // Set up the cell...
    NSString *cellValue = [buildingItems objectAtIndex:indexPath.row];
    cell.text = cellValue;
 
    return cell;
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
    [buildingItems    release];
}


- (void)dealloc {
    //[buildingItems    release];
    /*[elecLevelItems   release];
    [elecLGRoomItems  release];
    [elecGrdRoomItems release];
    [elec1FRoomItems  release];
    [elec2FRoomItems  release];
    [elec3FRoomItems  release];
    [elec4FRoomItems  release];*/
    [super            dealloc];
}


@end
