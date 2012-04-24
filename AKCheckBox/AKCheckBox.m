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

@property (nonatomic, strong, readwrite) UIImage *selectedImage;
@property (nonatomic, strong, readwrite) UIImage *unSelectedImage;

- (void)handleStateChanged;

@end

@implementation AKCheckBox

@synthesize checkboxImageView = checkboxImageView_;
@synthesize titleLabel = titleLabel_;
@synthesize selectedImage = selectedImage_;
@synthesize unSelectedImage = unSelectedImage_;


- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.checkboxImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 120, 50)];
    [self addSubview:self.checkboxImageView];
    [self addSubview:self.titleLabel];
    [self addTarget:self action:@selector(handleStateChanged) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

- (void)setTitleText:(NSString *)text
{
  self.titleLabel.text = text;
}

- (void)handleStateChanged
{
  self.selected = !self.isSelected;
  if (self.isSelected) {
    [self.checkboxImageView setImage:self.selectedImage];
    NSLog(@"selected");
    
  } else {
    [self.checkboxImageView setImage:self.unSelectedImage];
    NSLog(@"Unselected");
  }
}

- (void)setImage:(UIImage *)image forCheckState:(BOOL)isChecked
{
  if (isChecked) {
    self.selectedImage = image;
  } else {
    self.unSelectedImage = image;
  }
}

@end
