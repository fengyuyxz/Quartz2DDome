//
//  EraseViewController.m
//  Quartz2DDome
//
//  Created by 颜学宙 on 2021/2/19.
//

#import "EraseViewController.h"

@interface EraseViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation EraseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)pan:(UIPanGestureRecognizer *)sender {
    CGPoint curP = [sender locationInView:self.imageView];
    CGFloat w = 20;
    CGRect rect = CGRectMake(curP.x-w*0.5, curP.y-w*0.5, w, w);
    UIGraphicsBeginImageContextWithOptions(self.imageView.bounds.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [self.imageView.layer renderInContext:ctx];
    CGContextClearRect(ctx, rect);
    //[self.imageView.image drawAtPoint:CGPointZero];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.imageView.image=image;
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
