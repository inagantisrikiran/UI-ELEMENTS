//
//  UIViewsViewController.m
//  UI DEV
//
//  Created by SRIKIRAN INAGANTI on 7/26/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import "UIViewsViewController.h"

@interface UIViewsViewController ()
{
    UICollectionView *_collectionView;
}
@end

@implementation UIViewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    UIDatePicker * mydatePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(10, 250, self.view.frame.size.width-20, 150)];
    mydatePicker.datePickerMode = UIDatePickerModeDateAndTime;
    [self.view addSubview:mydatePicker];
    
    
    UITextView *mytextview=[[UITextView alloc]initWithFrame:CGRectMake(10,450,self.view.frame.size.width-20,150)];
    mytextview.backgroundColor=[UIColor purpleColor];
    mytextview.textColor=[UIColor blackColor];
    mytextview.textAlignment=NSTextAlignmentJustified;
    [mytextview setText:@"The apple tree (Malus domestica) is a deciduous tree in the rose family best known for its sweet, pomaceous fruit, the apple. It is cultivated worldwide as a fruit tree, and is the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. Apples have been grown for thousands of years in Asia and Europe, and were brought to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek and European Christian traditions."];
    mytextview.delegate=self;
    [self.view addSubview:mytextview];
    
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    
    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 80, 400, 400) collectionViewLayout:layout];
    
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
    
    [_collectionView setBackgroundColor:[UIColor clearColor]];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 12;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    cell.backgroundColor=[UIColor greenColor];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(50,50);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    UIEdgeInsets insets=UIEdgeInsetsMake(10, 10, 10, 10);
    return insets;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if (kind == UICollectionElementKindSectionHeader) {
        
        UICollectionReusableView *reusableview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        reusableview.backgroundColor = [UIColor redColor];
        
        if (reusableview==nil) {
            
            reusableview=[[UICollectionReusableView alloc] initWithFrame:CGRectMake(80,80,100,100)];
        }
        
        
        return reusableview;
    }
    return nil;


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
