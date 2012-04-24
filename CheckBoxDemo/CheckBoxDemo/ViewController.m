//
//  ViewController.m
//  CheckBoxDemo
//
//  Created by akin liu on 12-4-23.
//  Copyright (c) 2012年 hengxinsoft.com. All rights reserved.
//

#import "ViewController.h"
#import "AKCheckBox.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  AKCheckBox *checkbox = [[AKCheckBox alloc] initWithFrame:CGRectMake(20, 50, 70, 24)];
  [checkbox setImage:[UIImage imageNamed:@"Checkmark.png"] forCheckState:YES];
  [checkbox setImage:[UIImage imageNamed:@"CheckmarkEmpty.png"] forCheckState:NO];
  [checkbox.checkboxImageView setFrame:CGRectMake(0, 5, 16, 16)];
  [checkbox.titleLabel setFrame:CGRectMake(20, 2, 50, 20)];
  [checkbox setTitleText:@"Title"];
  [self.view addSubview:checkbox];
  
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
