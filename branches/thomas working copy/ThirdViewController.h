//
//  ThirdViewController.h
//
//  Created by Sean Flynn on 14/10/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKMapView.h>

@interface ThirdViewController : UIViewController <MKReverseGeocoderDelegate,MKMapViewDelegate> {

    MKMapView *mapView;
    MKReverseGeocoder *geoCoder;
	MKPlacemark *mPlacemark;
	IBOutlet UISegmentedControl *mapType;

}

int maxLocs = 2;
float lats[2] = {-33.917814, -33.918428};
float longs[2] = {151.231554, 151.231262};
NSString *titles[2] = {@"ElecEng", @"MechEng"};
NSString *subs[2] = {@"Electrical Engineering", @"Mechanical Engineering J17"};

@end
