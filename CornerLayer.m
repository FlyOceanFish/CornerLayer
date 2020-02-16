//
//  CornerLayer.m
//
//  Created by FlyOceanFish on 2019/2/15.
//  Copyright © 2019 FlyOceanFish. All rights reserved.
//

#import "CornerLayer.h"
#import <UIKit/UIKit.h>
@implementation CornerLayer

-(void)drawInContext:(CGContextRef)ctx{
    CGRect superRect = self.superlayer.bounds;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRoundedRect:superRect cornerRadius:self.mCornerRadius];
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRect:superRect];
    [path1 appendPath:path2];
    self.path = path1.CGPath;
    self.strokeColor = [[UIColor clearColor] CGColor];//线条颜色
    self.lineWidth = 1;
    self.fillRule = kCAFillRuleEvenOdd;
    self.fillColor = self.mFillColor.CGColor;//填充颜色
}
-(void)fof_didMoveToSuperView:(UIView *)superview{
    self.frame = superview.bounds;
    [superview.layer addSublayer:self];
    [self setNeedsDisplay];
}
@end
