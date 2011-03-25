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

@interface ThirdViewController : UIViewController <MKMapViewDelegate> {
    IBOutlet MKMapView *mapView;
}

@property(nonatomic,retain) IBOutlet MKMapView *mapView;

@end
