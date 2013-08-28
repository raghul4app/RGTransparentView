//
//  RGViewController.m
//  RGTransparentDemo
//
//  Created by YELDI_EMP on 28/08/13.
//  Copyright (c) 2013 mycompany. All rights reserved.
//

#import "RGViewController.h"

@interface RGViewController ()

@end

@implementation RGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    RGTransparentView *rgPointView = [[RGTransparentView alloc] initWithFrame:CGRectMake(5, 160, 310, 125)];
    
    rgPointView.headingLabel.text =@"Heading Label";
    
    [self.view addSubview:rgPointView];
    
    UIView *view = [[UIView alloc] init];
    
    rgPointView.Subview.frame = CGRectMake(5, 35, 300, 80);
    
    rgPointView.Subview.backgroundColor = [UIColor blackColor];
    
    [rgPointView.Subview addSubview:view];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
