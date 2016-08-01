//
//  LocationViewController.m
//  UI DEV
//
//  Created by SRIKIRAN INAGANTI on 7/27/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    map = [[MKMapView alloc]initWithFrame:self.view.frame];
    map.mapType = MKMapTypeHybrid;
    map.showsUserLocation = YES;
    [self.view addSubview:map];
    
    
    address = [[UILabel alloc]initWithFrame:CGRectMake(20, 30, self.view.frame.size.width-40, 100)];
    address.numberOfLines = 0;
    address.textColor = [UIColor whiteColor];
    [self.view addSubview:address];
    
    locationManager = [[CLLocationManager alloc]init];
    
    [locationManager requestWhenInUseAuthorization];
    
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
