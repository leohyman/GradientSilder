//
//  UAESSlider.m
//  SilderDemo
//
//  Created by lvzhao on 2020/4/26.
//  Copyright © 2020 lvzhao. All rights reserved.
//

#import "UAESSlider.h"

@implementation UAESSlider




#pragma mark - 重写trackRectForBounds:方法改变UISlider track rect
- (CGRect)trackRectForBounds:(CGRect)bounds{
    [super trackRectForBounds:bounds];
    return CGRectMake(0, 0, bounds.size.width, bounds.size.height/2);
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value{
   return [super thumbRectForBounds:bounds trackRect:CGRectMake(-10, 0, bounds.size.width + 20, bounds.size.height/2) value:value];
}



@end
