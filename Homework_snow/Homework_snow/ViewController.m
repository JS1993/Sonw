//
//  ViewController.m
//  Homework_snow
//
//  Created by  江苏 on 16/3/3.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImageView *snow=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"snow"]];
//    int viewWidth=self.view.bounds.size.width;
//    CGFloat size=arc4random()%10+10;
//    snow.frame=CGRectMake(arc4random()%viewWidth, -20, size, size);
//    [self.view addSubview:snow];
    [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(snowShow) userInfo:nil repeats:YES];
//    [UIView animateWithDuration:arc4random()%10+2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        snow.center=CGPointMake(snow.center.x, self.view.bounds.size.height-30);
//    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:arc4random()%10 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
//            snow.alpha=0.0;
//        } completion:^(BOOL finished) {
//            [snow removeFromSuperview];
//        }];
//    }];
}
-(void)snowShow{
    UIImageView *snow=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"snow"]];
    int viewWidth=self.view.bounds.size.width;
    CGFloat size=arc4random()%10+10;
    snow.frame=CGRectMake(arc4random()%viewWidth, -20, size, size);
    [self.view addSubview:snow];
    [UIView animateWithDuration:arc4random()%10 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        snow.center=CGPointMake(snow.center.x, self.view.bounds.size.height-10);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            snow.alpha=0.0;
        } completion:^(BOOL finished) {
            [snow removeFromSuperview];
        }];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
