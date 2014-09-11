//
//  ViewController.m
//  MyStoryBoardLearning
//
//  Created by thanawat.s on 9/10/2557 BE.
//  Copyright (c) 2557 thanawat.s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    BOOL _isHiddenStatusBar;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor greenColor];

    self->_isHiddenStatusBar = NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    NSLog(@"preferredStatusBarStyle");
    
    return UIStatusBarStyleDefault;
}

-(BOOL) prefersStatusBarHidden {
    NSLog(@"prefersStatusBarHidden");
    return self->_isHiddenStatusBar;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    NSLog(@"preferredStatusBarUpdateAnimation");
    return UIStatusBarAnimationSlide;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTogglePressed:(id)sender {
    
    self->_isHiddenStatusBar = !self->_isHiddenStatusBar;
    
    [UIView animateWithDuration:0.5 animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
    
    /**/
}
@end
