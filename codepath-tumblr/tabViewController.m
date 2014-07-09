//
//  tabViewController.m
//  codepath-tumblr
//
//  Created by Mario C. Delgado Jr. on 7/5/14.
//  Copyright (c) 2014 Mario C. Delgado Jr. All rights reserved.
//

#import "tabViewController.h"
#import "homeViewController.h"
#import "searchViewController.h"
#import "accountViewController.h"
#import "trendingViewController.h"

@interface tabViewController ()
@property (nonatomic, strong) homeViewController *homeViewController;
@property (nonatomic, strong) searchViewController *searchViewController;
@property (nonatomic, strong) accountViewController *accountViewController;
@property (nonatomic, strong) trendingViewController *trendingViewController;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIView *composeView;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *trendingButton;
@property (weak, nonatomic) IBOutlet UIImageView *explorePopup;
@property (weak, nonatomic) IBOutlet UIButton *onCompose;
@property (weak, nonatomic) IBOutlet UIImageView *text1;
@property (weak, nonatomic) IBOutlet UIImageView *photo1;
@property (weak, nonatomic) IBOutlet UIImageView *quote1;
@property (weak, nonatomic) IBOutlet UIImageView *link1;
@property (weak, nonatomic) IBOutlet UIImageView *chat1;
@property (weak, nonatomic) IBOutlet UIImageView *video1;
@property (weak, nonatomic) IBOutlet UIButton *onCancel1;
- (IBAction)onCancel:(id)sender;

- (IBAction)onHome:(id)sender;
- (IBAction)onSearch:(id)sender;
- (IBAction)onCompose:(id)sender;
- (IBAction)onAccount:(id)sender;
- (IBAction)onTrending:(id)sender;


@end

@implementation tabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.homeViewController = [[homeViewController alloc]init];
        self.searchViewController = [[searchViewController alloc]init];
        self.accountViewController = [[accountViewController alloc]init];
        self.trendingViewController = [[trendingViewController alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contentView.clipsToBounds = YES;
    [self setNeedsStatusBarAppearanceUpdate];
    [self onHome:nil];
    self.composeView.center = CGPointMake(self.composeView.center.x,850);
   // self.onCancel1.center = CGPointMake(160, 610);
    self.text1.center = CGPointMake(self.text1.center.x, 2900);
    self.photo1.center = CGPointMake(self.photo1.center.x, 1900);
    self.quote1.center = CGPointMake(self.quote1.center.x, 2900);
    self.link1.center = CGPointMake(self.link1.center.x, 2900);
    self.chat1.center = CGPointMake(self.chat1.center.x, 1900);
    self.video1.center = CGPointMake(self.video1.center.x,2900);
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)searchBounce {
        self.explorePopup.hidden = NO;
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionCurveEaseInOut animations:^{
        self.explorePopup.center = CGPointMake(self.explorePopup.center.x, 495);
    } completion:nil];
}



- (IBAction)onHome:(id)sender {
     [self searchBounce];
    
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
    self.homeButton.selected = YES;
    self.searchButton.selected = NO;
    self.accountButton.selected = NO;
    self.composeView.alpha = 0;
    self.trendingButton.selected = NO;
   
}

- (IBAction)onSearch:(id)sender {
        self.explorePopup.hidden = YES;
    [self.contentView addSubview:self.searchViewController.view];
    self.searchViewController.view.frame = self.contentView.frame;
    self.searchButton.selected = YES;
    self.homeButton.selected = NO;
    self.accountButton.selected = NO;
    self.trendingButton.selected = NO;
}

- (IBAction)onCompose:(id)sender {
    self.composeView.center = CGPointMake(self.composeView.center.x, 284);


   [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:.8 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
       self.composeView.alpha = 1;
       self.text1.center = CGPointMake(self.text1.center.x, 204);
       self.photo1.center = CGPointMake(self.photo1.center.x, 204);
       self.quote1.center = CGPointMake(self.quote1.center.x, 204);
       self.onCancel1.center = CGPointMake(self.composeView.center.x, 542);

   } completion:nil];
    
    
    [UIView animateWithDuration:1 delay:0.1 usingSpringWithDamping:.8 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
        self.link1.center = CGPointMake(self.link1.center.x, 324);
        self.chat1.center = CGPointMake(self.chat1.center.x, 324);
        self.video1.center = CGPointMake(self.video1.center.x, 324);
        
    } completion:nil];




        [[[[UIApplication sharedApplication] delegate] window] addSubview:_composeView];
    
}

- (IBAction)onCancel:(id)sender {


    
    
    
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:.7 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
        self.composeView.alpha = 1;
        self.text1.center = CGPointMake(self.text1.center.x, -504);
        self.photo1.center = CGPointMake(self.photo1.center.x, -504);
        self.quote1.center = CGPointMake(self.quote1.center.x, -504);
        self.onCancel1.center = CGPointMake(160, 610);

    } completion:nil];
    
    
    [UIView animateWithDuration:1 delay:0.1 usingSpringWithDamping:.7 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
        self.link1.center = CGPointMake(self.link1.center.x, -324);
        self.chat1.center = CGPointMake(self.chat1.center.x, -324);
        self.video1.center = CGPointMake(self.video1.center.x, -324);
    } completion:nil
     ];

    [UIView animateWithDuration:.3 delay:.3 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        self.composeView.alpha = 0;
        
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.3 animations:^{
        } completion:^(BOOL finished) {
            self.composeView.center = CGPointMake(self.composeView.center.x, 852);
            self.text1.center = CGPointMake(self.text1.center.x, 2900);
            self.photo1.center = CGPointMake(self.photo1.center.x, 1900);
            self.quote1.center = CGPointMake(self.quote1.center.x, 2900);
            self.link1.center = CGPointMake(self.link1.center.x, 2900);
            self.chat1.center = CGPointMake(self.chat1.center.x, 1900);
            self.video1.center = CGPointMake(self.video1.center.x,2900);
        }];
    }];

    
}



- (IBAction)onAccount:(id)sender {
    [self.contentView addSubview:self.accountViewController.view];
    self.accountViewController.view.frame = self.contentView.frame;
    self.accountButton.selected = YES;
    self.searchButton.selected = NO;
    self.homeButton.selected = NO;
    self.trendingButton.selected = NO;
}

- (IBAction)onTrending:(id)sender {
    [self.contentView addSubview:self.trendingViewController.view];
    self.trendingViewController.view.frame = self.contentView.frame;
    self.trendingButton.selected = YES;
    self.accountButton.selected = NO;
    self.homeButton.selected = NO;

}
@end
