//
//  ThirdViewController.m
//
//  Created by Sean Flynn on 14/10/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import "ThirdViewController.h"
#import "MapAnnotation.h"

@implementation ThirdViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    printf("mapview");
    mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    [self.view insertSubview:mapView atIndex:0];    
    
    // Rough UNSW coordinates to start map view
    CLLocationCoordinate2D unsw_pos;
    unsw_pos.latitude = -33.916823;
    unsw_pos.longitude = 151.231002;
    
    // span of starting map
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    // make into region
    MKCoordinateRegion region;
    region.center = unsw_pos;
    region.span = span;
    
//    for (int i = 0; i < maxLocs; ++i) {
//        CLLocationCoordinate2D coord;
//        coord.latitude = lats[i];
//        coord.longitude = longs[i];
//        MapAnnotation* annote = [[MapAnnotation alloc] set:titles[i]:subs[i]:coord];
//        [mapView addAnnotation:annote];
//    }
    
    mapView.showsUserLocation = YES;
    mapView.mapType = MKMapTypeHybrid;
    mapView.delegate = self;
    mapView.zoomEnabled = YES;
    mapView.scrollEnabled = YES;
    mapView.userInteractionEnabled = YES;
    
    geoCoder=[[MKReverseGeocoder alloc] initWithCoordinate:unsw_pos];
    geoCoder.delegate=self;
	[geoCoder start];
    
    [mapView setRegion:region animated:YES];
    [mapView regionThatFits:region];
    
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
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error{
	NSLog(@"Reverse Geocoder Errored");
 
}
 
- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark{
	NSLog(@"Reverse Geocoder completed");
	mPlacemark=placemark;
	[mapView addAnnotation:placemark];
}


@end
