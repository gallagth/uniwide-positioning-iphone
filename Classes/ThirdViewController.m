//
//  ThirdViewController.m
//
//  Created by Sean Flynn on 14/10/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import "ThirdViewController.h"
#import "MapAnnotation.h"

@implementation ThirdViewController

@synthesize mapView;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [mapView setMapType:MKMapTypeSatellite];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region.center.latitude = -33.916823 ;
    region.center.longitude = 151.231002;
    region.span.longitudeDelta = 0.005f;
    region.span.latitudeDelta = 0.005f;
    [mapView setShowsUserLocation:YES];
    [mapView setRegion:region animated:NO]; 
    
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
	[super viewDidUnload];
}


- (void)dealloc {
    [mapView release];
    [super dealloc];
}

/*
- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error{
	NSLog(@"Reverse Geocoder Errored");
 
}
 
- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark{
	NSLog(@"Reverse Geocoder completed");
	mPlacemark=placemark;
	[mapView addAnnotation:placemark];
}
*/

@end
