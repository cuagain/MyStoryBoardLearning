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

-(BOOL) shouldAutorotate {
    return YES;
}

- (NSUInteger) supportedInterfaceOrientations {
    NSLog(@"supportedInterfaceOrientations");
    
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

-(void) viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
}

-(void) viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear");
}

-(void) viewWillLayoutSubviews {
    CGRect b = self.view.bounds;
    CGRect f = self.view.frame;
    NSLog(@"viewWillLayoutSubviews fw = %f, fh = %f, bw = %f, bh = %f", f.size.width, f.size.height, b.size.width, b.size.height);
}

-(void) viewDidLayoutSubviews {
    CGRect b = self.view.bounds;
    CGRect f = self.view.frame;
    NSLog(@"viewDidLayoutSubviews fw = %f, fh = %f, bw = %f, bh = %f", f.size.width, f.size.height, b.size.width, b.size.height);
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
