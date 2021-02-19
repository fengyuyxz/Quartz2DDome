//
//  PieView.m
//  Quartz2DDome
//
//  Created by 颜学宙 on 2021/2/15.
//

#import "PieView.h"

@implementation PieView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    NSArray *dataArray = @[@25,@25,@50];
    CGPoint center = CGPointMake(CGRectGetWidth(rect)*0.5, CGRectGetHeight(rect)*0.5);
    CGFloat radious = CGRectGetWidth(rect)*0.5 -10;
    CGFloat startA = 0;
    CGFloat angle = 0;
    CGFloat endA = 0;
    UIBezierPath *path=nil;
    for (NSNumber *num in dataArray) {
        startA = endA;
        angle = num.intValue /100.0 * M_PI *2;
        endA = startA + angle;
        path = [UIBezierPath bezierPathWithArcCenter:center radius:radious startAngle:startA endAngle:endA clockwise:YES];
        [[self randomColor]set];
        [path addLineToPoint:center];
        [path fill];
    }
    
   
}
-(UIColor *)randomColor{
    CGFloat r = arc4random_uniform(256)/255.0f;
    CGFloat g = arc4random_uniform(256)/255.0f;
    CGFloat b = arc4random_uniform(256)/255.0f;
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

@end
