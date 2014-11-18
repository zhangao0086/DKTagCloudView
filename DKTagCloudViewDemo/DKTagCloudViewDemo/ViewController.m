//
//  ViewController.m
//  DKTagCloudViewDemo
//
//  Created by ZhangAo on 14-11-18.
//  Copyright (c) 2014年 zhangao. All rights reserved.
//

#import "ViewController.h"
#import "DKTagCloudView.h"

@interface ViewController ()

@property (nonatomic, weak) DKTagCloudView *tagCloudView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
    
    DKTagCloudView *tagCloudView = [[DKTagCloudView alloc] initWithFrame:CGRectMake(0, 64,
                                                                                    self.view.bounds.size.width, self.view.bounds.size.height - 64)];
    [self.view addSubview:tagCloudView];
    self.tagCloudView = tagCloudView;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Generate"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(regenerate:)];
    self.tagCloudView.maxFontSize = 20;
    self.tagCloudView.titls = @[
                                @"DKTagCloudView",
                                @"minFontSize",
                                @"maxFontSize",
                                @"randomColors",
                                @"generate",
                                @"UIView",
                                @"NSInteger",
                                @"Min font size",
                                @"Max font size",
                                @"DKTagCloudViewDemo",
                                @"This is a test"
                                ];
}

- (IBAction)regenerate:(id)sender {
    [self.tagCloudView generate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
