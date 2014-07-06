//
//  homeViewController.m
//  codepath-tumblr
//
//  Created by Mario C. Delgado Jr. on 7/5/14.
//  Copyright (c) 2014 Mario C. Delgado Jr. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *homeView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UIImageView *loginView1;
- (IBAction)onLogin:(id)sender;
- (IBAction)onLoginButton:(id)sender;

@end

@implementation homeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
  
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.contentSize = self.homeView.frame.size;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogin:(id)sender {
    self.loginView.alpha =1;
    [UIView animateWithDuration:.4 animations:^{
        self.loginView.center = self.scrollView.center;
    }];
    [[[[UIApplication sharedApplication] delegate] window] addSubview:_loginView];
}

- (IBAction)onLoginButton:(id)sender {
    [UIView animateWithDuration:.4 animations:^{
        self.loginView.center = CGPointMake(self.loginView.center.x, 862);
    }];

    ;

}
@end
