//
//  LocationViewController.h
//  UI DEV
//
//  Created by SRIKIRAN INAGANTI on 7/27/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface LocationViewController : UIViewController
{
    MKMapView * map;
    CLLocationManager * locationManager;
    
    UILabel * address;
}

@end
