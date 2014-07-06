//
//  trendingViewController.m
//  codepath-tumblr
//
//  Created by Mario C. Delgado Jr. on 7/5/14.
//  Copyright (c) 2014 Mario C. Delgado Jr. All rights reserved.
//

#import "trendingViewController.h"

@interface trendingViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation trendingViewController

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
    _scrollView.contentSize = self.imageView.frame.size;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
