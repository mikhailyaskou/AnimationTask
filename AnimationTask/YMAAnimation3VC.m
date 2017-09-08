//
//  YMAAnimation3VC.m
//  AnimationTask
//
//  Created by Mikhail Yaskou on 17.08.17.
//  Copyright © 2017 Mikhail Yaskou. All rights reserved.
//

#import "YMAAnimation3VC.h"

@interface YMAAnimation3VC ()
@property (weak, nonatomic) IBOutlet UILabel *animatedLabel;
@property (strong, nonatomic) UIDynamicAnimator* animator;
@property (strong, nonatomic) UIGravityBehavior* gravity;
@property (strong, nonatomic) UICollisionBehavior* collision;

@end

@implementation YMAAnimation3VC

- (IBAction)IBActiondoAnimationTappedidsenderdoAnimationTapped:(id)sender {
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[self.animatedLabel]];
    [self.animator addBehavior:self.gravity];
    self.collision = [[UICollisionBehavior alloc] initWithItems:@[self.animatedLabel]];
    self.collision.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:self.collision];
   }

@end
