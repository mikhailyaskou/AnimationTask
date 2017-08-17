//
//  YMAAnimation1VC.m
//  AnimationTask
//
//  Created by Mikhail Yaskou on 17.08.17.
//  Copyright © 2017 Mikhail Yaskou. All rights reserved.
//

#import "YMAAnimation1VC.h"

@interface YMAAnimation1VC ()
@property (weak, nonatomic) IBOutlet UIButton *doAnnimationButton;
@property (weak, nonatomic) IBOutlet UILabel *animatedLabel;

@end

@implementation YMAAnimation1VC

- (IBAction)doAnimationTapped:(id)sender {
    [UIView animateWithDuration:1.0
                          delay:0.0
                        options: UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.animatedLabel.transform = CGAffineTransformMakeScale(3.0,3.0);
                     }
                     completion:^(BOOL finished){
                         
                     }];
}

@end
