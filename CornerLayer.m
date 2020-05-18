//
//  CornerLayer.m
//
//  Created by FlyOceanFish on 2019/2/15.
//  Copyright © 2019 FlyOceanFish. All rights reserved.
//

#import "CornerLayer.h"
#import <UIKit/UIKit.h>

@interface CornerLayer()
@property (assign,nonatomic)UIRectCorner mCorners;
@end

@implementation CornerLayer

-(void)drawInContext:(CGContextRef)ctx{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:self.mCorners cornerRadii:self.mCornerRadii];
    self.path = path.CGPath;
    self.strokeColor = [[UIColor clearColor] CGColor];//线条颜色
    self.lineWidth = 1;
    self.fillRule = kCAFillRuleEvenOdd;
    if (self.mFillColor) {
        self.fillColor = self.mFillColor.CGColor;//填充颜色
    }else{
        self.fillColor = [UIColor whiteColor].CGColor;
    }
}
- (void)fof_addRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii frameRect:(CGRect)rect{
    self.frame = rect;
    self.mCornerRadii = cornerRadii;
    self.mCorners = corners;
    [self setNeedsDisplay];
}

@end
