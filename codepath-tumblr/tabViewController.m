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
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *trendingButton;
@property (weak, nonatomic) IBOutlet UIImageView *explorePopup;
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
