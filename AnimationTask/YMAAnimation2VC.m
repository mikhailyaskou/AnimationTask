//
//  YMAAnimation2VC.m
//  AnimationTask
//
//  Created by Mikhail Yaskou on 17.08.17.
//  Copyright © 2017 Mikhail Yaskou. All rights reserved.
//

#import "YMAAnimation2VC.h"

@interface YMAAnimation2VC ()

@property (weak, nonatomic) IBOutlet UILabel *animatedLabel;

@end

@implementation YMAAnimation2VC

- (IBAction)makeAnimationButtonTapped:(id)sender {
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.animatedLabel.transform = CGAffineTransformRotate(self.animatedLabel.transform, M_PI / 2);
                     }
                     completion:^(BOOL finished) {
                         [self makeAnimationButtonTapped: nil];
                     }];
    
}

@end
