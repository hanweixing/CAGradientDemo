//
//  ViewController.m
//  CAGradientDemo
//
//  Created by xingxing on 15/11/12.
//  Copyright © 2015年 hanweixing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *colorBackgroundView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.colorBackgroundView.frame = CGRectMake(20, 70, CGRectGetWidth(self.view.frame)-2*20, 50);
    [self.view addSubview:self.colorBackgroundView];
    
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor blueColor].CGColor];
    gradientLayer.startPoint = CGPointMake(0, 1);
    gradientLayer.endPoint = CGPointMake(1, 1);
    gradientLayer.frame = CGRectMake(0, 0, CGRectGetWidth(self.colorBackgroundView.frame), CGRectGetHeight(self.colorBackgroundView.frame));
    [self.colorBackgroundView.layer addSublayer:gradientLayer];
    
//    [self.colorBackgroundView.layer insertSublayer:gradientLayer below:0];
    
    /*
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 20, 20)];
    img.image = [UIImage imageNamed:@"空白"];
    [self.colorBackgroundView addSubview:img];
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    /*
     gradientLayer.locations = @[@0.2,@1];
     gradientLayer.frame = self.colorBackgroundView.bounds;
     [self.colorBackgroundView.layer insertSublayer:gradientLayer above:0];
     */
    
    
}

@end
