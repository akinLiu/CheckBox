//
//  AKCheckBox.m
//  CheckBoxDemo
//
//  Created by akin liu on 12-4-23.
//  Copyright (c) 2012年 hengxinsoft.com. All rights reserved.
//

#import "AKCheckBox.h"

@interface AKCheckBox ()
{
  
}

- (void)updateImageWithState:(BOOL)checked;

@end

@implementation AKCheckBox

@synthesize checkBoxImageView = checkBoxImageView_;
@synthesize titleLabel = titleLabel;

- (id) initWithFrame:(CGRect)frame checked:(BOOL)aChecked
{
  self = [super initWithFrame:frame];
  if (self) {
    self.checkBoxImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 120, 50)];
    [self addSubview:self.checkBoxImageView];
    [self addSubview:self.titleLabel];
    [self.titleLabel setBackgroundColor:[UIColor redColor]];
    [self setBackgroundColor:[UIColor greenColor]];
    [self addTarget:self action:@selector(updateImageWithState:) forControlEvents:UIControlEventTouchUpInside];
    self.selected = aChecked;
  }
  return self;
}

- (void)setTitleText:(NSString *)text
{
  self.titleLabel.text = text;
}

- (void)updateImageWithState:(BOOL)checked
{
  self.selected = !self.selected;
  if (checked) {
    //    [self.checkBoxImageView setImage:@"checkedImg.png"];
    NSLog(@"selected");
  } else {
    //    [self.checkBoxImageView setImage:[UIImageView]]
    NSLog(@"not selected");
  }
}


@end
