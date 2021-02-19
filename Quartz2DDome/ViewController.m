//
//  ViewController.m
//  Quartz2DDome
//
//  Created by 颜学宙 on 2021/2/15.
//

#import "ViewController.h"
#include "ProgressView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *processLabel;
@property (weak, nonatomic) IBOutlet ProgressView *progressView;

@end

@implementation ViewController
- (IBAction)sliderChange:(UISlider *)sender {
    CGFloat process = sender.value;
    self.processLabel.text=[NSString stringWithFormat:@"%.2f%%",process*100];
    self.progressView.progress = process;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
