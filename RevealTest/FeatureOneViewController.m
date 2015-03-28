//
//  FeatureOneViewController.m
//  RevealTest
//
//  Created by Armando Restrepo on 3/28/15.
//  Copyright (c) 2015 AresDev. All rights reserved.
//

#import "FeatureOneViewController.h"
#import "SWRevealViewController.h"

@implementation FeatureOneViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [self.view addGestureRecognizer:self.revealViewController.tapGestureRecognizer];
    
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon-back"]
                                                                         style:UIBarButtonItemStylePlain
                                                                        target:self.revealViewController action:@selector(revealToggle:)];
    
    UIBarButtonItem *saveExitButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"out"]
                                                                           style:UIBarButtonItemStylePlain
                                                                          target:self action:@selector(saveExit)];
    
    self.navigationItem.leftBarButtonItem = revealButtonItem;
    self.navigationItem.rightBarButtonItem = saveExitButtonItem;
    
    //Logo
    UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo"]];
    [image setContentMode:UIViewContentModeCenter];
    [self.navigationController.navigationBar.topItem setTitleView:image];
}

-(void)saveExit{
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
