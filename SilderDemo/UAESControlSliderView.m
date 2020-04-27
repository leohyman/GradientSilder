//
//  UAESControlSliderView.m
//  SilderDemo
//
//  Created by lvzhao on 2020/4/27.
//  Copyright © 2020 lvzhao. All rights reserved.
//

#import "UAESControlSliderView.h"
#import "UAESSlider.h"
#import "UIView+Gradient.h"

@interface UAESControlSliderView()

@property (nonatomic,strong) UIView *minTrackView;
@property (nonatomic,strong) UAESSlider *slider ;
@property (nonatomic,strong) UIView *maxImageView ;

@end

@implementation UAESControlSliderView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setupUI];
    }
    return self;
}


- (void)setupUI{

        UAESSlider *slider = [[UAESSlider alloc] initWithFrame:CGRectMake(0, 6, 300, 12)];
        slider.maximumValue  = 1;
        slider.minimumValue  = 0;
        slider.value = 0.3;
        [slider setThumbImage:[UIImage imageNamed:@"icon_silder"] forState:UIControlStateNormal];
        [slider addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        slider.minimumTrackTintColor = UIColor.greenColor;
        slider.maximumTrackTintColor = UIColor.yellowColor;
        self.slider = slider;
        [self addSubview:slider];
        
        
    //延时一下, 才能获取到子视图
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if(self.slider.subviews.count > 1){
                self.maxImageView = self.slider.subviews[1];
                self.minTrackView = [[UIView alloc] init];
                [self.maxImageView addSubview:self.minTrackView];
                self.minTrackView.backgroundColor = UIColor.redColor;
                self.minTrackView.frame =  CGRectMake(0, 0, self.maxImageView.frame.size.width, 6);
                [self.minTrackView setGradientBackgroundWithColors:nil locations:@[@0,@1] startPoint:CGPointMake(0.01, 0.49) endPoint:CGPointMake(0.99, 0.49)];
                self.minTrackView.clipsToBounds = YES;
                self.minTrackView.layer.cornerRadius = 3;
            }
        });
}

- (void)valueChanged:(UISlider *)slider{
    
    self.minTrackView.frame =  CGRectMake(0, 0, self.maxImageView.frame.size.width, 6);
    [self.minTrackView setGradientBackgroundWithColors:nil locations:@[@0,@1] startPoint:CGPointMake(0.01, 0.49) endPoint:CGPointMake(0.99, 0.49)];
    NSLog(@"slider Value ==  %f",slider.value);
}

@end
