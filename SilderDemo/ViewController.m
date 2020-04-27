//
//  ViewController.m
//  SilderDemo
//
//  Created by lvzhao on 2020/4/26.
//  Copyright © 2020 lvzhao. All rights reserved.
//

#import "ViewController.h"
#import "UAESControlSliderView.h"


@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UAESControlSliderView *sliderView = [[UAESControlSliderView alloc] init];
    sliderView.frame = CGRectMake(40, 300, 300, 25);
    [self.view addSubview:sliderView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
  
}



@end
