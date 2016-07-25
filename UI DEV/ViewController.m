//
//  ViewController.m
//  UI DEV
//
//  Created by SRIKIRAN INAGANTI on 7/24/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIActivityIndicatorView *activityIndicator;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor blueColor];
    
    
    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(125, 200, 200, 190)];
    [self.imgView setImage:[UIImage imageNamed:@"sree1"]];
    [self.imgView setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:self.imgView];
    
    self.imgViewDown = [[UIImageView alloc]initWithFrame:CGRectMake(125, 450, 200, 190)];
    [self.imgViewDown setImage:[UIImage imageNamed:@"sree1"]];
    [self.imgViewDown setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:_imgViewDown];
    
    UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(230, 135, 0, 0)];
    mySwitch.tintColor=[UIColor cyanColor];
    [mySwitch addTarget:self action:@selector(changeSwitch:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch];

    UIButton *mybutton=[[UIButton alloc]initWithFrame:CGRectMake(30, 135, 90, 40)];
    [self.view addSubview:mybutton];
    [mybutton addTarget:self action:@selector(clickEvent:)forControlEvents:UIControlEventTouchUpInside];
    [mybutton setTitle:@"Button" forState:UIControlStateNormal];
    
    
    activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityIndicator.alpha = 1.0;
    activityIndicator.center = CGPointMake(160, 360);
    activityIndicator.hidesWhenStopped = NO;
    
    [activityIndicator startAnimating];
    
    [self.view addSubview:activityIndicator];
    [self performSelector:@selector(stopActivity)withObject:nil afterDelay:30];
    




    
    NSArray * items = [[NSArray alloc]initWithObjects:@"sree1",@"sree2",@"sree", nil];
    
    
    UISegmentedControl * mysegment = [[UISegmentedControl alloc]initWithItems:items];
    mysegment.tintColor = [UIColor greenColor];
    mysegment.selectedSegmentIndex = 0;
    [mysegment addTarget:self action:@selector(segmentValueChanged:) forControlEvents:UIControlEventValueChanged];
    mysegment.frame = CGRectMake(40,400,300,30);
    [self.view addSubview:mysegment];
    
  }

-(void)segmentValueChanged:(UISegmentedControl *)segment
{
    if (segment.selectedSegmentIndex == 0) {
        self.imgViewDown.image = [UIImage imageNamed:@"sree1"];
    }
    if (segment.selectedSegmentIndex == 1) {
        self.imgViewDown.image = [UIImage imageNamed:@"sree2"];
    }
    if (segment.selectedSegmentIndex == 2) {
        self.imgViewDown.image = [UIImage imageNamed:@"sree3"];
    }
    

    
    
   
    }
-(IBAction)clickEvent:(id)sender
{
    
    UIAlertView * alert =[[UIAlertView alloc ]initWithTitle:@"OK"
                                                    message:@""
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles: nil];
    
    [alert show];
}

- (void)changeSwitch:(id)sender{
    
    if([sender isOn]){
        NSLog(@"Switch is ON");
    } else{
        NSLog(@"Switch is OFF");
    }
    
}
    -(void)stopActivity
    {
        [activityIndicator removeFromSuperview];
    }












    
    
    



    
    
    

    


    
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
