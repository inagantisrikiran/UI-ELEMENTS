//
//  WebViewController.m
//  UI DEV
//
//  Created by SRIKIRAN INAGANTI on 7/26/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIWebView *webview=[[UIWebView alloc]initWithFrame:CGRectMake(15, 30,self.view.frame.size.width-20,self.view.frame.size.height-20)];
    NSString *url=@"https://www.facebook.com";
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webview loadRequest:nsrequest];
    [self.view addSubview:webview];
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
