//
//  ViewController.h
//  UI DEV
//
//  Created by SRIKIRAN INAGANTI on 7/24/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) UIImageView *imgView, *imgViewDown;
@property(nonatomic, readonly, copy) NSArray <__kindof UIView *> *subviews;

@end

