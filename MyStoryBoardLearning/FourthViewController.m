//
//  FourthViewController.m
//  MyStoryBoardLearning
//
//  Created by Thanawat Soisakhoo on 9/12/2557 BE.
//  Copyright (c) 2557 thanawat.s. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController () {
    BOOL _viewInitializationDone;
}

@end

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@" %f ", CGRectGetMidX(self.view.bounds));
    
    UIView* square1 = [[UIView alloc] initWithFrame:CGRectMake(0,0,10,10)];
    square1.backgroundColor = [UIColor blackColor];
    square1.center = CGPointMake(CGRectGetMidX(self.view.bounds),5); // top center?
    [self.view addSubview:square1];
    
    
    UIView* square = [UIView new];
    square.backgroundColor = [UIColor blackColor];
    [self.view addSubview:square];
    square.translatesAutoresizingMaskIntoConstraints = NO;
    CGFloat side = 10;
    [square addConstraint:
     [NSLayoutConstraint
      constraintWithItem:square attribute:NSLayoutAttributeWidth
      relatedBy:0
      toItem:nil attribute:0
      multiplier:1 constant:side]];
    [self.view addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:|[square(side)]"
      options:0 metrics:@{@"side":@(side)}
      views:@{@"square":square}]];
    [self.view addConstraint:
     [NSLayoutConstraint
      constraintWithItem:square attribute:NSLayoutAttributeCenterX
      relatedBy:0
      toItem:self.view attribute:NSLayoutAttributeCenterX
      multiplier:1 constant:0]];

}

/*- (void) viewWillLayoutSubviews {
    NSLog(@"viewWillLayoutSubviews");
    if (!self->_viewInitializationDone) {
        self->_viewInitializationDone = YES;
        
        NSLog(@" %f ", CGRectGetMidX(self.view.bounds));
        
        UIView* square = [[UIView alloc] initWithFrame:CGRectMake(0,0,10,10)];
        square.backgroundColor = [UIColor blackColor];
        square.center = CGPointMake(CGRectGetMidX(self.view.bounds),5);
        [self.view addSubview:square];
    }
}*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
