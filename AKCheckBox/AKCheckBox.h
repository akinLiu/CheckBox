//
//  AKCheckBox.h
//  CheckBoxDemo
//
//  Created by akin liu on 12-4-23.
//  Copyright (c) 2012年 hengxinsoft.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKCheckBox : UIControl

@property (nonatomic, strong, readwrite) UIImageView *checkboxImageView;
@property (nonatomic, strong, readwrite) UILabel *titleLabel;

- (void)setImage:(UIImage *)image forCheckState:(BOOL)isChecked;

- (void)setTitleText:(NSString *)text;

@end
