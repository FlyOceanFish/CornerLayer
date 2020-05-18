//
//  CornerLayer.h
//
//  Created by FlyOceanFish on 2019/2/15.
//  Copyright © 2019 FlyOceanFish. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CornerLayer : CAShapeLayer
@property (nonatomic,strong)UIColor *mFillColor;
@property (nonatomic,assign)CGSize mCornerRadii;

- (void)fof_addRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii frameRect:(CGRect)rect;
@end

NS_ASSUME_NONNULL_END
