//
//  ProgressView.m
//  Quartz2DDome
//
//  Created by 颜学宙 on 2021/2/15.
//

#import "ProgressView.h"

@implementation ProgressView

-(void)setProgress:(CGFloat)progress{
    _progress = progress;
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    CGPoint center = CGPointMake(CGRectGetWidth(rect)*0.5, CGRectGetHeight(rect)*0.5);
    CGFloat radious = CGRectGetWidth(rect)*0.5 -10;
    CGFloat start = -M_PI * 0.5;
    CGFloat angle = self.progress * M_PI *2;
    CGFloat end = start + angle;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radious startAngle:start endAngle:end clockwise:YES];
    [[UIColor greenColor]set];
    [path stroke];
}


@end
