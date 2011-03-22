//
//  MapAnnotation.m
//  UNSW WiPos
//
//  Created by Sean Flynn on 21/10/10.
//  Copyright 2010 University of New South Wales. All rights reserved.
//

#import "MapAnnotation.h"


@implementation MapAnnotation

@synthesize title;
@synthesize subtitle;
@synthesize coordinate;

- (MapAnnotation *) set:(NSString *)t:(NSString *)s:(CLLocationCoordinate2D)c {
    title = t;
    subtitle = s;
    coordinate = c;
    return NULL;
}


@end
