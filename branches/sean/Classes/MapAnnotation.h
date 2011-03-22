//
//  MapAnnotation.h
//  UNSW WiPos
//
//  Created by Sean Flynn on 21/10/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface MapAnnotation : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, assign) NSString *title;
@property (nonatomic, assign) NSString *subtitle;

-(MapAnnotation *) set:(NSString *)t:(NSString *)s:(CLLocationCoordinate2D)c;

@end
