//
//  PieViewController.m
//  Quartz2DDome
//
//  Created by 颜学宙 on 2021/2/15.
//

#import "PieViewController.h"

@interface PieViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"xiaoguo"];
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    [image drawAtPoint:CGPointMake(0, 0)];
    NSString *str = @"水印效果";
    NSMutableDictionary *attr=[[NSMutableDictionary alloc]init];
    attr[NSFontAttributeName]=[UIFont systemFontOfSize:200];
    [str drawAtPoint:CGPointMake(image.size.width*0.5, image.size.height*0.5) withAttributes:attr];
    UIImage *newImage=  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.imageView.image=newImage;
    self.imageView.contentMode=UIViewContentModeScaleAspectFit;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
