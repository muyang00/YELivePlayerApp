//
//  Live_ViewController.m
//  YELivePlayerApp
//
//  Created by yongen on 2017/6/5.
//  Copyright © 2017年 yongen. All rights reserved.
//

#import "Live_ViewController.h"
#import "LFLivePreview.h"

@interface Live_ViewController ()

@property (nonatomic, strong) LFLivePreview *livePreview;

@end

@implementation Live_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    self.livePreview = [[LFLivePreview alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
  
    [self.view addSubview:self.livePreview];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [self.livePreview removeFromSuperview];
    self.livePreview = nil;
    [super viewDidDisappear:YES];
}



@end
