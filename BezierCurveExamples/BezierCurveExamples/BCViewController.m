//
//  BCViewController.m
//  BezierCurveExamples
//
//  Created by Adam Wulf on 9/10/12.
//  Copyright (c) 2012 Graceful Construction, LLC. All rights reserved.
//

#import "BCViewController.h"

static const int kNumberOfPages = 3;

@interface BCViewController ()

@end

@implementation BCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    scrollView.contentSize = CGSizeMake(scrollView.bounds.size.width*kNumberOfPages, scrollView.bounds.size.height);
    pageControl.numberOfPages = kNumberOfPages;
    pageControl.currentPage = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)_scrollView{
    pageControl.currentPage = (scrollView.contentOffset.x + _scrollView.bounds.size.width/2) / _scrollView.bounds.size.width;
}

@end